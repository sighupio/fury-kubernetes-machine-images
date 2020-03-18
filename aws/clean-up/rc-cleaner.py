import argparse
import os

import boto3
import dryable

def get_release_candidate_ami_ids_for_version(region, version):
    response = boto3.client('ec2', region_name=region).describe_images(
        Filters=[
            {
                'Name': 'tag:Product',
                'Values': [
                    'KFD',
                ]
            },
            {
                'Name': 'tag:Component',
                'Values': [
                    'Installer',
                ]
            },
        ]
    )
    image_ids = []
    for image in response.get('Images'):
        image_id = image.get('ImageId')
        for tag in image.get('Tags'):
            if tag.get('Key') == 'Version' and f'{version}-rc' in tag.get('Value'):
                snapshot_id = image.get('BlockDeviceMappings')[
                    0].get('Ebs').get('SnapshotId')
                image_ids.append((image_id, snapshot_id))
    return image_ids


@dryable.Dryable()
def delete_ami(region, image_id, snapshot_id):
    boto3.client('ec2', region_name=region).deregister_image(ImageId=image_id)
    boto3.client('ec2', region_name=region).delete_snapshot(SnapshotId=snapshot_id)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--confirm', action='store_true',
                        help='Deactivate dry-run mode')
    parser.add_argument('--version', type=str, required=True,
                        help='Final release to find release candidates versions. Example: v1.0.0')
    args = parser.parse_args()

    version = args.version
    if not '-rc' in version:
        dry_run = not args.confirm
        dryable.set(dry_run)
        for region in ["eu-central-1", "eu-north-1", "eu-west-3", "eu-west-2", "eu-west-1"]:
            amis = get_release_candidate_ami_ids_for_version(region, version)
            for ami_id, snap_id in amis:
                print(f"{region} - Deleting AMI {ami_id} and its snapshot {snap_id}")
                delete_ami(region, ami_id, snap_id)
    else:
        print(
            f'Nothing to do with version {version} as it is not a final release')
