kind: cmake

sources:
- kind: git_tag
  track: master
  url: github:itsmanjeet/bolt.git
  
  ref: 53d0f9e3539cce66fd85912f980e481f41f781ea

- kind: patch
  path: files/bolt/0001-removed-discord-backend.patch

- kind: patch
  path: files/bolt/0002-fixed-icon-install.patch

- kind: patch
  path: files/bolt/0003-fixed-cmake-install-path.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/curl.bst
- components/libyaml-cpp.bst

config:
  install-commands:
    (>):
    - install -v -Dm 644 assets/icon.svg %{install-root}%{datadir}/icons/hicolor/apps/scalable/bolt.svg
