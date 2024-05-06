#!/bin/bash

friend_username="your_friend_username"

if who | grep -q "$friend_username"; then
    echo "Your friend is currently logged in. Sending message to their terminal."
    echo "Hey $friend_username, how about dinner tonight?" > "/dev/pts/$(who | grep "$friend_username" | awk '{print $2}')"
else
    echo "Your friend is not currently logged in. Sending email about dinner proposal."
    echo "Hey $friend_username, how about dinner tonight?" | mail -s "Dinner Proposal" "your_friend_email@example.com"
fi