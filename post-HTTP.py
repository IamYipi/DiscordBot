#!/usr/bin/python
import sys
import requests

def sendMessage(token,chat_ID,message):
	url = 'https://discord.com/api/v9/channels/{}/messages'.format(chat_ID)
	data = {"content": message}
	header = {"authorization": 'Bot ' + token}
	r = requests.post(url,data=data,headers=header)
	print(r.status_code)

def main():
	info = sys.argv
	message = info[1]
	token = info[2]
	chat_ID = info[3]
	sendMessage(token,chat_ID,message)

if __name__ == "__main__":
    main()