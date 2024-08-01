#!/bin/bash
bat=$(acpi -a)
if [ "$bat" = "Adapter 0: on-line" ]; then
  betterlockscreen --lock &
else
  betterlockscreen --lock &
  sleep 120s
  systemctl suspend
fi
