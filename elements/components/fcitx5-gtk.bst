kind: cmake

sources:
- kind: tar
  url: github_files:fcitx/fcitx5-gtk/archive/5.0.14.tar.gz
  ref: 5cf5bc7309c1559fa95552d2cfd6cfcee568c5691afa2bee125754bbcc9846be
- kind: patch
  path: files/fcitx5-gtk/gio-unix.patch

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/gtk+-3.bst
- components/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DENABLE_GIR=Off
    -DENABLE_GTK4_IM_MODULE=On
    -DENABLE_GTK3_IM_MODULE=On
    -DENABLE_GTK2_IM_MODULE=Off

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libFcitx5GClient.so'
