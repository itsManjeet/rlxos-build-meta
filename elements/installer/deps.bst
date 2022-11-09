kind: stack

depends:
- installer/os-installer-extra.bst
- installer/installer-dirs.bst
- installer/public-key.bst

- components/plymouth.bst
- config/plymouth-theme.bst
- config/default-wallpaper.bst

- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/systemd.bst
- components/linux.bst
- components/firmware.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:vm/config/journald.bst

- components/spice-vdagent.bst
- components/os-release.bst
