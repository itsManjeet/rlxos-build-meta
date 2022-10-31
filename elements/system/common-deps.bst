kind: stack

depends:
- components/meta-gnome-core-os-services.bst
- components/meta-gnome-core-shell.bst
- components/meta-gnome-core-utilities.bst
- components/systemd-presets.bst
- components/xdg-desktop-portal.bst
- components/xdg-desktop-portal-gnome.bst
- components/xdg-desktop-portal-gtk.bst
- components/resize-root.bst
- components/spice-vdagent.bst
- components/fish.bst
- components/nss-mdns.bst
- components/ntfs-3g.bst
- components/opensc.bst
- components/uresourced.bst
- components/android-udev-rules.bst
- components/ibus-anthy.bst
- components/ibus-hangul.bst
- components/ibus-libpinyin.bst
- components/networkmanager-openvpn.bst
- components/networkmanager-openconnect.bst
- components/networkmanager-fortisslvpn.bst
- components/networkmanager-vpnc.bst
- components/pipewire-daemon.bst
- components/wireplumber.bst
- components/default-terminal.bst
- components/distrobox.bst

- platform.bst

- config/default-wallpaper.bst
- config/gnome-override.bst
- config/flathub-config.bst
- config/ostree-config.bst
- config/plymouth-theme.bst
- config/wpa-supplicant-config.bst
- config/nsswitch-config.bst

- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/useradd-ostree.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/gamemode.bst
- freedesktop-sdk.bst:components/gnupg-systemd.bst
- components/firmware.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst

- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst
