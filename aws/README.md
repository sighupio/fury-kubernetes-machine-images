# Kubernetes Fury AWS Machine Image

[![Build Status](http://ci.sighup.io/api/badges/sighupio/fury-kubernetes-machine-images/status.svg)](http://ci.sighup.io/sighupio/fury-kubernetes-machine-images)

Fury Kubernetes Distribution uses custom AMI's based on Ubuntu to run in a proper and consistent way.

## Base image

All the AMI's are based on LTS Ubuntu version, currently 18.04.

## AMI kinds

Fury distributes three different AMI types: *Master*, *Node* and *Bastion*.

### Master

Contains all the necessary configuration and packages to make it work with a specific Kubernetes version.

### Node

Contains all the necessary configuration and packages to make it work with a specific Kubernetes version. Auto-join feature is active in this AMI.

### Bastion

Contains only furyagent installed.

## Fury v1.0.1

This feature includes a hotfix related to the `machine-id` issue. Includes a reset of
the `machine-id` value to have it recreated on first boot of the instance to avoid `machine-id` colissions.

### Kubernetes 1.14

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.1-Master-1.14.10-1584724304  | ami-08ebe9e03b862132f | eu-central-1 | Master  |
| KFD-v1.0.1-Bastion-1.14.10-1584724304 | ami-0d3d72beb23f519ab | eu-central-1 | Bastion |
| KFD-v1.0.1-Node-1.14.10-1584724304    | ami-059ad90098a1e5b1d | eu-central-1 | Node    |
| KFD-v1.0.1-Master-1.14.10-1584724304  | ami-0dfd110f8e3ae25d3 | eu-north-1   | Master  |
| KFD-v1.0.1-Bastion-1.14.10-1584724304 | ami-057535d6b992dbbc2 | eu-north-1   | Bastion |
| KFD-v1.0.1-Node-1.14.10-1584724304    | ami-01bc2945463898f06 | eu-north-1   | Node    |
| KFD-v1.0.1-Master-1.14.10-1584724304  | ami-04d5b7104fdf71c8b | eu-west-1    | Master  |
| KFD-v1.0.1-Bastion-1.14.10-1584724304 | ami-023f56194a29c8795 | eu-west-1    | Bastion |
| KFD-v1.0.1-Node-1.14.10-1584724304    | ami-056f13c055bfb1cad | eu-west-1    | Node    |
| KFD-v1.0.1-Master-1.14.10-1584724304  | ami-045301ecf12736c80 | eu-west-2    | Master  |
| KFD-v1.0.1-Bastion-1.14.10-1584724304 | ami-000538c6755c3176f | eu-west-2    | Bastion |
| KFD-v1.0.1-Node-1.14.10-1584724304    | ami-07359df64b6c93631 | eu-west-2    | Node    |
| KFD-v1.0.1-Master-1.14.10-1584724304  | ami-0d0dde767149667d7 | eu-west-3    | Master  |
| KFD-v1.0.1-Bastion-1.14.10-1584724304 | ami-05b995d1c9214dda7 | eu-west-3    | Bastion |
| KFD-v1.0.1-Node-1.14.10-1584724304    | ami-0131dc0528908fded | eu-west-3    | Node    |

### Kubernetes 1.15

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.1-Master-1.15.5-1584724307  | ami-05fd6dc3e68e16f61 | eu-central-1 | Master  |
| KFD-v1.0.1-Bastion-1.15.5-1584724306 | ami-0cc2ea21739410faa | eu-central-1 | Bastion |
| KFD-v1.0.1-Node-1.15.5-1584724308    | ami-0317afd4f561510ec | eu-central-1 | Node    |
| KFD-v1.0.1-Master-1.15.5-1584724307  | ami-0063c3c5b2911a42d | eu-north-1   | Master  |
| KFD-v1.0.1-Bastion-1.15.5-1584724306 | ami-0543ae870fa7bfcea | eu-north-1   | Bastion |
| KFD-v1.0.1-Node-1.15.5-1584724308    | ami-09ea98f6047e86ca5 | eu-north-1   | Node    |
| KFD-v1.0.1-Master-1.15.5-1584724307  | ami-086d50378828968e0 | eu-west-1    | Master  |
| KFD-v1.0.1-Bastion-1.15.5-1584724306 | ami-0c594720c3e9879fb | eu-west-1    | Bastion |
| KFD-v1.0.1-Node-1.15.5-1584724308    | ami-01a25a8e4f0e35982 | eu-west-1    | Node    |
| KFD-v1.0.1-Master-1.15.5-1584724307  | ami-034287badd8280f9e | eu-west-2    | Master  |
| KFD-v1.0.1-Bastion-1.15.5-1584724306 | ami-0d5828ff2e18a371a | eu-west-2    | Bastion |
| KFD-v1.0.1-Node-1.15.5-1584724308    | ami-0a6fb766152e05a85 | eu-west-2    | Node    |
| KFD-v1.0.1-Master-1.15.5-1584724307  | ami-0ae695a4178a4b968 | eu-west-3    | Master  |
| KFD-v1.0.1-Bastion-1.15.5-1584724306 | ami-0b5e4c2499b098fdf | eu-west-3    | Bastion |
| KFD-v1.0.1-Node-1.15.5-1584724308    | ami-0807daf782b843e47 | eu-west-3    | Node    |

### Kubernetes 1.16

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.1-Master-1.16.2-1584724305  | ami-0a72e934b49eb5a0f | eu-central-1 | Master  |
| KFD-v1.0.1-Bastion-1.16.2-1584724305 | ami-0f9ed97c80df8b3a7 | eu-central-1 | Bastion |
| KFD-v1.0.1-Node-1.16.2-1584724306    | ami-0a7ab1d3a8c8d76a4 | eu-central-1 | Node    |
| KFD-v1.0.1-Master-1.16.2-1584724305  | ami-089610f8e03a295e9 | eu-north-1   | Master  |
| KFD-v1.0.1-Bastion-1.16.2-1584724305 | ami-05f9bcc1f29c5fa07 | eu-north-1   | Bastion |
| KFD-v1.0.1-Node-1.16.2-1584724306    | ami-0f18597a68a05766c | eu-north-1   | Node    |
| KFD-v1.0.1-Master-1.16.2-1584724305  | ami-0e4d42d433f56f895 | eu-west-1    | Master  |
| KFD-v1.0.1-Bastion-1.16.2-1584724305 | ami-0906ca6b388a59313 | eu-west-1    | Bastion |
| KFD-v1.0.1-Node-1.16.2-1584724306    | ami-077d058c760e457c7 | eu-west-1    | Node    |
| KFD-v1.0.1-Master-1.16.2-1584724305  | ami-032c8fa98dc1af869 | eu-west-2    | Master  |
| KFD-v1.0.1-Bastion-1.16.2-1584724305 | ami-001669fec754ae8c6 | eu-west-2    | Bastion |
| KFD-v1.0.1-Node-1.16.2-1584724306    | ami-06c8cbf020369be01 | eu-west-2    | Node    |
| KFD-v1.0.1-Master-1.16.2-1584724305  | ami-0b5643e9e23a80210 | eu-west-3    | Master  |
| KFD-v1.0.1-Bastion-1.16.2-1584724305 | ami-05c8c77636ca11c7f | eu-west-3    | Bastion |
| KFD-v1.0.1-Node-1.16.2-1584724306    | ami-0947584628b6caf6c | eu-west-3    | Node    |


## Fury v1.0.0

### Kubernetes 1.14

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.0-Master-1.14.10-1584610070  | ami-06ceaef23464d49be | eu-central-1 | Master  |
| KFD-v1.0.0-Bastion-1.14.10-1584610070 | ami-0e94219f45053977c | eu-central-1 | Bastion |
| KFD-v1.0.0-Node-1.14.10-1584610071    | ami-0df7f6fad29d5803d | eu-central-1 | Node    |
| KFD-v1.0.0-Master-1.14.10-1584610070  | ami-028b235da21351a5b | eu-north-1   | Master  |
| KFD-v1.0.0-Bastion-1.14.10-1584610070 | ami-01fe1c1fe22c18d09 | eu-north-1   | Bastion |
| KFD-v1.0.0-Node-1.14.10-1584610071    | ami-032ad2a8174cd7bb0 | eu-north-1   | Node    |
| KFD-v1.0.0-Master-1.14.10-1584610070  | ami-0bb78b417b77d8b0b | eu-west-1    | Master  |
| KFD-v1.0.0-Bastion-1.14.10-1584610070 | ami-0f55ab9dba857f949 | eu-west-1    | Bastion |
| KFD-v1.0.0-Node-1.14.10-1584610071    | ami-0bb78b417b77d8b0b | eu-west-1    | Node    |
| KFD-v1.0.0-Master-1.14.10-1584610070  | ami-0e6ba09e865a23c8f | eu-west-2    | Master  |
| KFD-v1.0.0-Bastion-1.14.10-1584610070 | ami-06c85ee90323be121 | eu-west-2    | Bastion |
| KFD-v1.0.0-Node-1.14.10-1584610071    | ami-0543718c0ca1eea0c | eu-west-2    | Node    |
| KFD-v1.0.0-Master-1.14.10-1584610070  | ami-09309e45d061119aa | eu-west-3    | Master  |
| KFD-v1.0.0-Bastion-1.14.10-1584610070 | ami-0e08f3b8b9b3f350d | eu-west-3    | Bastion |
| KFD-v1.0.0-Node-1.14.10-1584610071    | ami-0b3290c603160c84e | eu-west-3    | Node    |

### Kubernetes 1.15

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.0-Master-1.15.5-1584610068  | ami-00afa8fb60d01bb7b | eu-central-1 | Master  |
| KFD-v1.0.0-Bastion-1.15.5-1584610068 | ami-09d2473045d7f1f39 | eu-central-1 | Bastion |
| KFD-v1.0.0-Node-1.15.5-1584610068    | ami-0bd8db3bf0baa0f0d | eu-central-1 | Node    |
| KFD-v1.0.0-Master-1.15.5-1584610068  | ami-0f600cbb05582dda1 | eu-north-1   | Master  |
| KFD-v1.0.0-Bastion-1.15.5-1584610068 | ami-0585f77d9bba5586e | eu-north-1   | Bastion |
| KFD-v1.0.0-Node-1.15.5-1584610068    | ami-037cef42d52b00d1c | eu-north-1   | Node    |
| KFD-v1.0.0-Master-1.15.5-1584610068  | ami-0a107dddccfbe6ed3 | eu-west-1    | Master  |
| KFD-v1.0.0-Bastion-1.15.5-1584610068 | ami-0f212e1b4941e5aaa | eu-west-1    | Bastion |
| KFD-v1.0.0-Node-1.15.5-1584610068    | ami-0c7a1b9bdebe2a0a3 | eu-west-1    | Node    |
| KFD-v1.0.0-Master-1.15.5-1584610068  | ami-060557cb646214fbb | eu-west-2    | Master  |
| KFD-v1.0.0-Bastion-1.15.5-1584610068 | ami-0359807b4367cb896 | eu-west-2    | Bastion |
| KFD-v1.0.0-Node-1.15.5-1584610068    | ami-0f7772ce49b585a7e | eu-west-2    | Node    |
| KFD-v1.0.0-Master-1.15.5-1584610068  | ami-0e0c9636d613d0b0e | eu-west-3    | Master  |
| KFD-v1.0.0-Bastion-1.15.5-1584610068 | ami-02357960426f66374 | eu-west-3    | Bastion |
| KFD-v1.0.0-Node-1.15.5-1584610068    | ami-0f382aa3e768116c8 | eu-west-3    | Node    |

### Kubernetes 1.16

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.0-Master-1.16.2-1584610069  | ami-067b5df9b47793c17 | eu-central-1 | Master  |
| KFD-v1.0.0-Bastion-1.16.2-1584610069 | ami-0552f598715d2f9d9 | eu-central-1 | Bastion |
| KFD-v1.0.0-Node-1.16.2-1584610069    | ami-0758709a22b6c6382 | eu-central-1 | Node    |
| KFD-v1.0.0-Master-1.16.2-1584610069  | ami-002321052c70a6677 | eu-north-1   | Master  |
| KFD-v1.0.0-Bastion-1.16.2-1584610069 | ami-0e6ae0a104a9d1b43 | eu-north-1   | Bastion |
| KFD-v1.0.0-Node-1.16.2-1584610069    | ami-09921a89a5751e756 | eu-north-1   | Node    |
| KFD-v1.0.0-Master-1.16.2-1584610069  | ami-005abc3cbcbd2e6ad | eu-west-1    | Master  |
| KFD-v1.0.0-Bastion-1.16.2-1584610069 | ami-04f2a30d000c10d18 | eu-west-1    | Bastion |
| KFD-v1.0.0-Node-1.16.2-1584610069    | ami-0175206eabf9bba8e | eu-west-1    | Node    |
| KFD-v1.0.0-Master-1.16.2-1584610069  | ami-0f1c8ba26bf59ecba | eu-west-2    | Master  |
| KFD-v1.0.0-Bastion-1.16.2-1584610069 | ami-0ed7f7d250edfdf3b | eu-west-2    | Bastion |
| KFD-v1.0.0-Node-1.16.2-1584610069    | ami-0fdacee2c1c20d704 | eu-west-2    | Node    |
| KFD-v1.0.0-Master-1.16.2-1584610069  | ami-0de49b8aace772cf6 | eu-west-3    | Master  |
| KFD-v1.0.0-Bastion-1.16.2-1584610069 | ami-04d87d017c01b823b | eu-west-3    | Bastion |
| KFD-v1.0.0-Node-1.16.2-1584610069    | ami-0a3e89615e8a0e1dd | eu-west-3    | Node    |
