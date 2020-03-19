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
