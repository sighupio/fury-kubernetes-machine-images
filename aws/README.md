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

## Fury v1.0.4

This feature includes 1.16 patches updates, the removal of 1.14 and 1.15 and the
addition of 1.17 and 1.18.

### Kubernetes 1.16

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.4-Master-1.16.13-1591788551  | ami-0a8e8c462248d7a18 | eu-central-1 | Master  |
| KFD-v1.0.4-Bastion-1.16.13-1591788551 | ami-0e769a3e5598836e6 | eu-central-1 | Bastion |
| KFD-v1.0.4-Node-1.16.13-1591788552    | ami-03244da4be320248f | eu-central-1 | Node    |
| KFD-v1.0.4-Master-1.16.13-1591788551  | ami-00c0bfb5a2f7774ca | eu-north-1   | Master  |
| KFD-v1.0.4-Bastion-1.16.13-1591788551 | ami-0862e37b715a9c336 | eu-north-1   | Bastion |
| KFD-v1.0.4-Node-1.16.13-1591788552    | ami-0583d900148e8f3b3 | eu-north-1   | Node    |
| KFD-v1.0.4-Master-1.16.13-1591788551  | ami-043761609068ac5c9 | eu-west-1    | Master  |
| KFD-v1.0.4-Bastion-1.16.13-1591788551 | ami-06514efc5368a2b94 | eu-west-1    | Bastion |
| KFD-v1.0.4-Node-1.16.13-1591788552    | ami-0e8815faed05fdd10 | eu-west-1    | Node    |
| KFD-v1.0.4-Master-1.16.13-1591788551  | ami-014070aa4db116ecb | eu-west-2    | Master  |
| KFD-v1.0.4-Bastion-1.16.13-1591788551 | ami-09aac5a2a194845a7 | eu-west-2    | Bastion |
| KFD-v1.0.4-Node-1.16.13-1591788552    | ami-0a34db7d1ebc55dc0 | eu-west-2    | Node    |
| KFD-v1.0.4-Master-1.16.13-1591788551  | ami-01b7708862742dfec | eu-west-3    | Master  |
| KFD-v1.0.4-Bastion-1.16.13-1591788551 | ami-0eec6157654674904 | eu-west-3    | Bastion |
| KFD-v1.0.4-Node-1.16.13-1591788552    | ami-0c45227c0a8509bf1 | eu-west-3    | Node    |

### Kubernetes 1.17

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.4-Master-1.17.9-1596477043  | ami-04a18a6ff7a865dd7 | eu-central-1 | Master  |
| KFD-v1.0.4-Bastion-1.17.9-1596477043 | ami-07beb7183b045f90c | eu-central-1 | Bastion |
| KFD-v1.0.4-Node-1.17.9-1596477044    | ami-09ef42df4c5438000 | eu-central-1 | Node    |
| KFD-v1.0.4-Master-1.17.9-1596477043  | ami-00d50fb8f6dcc9376 | eu-north-1   | Master  |
| KFD-v1.0.4-Bastion-1.17.9-1596477043 | ami-07dc64593fd826bb3 | eu-north-1   | Bastion |
| KFD-v1.0.4-Node-1.17.9-1596477044    | ami-05d53e6250014d0fa | eu-north-1   | Node    |
| KFD-v1.0.4-Master-1.17.9-1596477043  | ami-05b7a2c2c067035b9 | eu-west-1    | Master  |
| KFD-v1.0.4-Bastion-1.17.9-1596477043 | ami-0c240ad76062cb322 | eu-west-1    | Bastion |
| KFD-v1.0.4-Node-1.17.9-1596477044    | ami-0f32f32e443864aa6 | eu-west-1    | Node    |
| KFD-v1.0.4-Master-1.17.9-1596477043  | ami-09d256e77ad4c4be7 | eu-west-2    | Master  |
| KFD-v1.0.4-Bastion-1.17.9-1596477043 | ami-0ccd6f28981df7d01 | eu-west-2    | Bastion |
| KFD-v1.0.4-Node-1.17.9-1596477044    | ami-01494f97955f8658a | eu-west-2    | Node    |
| KFD-v1.0.4-Master-1.17.9-1596477043  | ami-0d8e1ef36c7103b41 | eu-west-3    | Master  |
| KFD-v1.0.4-Bastion-1.17.9-1596477043 | ami-01b8ee6c13ce31ca8 | eu-west-3    | Bastion |
| KFD-v1.0.4-Node-1.17.9-1596477044    | ami-002b075a908f18489 | eu-west-3    | Node    |

### Kubernetes 1.18

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.4-Master-1.18.6-1596477046  | ami-0b417fd819521b43f | eu-central-1 | Master  |
| KFD-v1.0.4-Bastion-1.18.6-1596477046 | ami-08d6803eac7b3e1c7 | eu-central-1 | Bastion |
| KFD-v1.0.4-Node-1.18.6-1596477047    | ami-0df20e1e7dba5683e | eu-central-1 | Node    |
| KFD-v1.0.4-Master-1.18.6-1596477046  | ami-03e9447851f9248ac | eu-north-1   | Master  |
| KFD-v1.0.4-Bastion-1.18.6-1596477046 | ami-0dbd0234d90999c35 | eu-north-1   | Bastion |
| KFD-v1.0.4-Node-1.18.6-1596477047    | ami-03069620c3c6a6fe3 | eu-north-1   | Node    |
| KFD-v1.0.4-Master-1.18.6-1596477046  | ami-0af1f9d0fa7199720 | eu-west-1    | Master  |
| KFD-v1.0.4-Bastion-1.18.6-1596477046 | ami-07fec11adf958771b | eu-west-1    | Bastion |
| KFD-v1.0.4-Node-1.18.6-1596477047    | ami-0b828eb68a4b45bd9 | eu-west-1    | Node    |
| KFD-v1.0.4-Master-1.18.6-1596477046  | ami-08ce9528020fb7453 | eu-west-2    | Master  |
| KFD-v1.0.4-Bastion-1.18.6-1596477046 | ami-0ffacca80163e8f4d | eu-west-2    | Bastion |
| KFD-v1.0.4-Node-1.18.6-1596477047    | ami-040493881ecaf9e2a | eu-west-2    | Node    |
| KFD-v1.0.4-Master-1.18.6-1596477046  | ami-06c35f38fe85fc336 | eu-west-3    | Master  |
| KFD-v1.0.4-Bastion-1.18.6-1596477046 | ami-0b127e11a1bc02320 | eu-west-3    | Bastion |
| KFD-v1.0.4-Node-1.18.6-1596477047    | ami-040219c57b2221f15 | eu-west-3    | Node    |

## Fury v1.0.3

This feature includes 1.15 and 1.16 patches updates

### Kubernetes 1.14

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.3-Master-1.14.10-1591788551  | ami-04a6a9eb241ee783a | eu-central-1 | Master  |
| KFD-v1.0.3-Bastion-1.14.10-1591788551 | ami-06d4c9297ee07120f | eu-central-1 | Bastion |
| KFD-v1.0.3-Node-1.14.10-1591788552    | ami-059cd03a74c6aab54 | eu-central-1 | Node    |
| KFD-v1.0.3-Master-1.14.10-1591788551  | ami-0c8788e6d31fb75ec | eu-north-1   | Master  |
| KFD-v1.0.3-Bastion-1.14.10-1591788551 | ami-057839411613682ae | eu-north-1   | Bastion |
| KFD-v1.0.3-Node-1.14.10-1591788552    | ami-04a1d8764bd1bc0b7 | eu-north-1   | Node    |
| KFD-v1.0.3-Master-1.14.10-1591788551  | ami-0b954186d0d1b7055 | eu-west-1    | Master  |
| KFD-v1.0.3-Bastion-1.14.10-1591788551 | ami-047f03ae6d14e4419 | eu-west-1    | Bastion |
| KFD-v1.0.3-Node-1.14.10-1591788552    | ami-0e531ae76afc9e17a | eu-west-1    | Node    |
| KFD-v1.0.3-Master-1.14.10-1591788551  | ami-0bcb8024bb05cb232 | eu-west-2    | Master  |
| KFD-v1.0.3-Bastion-1.14.10-1591788551 | ami-09eed2be80b106888 | eu-west-2    | Bastion |
| KFD-v1.0.3-Node-1.14.10-1591788552    | ami-0268987e0f7917e17 | eu-west-2    | Node    |
| KFD-v1.0.3-Master-1.14.10-1591788551  | ami-0d3d07353d647e46b | eu-west-3    | Master  |
| KFD-v1.0.3-Bastion-1.14.10-1591788551 | ami-0e1da289ff6c1329c | eu-west-3    | Bastion |
| KFD-v1.0.3-Node-1.14.10-1591788552    | ami-08ac28a487f4c2309 | eu-west-3    | Node    |

### Kubernetes 1.15

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.3-Master-1.15.12-1591788550  | ami-08119303c6fa580a0 | eu-central-1 | Master  |
| KFD-v1.0.3-Bastion-1.15.12-1591788550 | ami-089bd68c665e2a0cb | eu-central-1 | Bastion |
| KFD-v1.0.3-Node-1.15.12-1591788550    | ami-0f9bfc354a37e106d | eu-central-1 | Node    |
| KFD-v1.0.3-Master-1.15.12-1591788550  | ami-0bba09639f88a665a | eu-north-1   | Master  |
| KFD-v1.0.3-Bastion-1.15.12-1591788550 | ami-0b7d331b80b9f743d | eu-north-1   | Bastion |
| KFD-v1.0.3-Node-1.15.12-1591788550    | ami-0e5a72fd028e22ee7 | eu-north-1   | Node    |
| KFD-v1.0.3-Master-1.15.12-1591788550  | ami-09417eeee1829a66c | eu-west-1    | Master  |
| KFD-v1.0.3-Bastion-1.15.12-1591788550 | ami-0d2c8d1b6517a31c8 | eu-west-1    | Bastion |
| KFD-v1.0.3-Node-1.15.12-1591788550    | ami-0962e9e8cf1b3db77 | eu-west-1    | Node    |
| KFD-v1.0.3-Master-1.15.12-1591788550  | ami-05bde38d1cdaf7c99 | eu-west-2    | Master  |
| KFD-v1.0.3-Bastion-1.15.12-1591788550 | ami-018c27e808f234107 | eu-west-2    | Bastion |
| KFD-v1.0.3-Node-1.15.12-1591788550    | ami-0539dead3f43ed07f | eu-west-2    | Node    |
| KFD-v1.0.3-Master-1.15.12-1591788550  | ami-0d07fce13fbb69072 | eu-west-3    | Master  |
| KFD-v1.0.3-Bastion-1.15.12-1591788550 | ami-0722c6ea99a26c40b | eu-west-3    | Bastion |
| KFD-v1.0.3-Node-1.15.12-1591788550    | ami-0577a00698158ffd7 | eu-west-3    | Node    |

### Kubernetes 1.16

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.3-Master-1.16.10-1591788552  | ami-096e9919d9edf3121 | eu-central-1 | Master  |
| KFD-v1.0.3-Bastion-1.16.10-1591788552 | ami-098087d0c62641763 | eu-central-1 | Bastion |
| KFD-v1.0.3-Node-1.16.10-1591788553    | ami-0a4924f9f9d5775e1 | eu-central-1 | Node    |
| KFD-v1.0.3-Master-1.16.10-1591788552  | ami-0c0d66e22d89727f0 | eu-north-1   | Master  |
| KFD-v1.0.3-Bastion-1.16.10-1591788552 | ami-0a3a12b65c8525cac | eu-north-1   | Bastion |
| KFD-v1.0.3-Node-1.16.10-1591788553    | ami-09179d3c5b21fb01c | eu-north-1   | Node    |
| KFD-v1.0.3-Master-1.16.10-1591788552  | ami-076bd4f0eaf4db6d1 | eu-west-1    | Master  |
| KFD-v1.0.3-Bastion-1.16.10-1591788552 | ami-011e3aa42a3efe17c | eu-west-1    | Bastion |
| KFD-v1.0.3-Node-1.16.10-1591788553    | ami-0b189a5d670831049 | eu-west-1    | Node    |
| KFD-v1.0.3-Master-1.16.10-1591788552  | ami-0f7e3e1b71073dfae | eu-west-2    | Master  |
| KFD-v1.0.3-Bastion-1.16.10-1591788552 | ami-0b5d0e24cdbec480f | eu-west-2    | Bastion |
| KFD-v1.0.3-Node-1.16.10-1591788553    | ami-01a55483001c43109 | eu-west-2    | Node    |
| KFD-v1.0.3-Master-1.16.10-1591788552  | ami-009914d77de9f9cf7 | eu-west-3    | Master  |
| KFD-v1.0.3-Bastion-1.16.10-1591788552 | ami-0623e76c1324eb6a5 | eu-west-3    | Bastion |
| KFD-v1.0.3-Node-1.16.10-1591788553    | ami-01f1ea04d74754a54 | eu-west-3    | Node    |

## Fury v1.0.2

This feature includes 1.15 and 1.16 patches updates

### Kubernetes 1.14

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.2-Master-1.14.10-1587460085  | ami-02425846b1034aed9 | eu-central-1 | Master  |
| KFD-v1.0.2-Bastion-1.14.10-1587460085 | ami-0b558bab563b79d2e | eu-central-1 | Bastion |
| KFD-v1.0.2-Node-1.14.10-1587460086    | ami-08a6411b46af7c977 | eu-central-1 | Node    |
| KFD-v1.0.2-Master-1.14.10-1587460085  | ami-0aad9fb585e26eba9 | eu-north-1   | Master  |
| KFD-v1.0.2-Bastion-1.14.10-1587460085 | ami-00ce76d6631d07a94 | eu-north-1   | Bastion |
| KFD-v1.0.2-Node-1.14.10-1587460086    | ami-0ab515f75deda0705 | eu-north-1   | Node    |
| KFD-v1.0.2-Master-1.14.10-1587460085  | ami-020d9f05745c34f98 | eu-west-1    | Master  |
| KFD-v1.0.2-Bastion-1.14.10-1587460085 | ami-0f1e75dbcde96c6c1 | eu-west-1    | Bastion |
| KFD-v1.0.2-Node-1.14.10-1587460086    | ami-0b48558563fc09a21 | eu-west-1    | Node    |
| KFD-v1.0.2-Master-1.14.10-1587460085  | ami-0641563e17e9113be | eu-west-2    | Master  |
| KFD-v1.0.2-Bastion-1.14.10-1587460085 | ami-0991fb0232f1f406d | eu-west-2    | Bastion |
| KFD-v1.0.2-Node-1.14.10-1587460086    | ami-040be21a981290fb2 | eu-west-2    | Node    |
| KFD-v1.0.2-Master-1.14.10-1587460085  | ami-067b699e2516b8521 | eu-west-3    | Master  |
| KFD-v1.0.2-Bastion-1.14.10-1587460085 | ami-0dd09b3f3a2478b6b | eu-west-3    | Bastion |
| KFD-v1.0.2-Node-1.14.10-1587460086    | ami-00d3cf18ee29f1656 | eu-west-3    | Node    |

### Kubernetes 1.15

| Name                                  | AMI ID                | Region       | Kind    |
|---------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.2-Master-1.15.11-1587460084  | ami-0f4488a0cef835b68 | eu-central-1 | Master  |
| KFD-v1.0.2-Bastion-1.15.11-1587460084 | ami-0de0b0fc276f6715f | eu-central-1 | Bastion |
| KFD-v1.0.2-Node-1.15.11-1587460085    | ami-0048ffabdef99672c | eu-central-1 | Node    |
| KFD-v1.0.2-Master-1.15.11-1587460084  | ami-04cccf970a9a0671c | eu-north-1   | Master  |
| KFD-v1.0.2-Bastion-1.15.11-1587460084 | ami-0ad3863f49b49b52b | eu-north-1   | Bastion |
| KFD-v1.0.2-Node-1.15.11-1587460085    | ami-09ef665080a6899ea | eu-north-1   | Node    |
| KFD-v1.0.2-Master-1.15.11-1587460084  | ami-0ee58aa1dd8ea295f | eu-west-1    | Master  |
| KFD-v1.0.2-Bastion-1.15.11-1587460084 | ami-0e7713410b1f9197a | eu-west-1    | Bastion |
| KFD-v1.0.2-Node-1.15.11-1587460085    | ami-0e276150596434ef1 | eu-west-1    | Node    |
| KFD-v1.0.2-Master-1.15.11-1587460084  | ami-06ffc26a58b1b4437 | eu-west-2    | Master  |
| KFD-v1.0.2-Bastion-1.15.11-1587460084 | ami-0d154bc1ec0d92749 | eu-west-2    | Bastion |
| KFD-v1.0.2-Node-1.15.11-1587460085    | ami-041d4fbefe9355ae0 | eu-west-2    | Node    |
| KFD-v1.0.2-Master-1.15.11-1587460084  | ami-0cc5a25cda0a3ba1b | eu-west-3    | Master  |
| KFD-v1.0.2-Bastion-1.15.11-1587460084 | ami-0820e853bbf2c992a | eu-west-3    | Bastion |
| KFD-v1.0.2-Node-1.15.11-1587460085    | ami-0385ed1fb90d70990 | eu-west-3    | Node    |

### Kubernetes 1.16

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v1.0.2-Master-1.16.9-1587460083  | ami-0d11e3ce415da3e88 | eu-central-1 | Master  |
| KFD-v1.0.2-Bastion-1.16.9-1587460083 | ami-016020d92b629ecf4 | eu-central-1 | Bastion |
| KFD-v1.0.2-Node-1.16.9-1587460083    | ami-0f33fe60d4dc8beb4 | eu-central-1 | Node    |
| KFD-v1.0.2-Master-1.16.9-1587460083  | ami-03b337e6bbb3dbf79 | eu-north-1   | Master  |
| KFD-v1.0.2-Bastion-1.16.9-1587460083 | ami-0666a02222082bd1c | eu-north-1   | Bastion |
| KFD-v1.0.2-Node-1.16.9-1587460083    | ami-05289f663124166e6 | eu-north-1   | Node    |
| KFD-v1.0.2-Master-1.16.9-1587460083  | ami-0ab3c89f86d089a22 | eu-west-1    | Master  |
| KFD-v1.0.2-Bastion-1.16.9-1587460083 | ami-0b0face44dc5842bd | eu-west-1    | Bastion |
| KFD-v1.0.2-Node-1.16.9-1587460083    | ami-047971e65d731c404 | eu-west-1    | Node    |
| KFD-v1.0.2-Master-1.16.9-1587460083  | ami-0fc30a76a60a101b0 | eu-west-2    | Master  |
| KFD-v1.0.2-Bastion-1.16.9-1587460083 | ami-08de76f123d18feb9 | eu-west-2    | Bastion |
| KFD-v1.0.2-Node-1.16.9-1587460083    | ami-0f00cd60a210fa458 | eu-west-2    | Node    |
| KFD-v1.0.2-Master-1.16.9-1587460083  | ami-094bed00d8a475cfb | eu-west-3    | Master  |
| KFD-v1.0.2-Bastion-1.16.9-1587460083 | ami-0e63aa6083c34eaad | eu-west-3    | Bastion |
| KFD-v1.0.2-Node-1.16.9-1587460083    | ami-03568272d7f3b926f | eu-west-3    | Node    |

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

## Fury v0.0.0

Fury versions `0` was created to test some corner cases features.
In this case, we had the requirement to build 1.14.8 instead of 1.14.10. Has the base of [Fury 1.0.1](#fury-v101)

### Kubernetes 1.14

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v0.0.0-Master-1.14.8-1585233269  | ami-05072e177285cb0a5 | eu-central-1 | Master  |
| KFD-v0.0.0-Bastion-1.14.8-1585233269 | ami-07944ac675e5df2c7 | eu-central-1 | Bastion |
| KFD-v0.0.0-Node-1.14.8-1585233270    | ami-0ee4e86623dae4ce3 | eu-central-1 | Node    |
| KFD-v0.0.0-Master-1.14.8-1585233269  | ami-0e27d352eb88e3e81 | eu-north-1   | Master  |
| KFD-v0.0.0-Bastion-1.14.8-1585233269 | ami-00c57f601ba252c4d | eu-north-1   | Bastion |
| KFD-v0.0.0-Node-1.14.8-1585233270    | ami-0c829e4f08c286a52 | eu-north-1   | Node    |
| KFD-v0.0.0-Master-1.14.8-1585233269  | ami-00a15e72ef860e7b2 | eu-west-1    | Master  |
| KFD-v0.0.0-Bastion-1.14.8-1585233269 | ami-0c37286383146e8d0 | eu-west-1    | Bastion |
| KFD-v0.0.0-Node-1.14.8-1585233270    | ami-0d3e786fb2161fe44 | eu-west-1    | Node    |
| KFD-v0.0.0-Master-1.14.8-1585233269  | ami-00779c7125ec53fa4 | eu-west-2    | Master  |
| KFD-v0.0.0-Bastion-1.14.8-1585233269 | ami-0cf056b1114fe2c7a | eu-west-2    | Bastion |
| KFD-v0.0.0-Node-1.14.8-1585233270    | ami-0e015e15e36668844 | eu-west-2    | Node    |
| KFD-v0.0.0-Master-1.14.8-1585233269  | ami-0541e522e6f7d9281 | eu-west-3    | Master  |
| KFD-v0.0.0-Bastion-1.14.8-1585233269 | ami-06d11428458558c7f | eu-west-3    | Bastion |
| KFD-v0.0.0-Node-1.14.8-1585233270    | ami-081d132967037dd48 | eu-west-3    | Node    |

### Kubernetes 1.15

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v0.0.0-Master-1.15.5-1585233268  | ami-0a9efbf92a02f1e89 | eu-central-1 | Master  |
| KFD-v0.0.0-Bastion-1.15.5-1585233268 | ami-0aad83677e586bee1 | eu-central-1 | Bastion |
| KFD-v0.0.0-Node-1.15.5-1585233268    | ami-0eb4ee53a32adef9b | eu-central-1 | Node    |
| KFD-v0.0.0-Master-1.15.5-1585233268  | ami-02a639e73db92a471 | eu-north-1   | Master  |
| KFD-v0.0.0-Bastion-1.15.5-1585233268 | ami-0e56a1271285a5b50 | eu-north-1   | Bastion |
| KFD-v0.0.0-Node-1.15.5-1585233268    | ami-061c9f06d1da96cdc | eu-north-1   | Node    |
| KFD-v0.0.0-Master-1.15.5-1585233268  | ami-0f71abc6021fe6607 | eu-west-1    | Master  |
| KFD-v0.0.0-Bastion-1.15.5-1585233268 | ami-064a74442a048fb94 | eu-west-1    | Bastion |
| KFD-v0.0.0-Node-1.15.5-1585233268    | ami-05618e5f7e0bf3dc5 | eu-west-1    | Node    |
| KFD-v0.0.0-Master-1.15.5-1585233268  | ami-084ecfa20ba7ea4f9 | eu-west-2    | Master  |
| KFD-v0.0.0-Bastion-1.15.5-1585233268 | ami-03b1a2667fbd0281b | eu-west-2    | Bastion |
| KFD-v0.0.0-Node-1.15.5-1585233268    | ami-03aea63792e1fca93 | eu-west-2    | Node    |
| KFD-v0.0.0-Master-1.15.5-1585233268  | ami-0cd3c2ac49f21341c | eu-west-3    | Master  |
| KFD-v0.0.0-Bastion-1.15.5-1585233268 | ami-0a1f6f667de512399 | eu-west-3    | Bastion |
| KFD-v0.0.0-Node-1.15.5-1585233268    | ami-042da0a227158970c | eu-west-3    | Node    |

### Kubernetes 1.16

| Name                                 | AMI ID                | Region       | Kind    |
|--------------------------------------|-----------------------|--------------|---------|
| KFD-v0.0.0-Master-1.16.2-1585233267  | ami-0a07e0402f7f9ed6c | eu-central-1 | Master  |
| KFD-v0.0.0-Bastion-1.16.2-1585233267 | ami-07f071de3de0ce517 | eu-central-1 | Bastion |
| KFD-v0.0.0-Node-1.16.2-1585233267    | ami-0f5dce5c6053668f0 | eu-central-1 | Node    |
| KFD-v0.0.0-Master-1.16.2-1585233267  | ami-0b1be5dbdf35cb78d | eu-north-1   | Master  |
| KFD-v0.0.0-Bastion-1.16.2-1585233267 | ami-0f36a4fdc5286783b | eu-north-1   | Bastion |
| KFD-v0.0.0-Node-1.16.2-1585233267    | ami-06e39ad65e46ed2a2 | eu-north-1   | Node    |
| KFD-v0.0.0-Master-1.16.2-1585233267  | ami-0d0835d38d95eedf0 | eu-west-1    | Master  |
| KFD-v0.0.0-Bastion-1.16.2-1585233267 | ami-00d806cbed5b94eb9 | eu-west-1    | Bastion |
| KFD-v0.0.0-Node-1.16.2-1585233267    | ami-0ae4f80b6bc63c54e | eu-west-1    | Node    |
| KFD-v0.0.0-Master-1.16.2-1585233267  | ami-0dba5dcbd5374dd2c | eu-west-2    | Master  |
| KFD-v0.0.0-Bastion-1.16.2-1585233267 | ami-0fc430743a5600b7c | eu-west-2    | Bastion |
| KFD-v0.0.0-Node-1.16.2-1585233267    | ami-0c903fb8500c52c32 | eu-west-2    | Node    |
| KFD-v0.0.0-Master-1.16.2-1585233267  | ami-040f3f52a92669daf | eu-west-3    | Master  |
| KFD-v0.0.0-Bastion-1.16.2-1585233267 | ami-05eb9d88324182014 | eu-west-3    | Bastion |
| KFD-v0.0.0-Node-1.16.2-1585233267    | ami-000192ee789cf2609 | eu-west-3    | Node    |
