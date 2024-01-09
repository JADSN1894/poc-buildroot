setup:
	.devcontainer/install_tooling.sh

build:
	wget -c https://buildroot.org/downloads/buildroot-2023.11.tar.gz && \
	sudo apt-get install build-essential file cpio bc && \
	tar -xvf buildroot-2023.11.tar.gz  && \
	cd buildroot-2023.11 && \
	make qemu_x86_64_defconfig && \
	make -j$(echo "$(nproc)-1" | bc)

execute-qemu:
	find ./ -name '*start-qemu.sh*' && \
	./buildroot-2023.11/output/images/start-qemu.sh 