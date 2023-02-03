#!/bin/bash

mkdir -p ~/.local/share/intranet-reminder/
cp core/intra-reminder ~/.local/share/intranet-reminder/intra-reminder
cp core/logo.png ~/.local/share/intranet-reminder/logo.png
chmod +x ~/.local/share/intranet-reminder/intra-reminder

echo "Setting up autostart"
mkdir -p ~/.config/autostart/
cp core/intra-reminder.desktop ~/.config/autostart/intra-reminder.desktop
chmod +x ~/.config/autostart/intra-reminder.desktop
echo "Autostart setup"

cp config ~/.local/share/intranet-reminder/config