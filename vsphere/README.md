# vSphere base templates

The files included in this folder are used to create the Kubernetes Fury Distribution base VM templates used to spin-up clusters and install the distribution.

## Usage

> You'll need the credentials to connect to vSphere / vCenter in order to create the templates.

```bash
export VSPHERE_USER=<user>
export VSPHERE_PASSWORD=<password>
export VSPHERE_SERVER=<vCenter URL/IP>
cd terraform
make templates
```

This will create 2 temlpates on the `TEMPLATES` folder using `sighup-ubuntu-1` as starting point:

- `KFD-<fury version>-Master-<kubernetes version>-timestamp`
- `KFD-<fury version>-Node-<kubernetes version>-timestamp`

You can change the configuration by editing the `main.tf` file.
