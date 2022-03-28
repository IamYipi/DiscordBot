#!/bin/bash

BOT_TOKEN=a87543rada78raw8a4ra1adw
CHAT_ID=12312321321231231233123

case "$1" in
	start)
		TEXT="Sistema-Iniciado:`date +%d/%m/%Y/%R`"
	 ;;
 	stop)
		TEXT="Sistema-Apagado:`date +%d/%m/%Y/%R`"
	 ;;
esac
python3 /usr/bin/post-HTTP.py $TEXT $BOT_TOKEN $CHAT_ID