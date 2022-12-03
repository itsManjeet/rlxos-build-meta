kind: stack

depends:
- config/wpa-supplicant-config.bst
- components/networkmanager-openvpn.bst
- components/networkmanager-openconnect.bst
- components/networkmanager-fortisslvpn.bst
- components/networkmanager-vpnc.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- components/modemmanager.bst
- components/firmware.bst
- system/common-deps.bst
- components/os-release.bst
- components/feedbackd.bst
- components/calls.bst
- freedesktop-sdk.bst:components/iputils.bst
- components/atinout.bst
- components/eg25-manager.bst
- components/iw.bst
- freedesktop-sdk.bst:components/usbutils.bst
