# installation for kernel-wasm
# https://www.tecmint.com/install-kernel-headers-in-ubuntu-and-debian/

hostnamectl
apt search linux-headers-$(uname -r)
ls -l /usr/src/linux-headers-$(uname -r)
sudo apt update -y
sudo apt install -y linux-headers-$(uname -r)

# install wasmer runtime 
# https://github.com/wasmerio/wasmer-install/blob/master/README.md
curl https://get.wasmer.io -sSfL | sh -s "0.4.2"
# check
sudo wasmer run --backend singlepass --loader kernel ./test/rootfs/data/hello_world.wasm

# https://medium.com/wasmer/running-webassembly-on-the-kernel-8e04761f1d8e
# Install dependencies: git wget curl tar make gcc
git clone https://github.com/wasmerio/kernel-wasm
pacman -Q | grep headers
sudo pacman -S linux-headers
pacman -Q | grep headers
make install