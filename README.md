packer-wheezy
=============

Packer configuration to generate Debian Wheezy VirtualBox image/Vagrant boxes.

Usage
-----

To generate a VirtualBox image, edit deimosfr_debian-wheezy file and adapt the variables fields:
```
    "variables": {
        "debian_version": "7.6.0",
        "iso_checksum": "f8f0e2ddc5bafd5eb4188cca40a7e0acd12be3bb425ce5ad56734df6e807237e8798e61ac6bb07b02056ef7e7621ceba5f84c00449be449005f9c4e47055333f"
    },

```
You have to set the Debian version and the ISO sha512 checksum. Once done, create your box file:
```
packer build deimosfr_debian-wheezy
```
That's it :-)

You can find the result on the vagrantcloud here: https://vagrantcloud.com/deimosfr/debian-wheezy
