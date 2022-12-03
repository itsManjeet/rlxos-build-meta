kind: import
sources:
- kind: local
  path: files/config/background/backgrounds.gschema.override

depends:
- components/gnome-backgrounds.bst

config:
  source: /
  target: /usr/share/glib-2.0/schemas

public:
  bst:
    integration-commads:
    - glib-compile-schemas usr/share/glib-2.0/schemas