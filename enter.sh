#!/bin/bash
set -e
cd `dirname $0`
./proot -R ./rootfs -0 '/usr/bin/env -i /bin/bash'
