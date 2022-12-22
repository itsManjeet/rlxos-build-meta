kind: stack
depends:
- components/appimaged.bst
- components/android-udev-rules.bst

- freedesktop-sdk.bst:components/gnu-free-fonts.bst
- freedesktop-sdk.bst:components/google-crosextra-caladea.bst
- freedesktop-sdk.bst:components/google-crosextra-carlito.bst
- freedesktop-sdk.bst:components/noto-emoji.bst
- freedesktop-sdk.bst:components/tex-gyre-fonts.bst

- freedesktop-sdk.bst:components/xcb-util-cursor.bst
- freedesktop-sdk.bst:components/xcb-util-image.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/xcb-util-renderutil.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst

- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:components/flatpak-xdg-utils.bst
- freedesktop-sdk.bst:components/vulkan-validation-layers.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/iio-sensor-proxy.bst