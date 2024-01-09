# Build linux from scratch

1. `wget -c https://buildroot.org/downloads/buildroot-2023.11.tar.gz`
1. `sudo apt-get install build-essential file cpio bc`
1. `tar -xvf buildroot-2023.11.tar.gz `
1. `cd buildroot-2023.11`
1. `make qemu_x86_64_defconfig`
1. `make -j$(echo "$(nproc)-1" | bc)`
1. `find ./ -name '*start-qemu.sh*'`
1. `./buildroot-2023.11/output/images/start-qemu.sh `