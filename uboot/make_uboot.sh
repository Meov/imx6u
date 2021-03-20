source /opt/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/environment
make mx6ull_14x14_ddr512_emmc_defconfig
make all -j
mv u-boot.imx u-boot-imx6ull-14x14-ddr512-emmc.imx
mv u-boot.bin u-boot-imx6ull-14x14-ddr512-emmc.bin

if [ ! -e "./tmp" ]; then
    mkdir tmp
fi
rm -rf tmp/*

mv u-boot-imx6ull*.bin tmp
mv u-boot-imx6ull*.imx tmp

echo "tmp/u-boot-imx6ull-14x14-ddr512-emmc.imx is ready "
