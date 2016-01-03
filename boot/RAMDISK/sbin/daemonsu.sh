#!/system/bin/sh

if [ -x "/system/xbin/daemonsu" ]; then
    /system/xbin/daemonsu --auto-daemon &
fi

pm disable com.sec.knox.seandroid

if [ -x "/system/xbin/busybox" ]; then
    /system/xbin/busybox run-parts /system/etc/init.d
    /system/xbin/busybox run-parts /sbin/init.d
fi

