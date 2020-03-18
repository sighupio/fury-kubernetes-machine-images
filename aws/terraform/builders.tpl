{
  "name": "${kind}",
  "type": "amazon-ebs",
  "access_key": "{{user `aws_access_key`}}",
  "secret_key": "{{user `aws_secret_key`}}",
  "region": "eu-west-1",
  "subnet_id": "${subnet_id}",
  "instance_type": "t2.micro",
  "source_ami_filter": {
    "filters": {
      "virtualization-type": "hvm",
      "name": "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*",
      "root-device-type": "ebs"
    },
    "owners": ["099720109477"],
    "most_recent": true
  },
  "ssh_username": "${user}",
  "ami_name": "KFD-${version}-${kind}-${k8s_version}-{{timestamp}}",
  "ami_groups": ["all"],
  "ami_regions": ["eu-central-1", "eu-north-1", "eu-west-3", "eu-west-2", "eu-west-1"],
  "tags": {
      "OS_Version": "Ubuntu",
      "Product": "KFD",
      "Version": "${version}",
      "Component": "Installer",
      "Kind": "${kind}",
      "K8S_Version": "${k8s_version}",
      "Base_AMI_Name": "{{ .SourceAMIName }}"
  }
}
