kind: cmake

sources:
- kind: tar
  url: github_files:fish-shell/fish-shell/releases/download/3.3.1/fish-3.3.1.tar.xz

  ref: b5b4ee1a5269762cbbe993a4bd6507e675e4100ce9bbe84214a5eeb2b19fae89
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DCMAKE_INSTALL_SYSCONFDIR=%{sysconfdir}
    -DCURSES_NEED_NCURSES=TRUE

public:
  bst:
    integration-commands:
    - echo %{bindir}/fish >> /etc/shells

# Do not display the .desktop file in the launcher.
# The reason it was added was for appimage builds, not cause its a critical part of the software.
# It doesn't need to be shown in rlxos.
# https://github.com/fish-shell/fish-shell/commit/eb7172458b628b81a3f70f38a0e58c7c23202f05
config:
  install-commands:
    (>):
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/fish.desktop"
