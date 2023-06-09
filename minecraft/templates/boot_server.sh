#!/usr/bin/env bash

# Starts a Minecraft server. Creates a screen named `zcraft_folder_name` and
# runs the Minecraft server in it.

ARGC=$#

if [ $ARGC -ne 2 ]; then
  echo "Usage: $0 <folder_name> <RAM_in_MB>"
fi

FOLDER=$1
RAM=$2

SCREEN_NAME="zcraft_$FOLDER"

for scr in $(screen -ls | grep -o -e "[0-9]\+\.[^(]\+" | tr -d ' '); do
  screen -XS $scr quit || true
done

screen -wipe || true
screen -dmS $SCREEN_NAME sh
screen -S $SCREEN_NAME -X stuff "sh ./boot_server_screen.sh $FOLDER $RAM && exit"
