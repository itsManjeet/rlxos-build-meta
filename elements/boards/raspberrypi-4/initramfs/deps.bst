kind: stack

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dracut.bst
- freedesktop-sdk.bst:components/os-release.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- config/plymouth-theme.bst

- boards/raspberrypi-4/bsp/linux.bst
- components/firmware.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst

- components/libostree.bst
- boards/raspberrypi-4/repair-mbr.bst
