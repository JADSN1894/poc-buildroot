build:
	wget -c https://buildroot.org/downloads/buildroot-2023.11.tar.gz
	tar -xvf buildroot-2023.11.tar.gz
	cd ./buildroot-2023.11
	make qemu_x86_64_defconfig
	make -j$(echo "$(nproc)-1" | bc)
	find ./ -name '*start-qemu.sh*'