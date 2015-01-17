Packer Debian
=============

Packer configuration to generate Debian VirtualBox image/Vagrant boxes.

Usage
-----

To generate a VirtualBox image, edit debian-<version> (replace <version> by the desired version of Debian like wheezy) file and adapt the variables fields:
```
    "variables": {
        "debian_version": "7.7.0",
        "iso_checksum": "5cb6e4fea55fbb5173f90c3a545b843c6c193e29c3aa32b3306c9bbdfb1ad6a6a36ae8be50e91af9d03d5f21c472bd05d04d3508172e0b519e76714333c7c74b"
    },

```
You have to set the Debian version and the ISO sha512 checksum. Once done, create your box file:
```
packer build debian-<version>
```
So for example:
```
packer build debian-jessie
```

That's it :-)

You can find the result on the vagrantcloud here: https://vagrantcloud.com/deimosfr/debian-wheezy
