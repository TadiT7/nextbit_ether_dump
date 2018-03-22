#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:16941056:145a60a96ece803438e0676ed4384f47841789ff; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12709888:98999842045a404e6169c23e45a9f4924be2c4b1 EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery 145a60a96ece803438e0676ed4384f47841789ff 16941056 98999842045a404e6169c23e45a9f4924be2c4b1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
