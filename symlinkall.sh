#!/bin/bash

CURR=`pwd`
DEST="$HOME"
#DEST="/tmp/target"

DATETIME=`date +%Y%m%d.%T`

TBC="asoundrc  bashrc  gitconfig  profile  synergy.conf  vimperatorrc  xinitrc  Xresources  xsession"

for F in $TBC
do
  D="$DEST/.$F"
  echo "$D"
  if [ -e "$D" ]
  then
    B="$D.$DATETIME.backup"
    mv "$D" "$B"
  fi
  #cp "$F" "$D"
  ln -s "$CURR/$F" "$D"
done
