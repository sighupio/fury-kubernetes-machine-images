{
  "variables": {
    "vsphere_user": "{{ env `VSPHERE_USER`}}",
    "vsphere_password": "{{ env `VSPHERE_PASSWORD` }}",
    "vcenter_server": "{{ env `VSPHERE_SERVER` }}",
    "kube-version" : "${kube-version}",
    "critools_version" : "${critools_version}"
  },
  "builders": [
    ${builders}
  ],
  "provisioners": [
    ${provisioners}, {
      "type": "shell",
      "inline": [
        "sudo rm -rf /etc/machine-id",
        "sudo touch /etc/machine-id",
        "sudo rm -rf /var/lib/dbus/machine-id"
      ]
    }

  ]
}
