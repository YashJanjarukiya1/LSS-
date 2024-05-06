#!/bin/bash

read -p "Enter your message: " message

echo "$message" > /tmp/email_message.txt

read -p "Enter recipient's email address: " recipient

mail -s "Message from Shell Script" "$recipient" < /tmp/email_message.txt

rm /tmp/email_message.txt