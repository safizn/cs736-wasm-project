# cs736-wasm-project

# download kernel 4.15
# https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.334.tar.xz
VERSION=4.19.267
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$VERSION.tar.xz

tar -xf linux-$VERSION.tar.xz

sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison

# make clean
make mrproper menuconfig
make -j$(grep -c processor /proc/cpuinfo) bzImage modules

##############

# download debian
https://cdimage.debian.org/mirror/cdimage/archive/

# installation for kernel-wasm
# https://www.tecmint.com/install-kernel-headers-in-ubuntu-and-debian/

hostnamectl
apt search linux-headers-$(uname -r)
ls -l /usr/src/linux-headers-$(uname -r)
sudo apt update -y
sudo apt install -y linux-headers-$(uname -r)

sudo apt install git wget curl tar make gcc
git clone https://github.com/wasmerio/kernel-wasm
make install
