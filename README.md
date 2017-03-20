# Docker2Proot
Convert Docker image to proot rootfs.

Simple usage

```bash
# First time.
# get_rootfs_from_docker will generate `rootfs` directory
./get_rootfs_from_docker.sh

...

# `enter.sh` will chroot to rootfs.
./enter.sh
```
