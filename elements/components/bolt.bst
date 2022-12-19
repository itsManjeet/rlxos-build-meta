kind: manual

sources:
- kind: git_tag
  track: master
  url: github:itsmanjeet/bolt.git

  ref: b428c33d52cb22eb8a32ff0c882f52aed64b647b
- kind: go-vendor
  ref: 2290a86fb256d292b17d5fbc6e7651024ccef2d772616945ecd064bcf453d07c
- kind: local
  path: files/bolt

build-depends:
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/curl.bst

config:
  build-commands:
  - go build -o bolt_server.exe -trimpath -ldflags="-s -w" bolt/server
  install-commands:
  - install -v -D -m0755 bolt_server.exe %{install-root}%{bindir}/bolt
  - install -v -D -m0644 -t %{install-root}%{datadir}/bolt model.json
  - |
    unitdir="$(pkg-config --variable=systemduserunitdir systemd)"
    install -Dm644 -t %{install-root}${unitdir} service/bolt.service
    install -Dm644 -t %{install-root}${unitdir} service/bolt.socket
    install -Dm644 -t %{install-root}${unitdir} gnome-search-provider/dev.rlxos.Bolt.SearchProvider.service
    sed -i "s#/usr/lib/bolt/#%{libexecdir}#g" %{install-root}${unitdir}/dev.rlxos.Bolt.SearchProvider.service
  - |
    presetdir="$(pkg-config --variable=systemduserpresetdir systemd)"
    install -Dm644 -t %{install-root}${presetdir} bolt.preset

  - |
    install -Dm755 -t %{install-root}%{libexecdir} gnome-search-provider/gnome-search-provider.py
    install -Dm644 -t %{install-root}%{datadir}/applications gnome-search-provider/dev.rlxos.Bolt.SearchProvider.desktop
    echo -e "\nExec=%{libexecdir}/gnome-search-provider.py" >> %{install-root}%{datadir}/applications/dev.rlxos.Bolt.SearchProvider.desktop
    install -Dm644 -t %{install-root}%{datadir}/gnome-shell/search-providers gnome-search-provider/dev.rlxos.Bolt.SearchProvider.ini
    install -Dm644 -t %{install-root}%{datadir}/dbus-1/services gnome-search-provider/dev.rlxos.Bolt.SearchProvider.service.dbus
    install -Dm644 assets/icon.svg %{install-root}%{datadir}/icons/bolt.svg

