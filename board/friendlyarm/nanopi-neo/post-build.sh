#!/bin/sh
# post-build.sh for Nanopi NEO, based on the Orange Pi PC
# 2013, Carlo Caione <carlo.caione@gmail.com>
# 2016, "Yann E. MORIN" <yann.morin.1998@free.fr>

BOARD_DIR="$( dirname "${0}" )"
MKIMAGE="${HOST_DIR}/bin/mkimage"
BOOT_CMD="${BOARD_DIR}/boot.cmd"
BOOT_CMD_H="${BINARIES_DIR}/boot.scr"

# U-Boot script
"${MKIMAGE}" -C none -A arm -T script -d "${BOOT_CMD}" "${BOOT_CMD_H}"

mkdir -p $TARGET_DIR/lib/firmware/ap6212
cp ${BOARD_DIR}/brcmfmac43430-sdio.txt $TARGET_DIR/lib/firmware/brcm/brcmfmac43430-sdio.txt

cp ${BOARD_DIR}/sshd_config $TARGET_DIR/etc/ssh/

cp ${BOARD_DIR}/c304-2.wav $TARGET_DIR/root
