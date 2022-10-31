kind: import
sources:
- kind: local
  path: files/config/gnome-overrides/org.gnome.shell-enabled-extensions.gschema.override

depends:
- components/gnome-shell-extension-blur-my-shell.bst
config:
  source: /
  target: /usr/share/glib-2.0/schemas

public:
  bst:
    integration-commads:
    - glib-compile-schemas usr/share/glib-2.0/schemas