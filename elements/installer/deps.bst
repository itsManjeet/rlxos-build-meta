kind: stack

depends:
- components/gnome-console.bst
- components/gparted.bst
- installer/os-installer-extra.bst
- installer/installer-dirs.bst

- components/plymouth.bst
- config/branding.bst
- config/plymouth-theme.bst
- config/default-wallpaper.bst

- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/systemd.bst
- components/linux.bst
- components/firmware.bst

- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst

- components/spice-vdagent.bst
- components/os-release.bst
