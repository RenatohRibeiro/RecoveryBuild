#!/bin/bash
# Sync

wget https://raw.githubusercontent.com/RenatohRibeiro/RecoveryBuild/master/telegram
printf "Enter the bot token\nToken: "
read TOKEN

if [ -z $TOKEN ]; then
echo -e "Enter a bot token"
exit 0
fi
sed -i "s/enzomacaco/$TOKEN/" telegram.sh

printf "Enter the chat ID you want the bot to send the build information to\nID: "
read ID

if [ -z $enso ]; then
echo -e "Enter the chat ID you want the bot to send the build information to"
exit 0
fi
sed -i "s/enso/$ID/" telegram.sh

sudo install telegram /usr/bin
