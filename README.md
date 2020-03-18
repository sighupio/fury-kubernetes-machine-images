# Fury Kubernetes Machine Images

This repository contains the Machine Images used to build Fury Kubernetes Clusters.

## Project structure

You can find in the root of this project a [`versions.yml`](versions.yml) file:

```yaml
fury:
  v1.0.0:
    kubernetes:
      v1.14: v1.14.10
      v1.15: v1.15.5
      v1.16: v1.16.2
```

It contains compatibility pairs between Fury Kubernetes Machine Images version and Kubernetes version.

You can also find [`roles`](roles) directory containing shared software used to build theses Machine Images
in multiple providers. In addition to the [`roles`](roles) directory there is also a [`playbooks`](playbooks) dir.
This directory contains ansible playbooks needed to create Fury Machine Images. Every provider should use the same
ansible playbooks + roles.

Then you will find providers directories like [`aws`](aws). These directories contains everything needed to create and
delete (old/release-candidate) Machine Images versions.
