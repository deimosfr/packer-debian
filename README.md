Packer Debian
=============

Packer configuration to generate Debian VirtualBox image/Vagrant boxes.

Usage
-----

To generate a VirtualBox image, edit debian-<version> (replace <version> by the desired version of Debian like wheezy) file and adapt the variables fields:
```
    "variables": {
        "debian_version": "7.7.0",
    },

```
Once done, create your box file:
```
packer build debian-<version>
```
So for example:
```
packer build debian-jessie
```

That's it :-)

You can find the result on the vagrantcloud here: https://vagrantcloud.com/deimosfr/debian-wheezy
