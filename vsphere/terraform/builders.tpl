{
  "type": "vsphere-clone",
  "name": "${kind}",
  "vcenter_server": "{{ user `vcenter_server` }}",
  "username": "{{ user `vsphere_user` }}",
  "password": "{{ user `vsphere_password` }}",
  "insecure_connection": "true",
  "communicator": "ssh",

  "template": "${base_template}",
  "vm_name": "KFD-${version}-${kind}-${k8s_version}-{{timestamp}}",
  "folder": "${folder}",
  "datastore": "${datastore}",
  "convert_to_template": "true",
  "host": "${host}",
  "network": "${network}",
  "boot_order": "disk,cdrom",

  "ssh_username": "${user}",
  "ssh_password": "${password}",
  "CPUs": 4,
  "RAM": 4196,
  "RAM_reserve_all": true,
  "disk_controller_type": ["pvscsi"],
  "storage": [{
    "disk_size": 32768,
    "disk_thin_provisioned": true
  }]
}