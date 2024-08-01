#!/bin/sh

case "$(printf "Shutdown\nReboot\nLock\nExit i3\n" | dmenu -p "System:")" in
  "Shutdown") sudo Shutdown now ;;
  "Reboot") sudo reboot now ;;
  "Lock") betterlockscreen --lock ;;
  "Exit i3") i3-msg exit ;;
  *) exit 1 ;;
esac
