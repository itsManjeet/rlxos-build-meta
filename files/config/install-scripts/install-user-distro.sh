#!/bin/sh
(
   echo "# creating container"
   distrobox create --yes -i ubuntu
   if [ "$?" != 0 ] ; then
      zenity --error \
           --text="FAILED to install ubuntu"
   fi
   echo "100"
) | zenity --progress --percentage=0 \
           --auto-close --no-cancel --width=300
if [ "$?" != 0 ] ; then
    zenity --error \
           --text="FAILED to install ubuntu"
fi