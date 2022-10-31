# The core set is not expected to change as frequently as core-deps or
# world. Adding or removing elements from here should be approved by
# release team. Review the technical conditions to enter GNOME core:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#technical-conditions-to-enter-gnome-core
#
# Additional design team approval is required before adding or removing
# desktop applications from core. Current contact: Allan Day.
kind: stack
depends:
- components/baobab.bst
- components/cheese.bst
- components/eog.bst
- components/epiphany.bst
- components/evince.bst
- components/gnome-calculator.bst
- components/gnome-calendar.bst
- components/gnome-characters.bst
- components/gnome-clocks.bst
- components/gnome-connections.bst
- components/gnome-console.bst
- components/gnome-contacts.bst
- components/gnome-disk-utility.bst
- components/gnome-font-viewer.bst
- components/gnome-logs.bst
- components/gnome-maps.bst
- components/gnome-music.bst
- components/gnome-photos.bst
- components/gnome-software.bst
- components/gnome-system-monitor.bst
- components/gnome-text-editor.bst
- components/gnome-weather.bst
- components/nautilus.bst
- components/simple-scan.bst
- components/totem.bst
- components/yelp.bst
