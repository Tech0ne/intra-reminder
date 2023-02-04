#!/bin/bash

pip3 install requests

rm -rf ~/.local/share/intranet-reminder/
mkdir -p ~/.local/share/intranet-reminder/
rm -f ~/.local/share/intranet-reminder/intra-reminder-crash-report
rm -f ~/.local/share/intranet-reminder/.last_check
cp core/intra-reminder ~/.local/share/intranet-reminder/intra-reminder
chmod +x ~/.local/share/intranet-reminder/intra-reminder

mkdir -p ~/.config/autostart/
cp core/intra-reminder.desktop ~/.config/autostart/intra-reminder.desktop
chmod +x ~/.config/autostart/intra-reminder.desktop

cp config ~/.local/share/intranet-reminder/config

echo "Setup complete"
echo "Starting..."

~/.local/share/intranet-reminder/intra-reminder &