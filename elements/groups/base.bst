kind: stack
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- components/fish.bst

- components/firmware.bst

- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/usbutils.bst
- freedesktop-sdk.bst:components/pciutils.bst
- freedesktop-sdk.bst:components/procps.bst
- freedesktop-sdk.bst:components/hosts.bst
- freedesktop-sdk.bst:components/iana-config.bst
- freedesktop-sdk.bst:components/locales.bst
- freedesktop-sdk.bst:components/supported-locales.bst

- components/alsa-ucm.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/alsa-plugins.bst
- freedesktop-sdk.bst:components/aspell.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/dictionaries.bst
- freedesktop-sdk.bst:components/mythes.bst


- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dracut.bst

- components/systemd-presets.bst
- components/os-release.bst

- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/iproute2.bst

- components/resize-root.bst
- components/spice-vdagent.bst
- components/ntfs-3g.bst
- components/nss-mdns.bst

- components/distrobox.bst
- components/fprintd.bst
- components/thermald.bst

- components/srclang.bst
- components/bolt.bst


- config/useradd.bst
- config/flathub-config.bst
- config/branding.bst
- config/nsswitch-config.bst
- config/ostree-config.bst
- config/sudo.bst
- config/wpa-supplicant-config.bst

- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/networkd.bst
- freedesktop-sdk.bst:vm/config/resolved.bst
- freedesktop-sdk.bst:vm/base-filesystem.bst

- freedesktop-sdk.bst:components/wget2.bst
- freedesktop-sdk.bst:components/zip.bst
- freedesktop-sdk.bst:components/unzip.bst

- freedesktop-sdk.bst:components/gamemode.bst
- freedesktop-sdk.bst:components/gnupg-systemd.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst