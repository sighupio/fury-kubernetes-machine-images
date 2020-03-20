{
  "variables": {
    "aws_access_key": "{{env `AWS_ACCESS_KEY_ID`}}",
    "aws_secret_key": "{{env `AWS_SECRET_ACCESS_KEY`}}",
    "kube-version" : "${kube-version}",
    "critools_version" : "${critools_version}"
  },
  "builders": [
    ${builders}
  ],
  "provisioners": [
    {
      "type": "shell",
      "inline": [
        "while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo 'Waiting for cloud-init...'; sleep 1; done"
      ]
    },
    ${provisioners}, {
      "type": "shell",
      "inline": [
        "rm /home/${user}/.ssh/authorized_keys",
        "if [ -e /etc/machine-id ]; then sudo rm -rf /etc/machine-id && sudo touch /etc/machine-id; fi",
        "if [[ -e /var/lib/dbus/machine-id && ! -h /var/lib/dbus/machine-id ]]; then sudo rm -f /var/lib/dbus/machine-id; fi"
      ]
    }

  ]
}
