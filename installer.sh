#!/bin/bash

if [[ "$#" == "1" && "$1" == "-h" ]]; then
	echo "Usa: ./installer.sh BOT_TOKEN CHAT_ID"
	exit 1
fi

if [[ "$#" != "2" ]]; then
	echo "Numero de argumentos invalido"
	echo "Usa: ./installer.sh BOT_TOKEN CHAT_ID"
	exit 1
fi


cp BotDiscord.service /etc/systemd/system
chmod 777 /etc/systemd/system/BotDiscord.service

echo -e "#!/bin/bash\n\nBOT_TOKEN=$1\nCHAT_ID=$2\n" > /usr/bin/BotDiscord.sh
sed -n '6,14p' BotDiscord.sh >> /usr/bin/BotDiscord.sh
chmod 777 /usr/bin/BotDiscord.sh
cp post-HTTP.py /usr/bin
chmod 777 /usr/bin/post-HTTP.py

systemctl enable BotDiscord.service
systemctl start BotDiscord.service
systemctl daemon-reload

