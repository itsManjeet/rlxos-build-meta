kind: meson

sources:
- kind: tar
  url: gnome_downloads:calls/43/calls-43.0.tar.xz
  ref: 4a5aa0ecc728b9ca1705a2951ee5bf635e724414cb959b4636d3b1f9c1a57dbe
build-depends:
- components/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/modemmanager.bst
- components/callaudiod.bst
- components/evolution-data-server.bst
- components/feedbackd.bst
- components/folks.bst
- components/gom.bst
- components/libpeas.bst
- components/sofia-sip.bst
- components/gtk+-3.bst
- components/libhandy.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
