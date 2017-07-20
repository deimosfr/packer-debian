Packer Debian
=============

Packer configuration to generate Debian VirtualBox image/Vagrant boxes.

Usage
-----

To generate a VirtualBox image, edit debian-<version> (replace <version> by the desired version of Debian like stretch) file and adapt the variables fields:
```
    "variables": {
        "debian_version": "9.0.0",
    },

```
Once done, create your box file:
```
packer build debian-<version>
```
So for example:
```
packer build debian-stretch
```

That's it :-)

You can find the result on the vagrantcloud here: https://vagrantcloud.com/deimos_fr
