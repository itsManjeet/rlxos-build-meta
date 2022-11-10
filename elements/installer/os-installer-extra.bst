kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst

runtime-depends:
- installer/os-installer.bst
- components/gdm.bst
- components/gnome-backgrounds.bst
- components/gnome-session.bst
- components/gnome-shell.bst

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst

sources:
- kind: local
  path: files/os-installer-extra/

config:
  build-commands:
  - |
    sed 's/@VOLUME_ID@/%{installer-volume-id}/g' run-mount-installercd.mount.in \
      >run-mount-installercd.mount

  install-commands:
  - |
    dir="$(pkg-config --variable=systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      os-images-loop.service \
      run-mount-installercd.mount \
      os-installer-session.service

  - |
    dir="$(pkg-config --variable=systemduserunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      os-installer.service
  - |
    dir="$(pkg-config --variable=systemduserunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}/gnome-session@os-installer.target.d" \
      session.conf

  - |
    dir="$(pkg-config --variable=systemdsystempresetdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      os-installer.preset
  - |
    dir="$(pkg-config --variable=sysusersdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      installer-user.conf

  - |
    dir="$(pkg-config --variable=tmpfilesdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      installer-user-dir.conf

  - |
    install -Dm644 -t "%{install-root}%{datadir}/gnome-session/sessions/" \
      os-installer.session
  - |
    install -Dm644 os-installer-session.pam \
      "%{install-root}%{sysconfdir}/pam.d/os-installer-session"
  - |
    install -Dm644 -t "%{install-root}%{datadir}/gnome-shell/modes/" \
      os-installer.json

  - |
    install -Dm644 -t "%{install-root}%{sysconfdir}/os-installer/" \
      config.yaml
    
  - |
    install -Dm755 -t "%{install-root}%{sysconfdir}/os-installer/scripts" \
      configure.sh

  - |
    install -Dm755 -t "%{install-root}%{sysconfdir}/os-installer/scripts" \
      install.sh

    - |
    install -Dm755 -t "%{install-root}%{sysconfdir}/os-installer/scripts" \
      prepare.sh


public:
  bst:
    integration-commands:
    - |
      rm "%{indep-libdir}/systemd/system/gdm.service"
