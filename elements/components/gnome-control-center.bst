kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-control-center/43/gnome-control-center-43.1.tar.xz
  ref: e98bc6b784afd04f297db5e8e6c59910e2cd090332710774f26dc8de89af4fc7
build-depends:
- components/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- components/libgnomekbd.bst
- components/power-profiles-daemon.bst

depends:
- components/modemmanager.bst
- components/networkmanager.bst
- components/accountsservice.bst
- components/colord-gtk.bst
- components/colord.bst
- components/gnome-online-accounts.bst
- components/gsound.bst
- components/ibus-daemon.bst
- components/libgtop.bst
- components/libnma.bst
- components/malcontent.bst
- components/samba.bst
- components/system-config-printer.bst
- components/udisks2.bst
- components/upower.bst
- components/cheese.bst
- components/gnome-bluetooth.bst
- components/gnome-color-manager.bst
- components/gnome-desktop.bst
- components/gnome-settings-daemon.bst
- components/adwaita-icon-theme.bst
- components/gdk-pixbuf.bst
- components/glib.bst
- components/gsettings-desktop-schemas.bst
- components/gtk.bst
- components/libadwaita.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocumentation=true
    -Dmalcontent=true
