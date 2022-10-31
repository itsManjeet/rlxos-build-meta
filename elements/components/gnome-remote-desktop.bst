kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/43/gnome-remote-desktop-43.1.tar.xz
  ref: bd847c3ca77360995334462cd469e45a12479f11c0c48e965028ed5cb807a5b2
build-depends:
- components/nv-codec-headers.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/libvncserver.bst
- components/freerdp.bst
- components/glib.bst
- components/libnotify.bst
- components/libsecret.bst
- components/pipewire.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
