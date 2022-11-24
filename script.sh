# cs736-wasm-project

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
