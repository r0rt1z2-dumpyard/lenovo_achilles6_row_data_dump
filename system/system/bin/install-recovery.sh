#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:e4c2ded565120af4b0e38602aa1306984cee47e0; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:5209c7cc91f7d0ba41c53c43ab47533fb8a5836f \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:e4c2ded565120af4b0e38602aa1306984cee47e0 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
