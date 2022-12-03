#!/bin/bash
APPS_LIST=(
    org.gnome.Boxes
    org.gnome.Calculator
    org.gnome.Calendar
    org.gnome.Cheese
    org.gnome.Contacts
    org.gnome.ColorViewer
    org.gnome.Evince
    org.gnome.FileRoller
    org.gnome.Firmware
    org.gnome.GTG
    org.gnome.Geary
    org.gnome.Logs
    org.gnome.Photos
    org.gnome.Polari
    org.gnome.PowerStats
    org.gnome.TextEditor
    org.gnome.Weather
    org.gnome.baobab
    org.gnome.clocks
    org.gnome.eog
    org.gustavoperedo.FontDownloader

    com.mattjakeman.ExtensionManager
    com.github.maoschanz.drawing
    com.valvesoftware.Steam
    org.mozilla.firefox
    org.libreoffice.LibreOffice
    org.videolan.VLC
)

(
echo "# adding flathub repository"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
if [ $? != 0 ] ; then
   zenity --error \
          --text="FAILED to add flathub repository"
   exit 1
fi

count=0
TOTAL=${#APPS_LIST[@]}
for app in ${APPS_LIST[@]} ; do
   count=$((count+1))
   echo "# installing ${app}"
   flatpak install --noninteractive flathub ${app}
   if [ "$?" != 0 ] ; then
       zenity --error \
              --text="FAILED to install ${app}"
       exit 1
   fi
   awk "BEGIN {print ($count/$TOTAL * 100)}"
done
) | zenity --progress --percentage=0 \
           --auto-close --no-cancel --width=300
if [ "$?" != 0 ] ; then
    zenity --error \
           --text="FAILED to install apps"
fi