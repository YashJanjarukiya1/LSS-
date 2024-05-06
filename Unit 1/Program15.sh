#!/bin/bash

display_calendar_and_greeting() {
    clear
    cal
    hour=$(date +%H)
    if [ "$hour" -lt 12 ]; then
        greeting="Good Morning"
    elif [ "$hour" -lt 18 ]; then
        greeting="Good Afternoon"
    else
        greeting="Good Evening"
    fi
    echo "$greeting"
}

display_user_info() {
    echo "Username: $USER"
    echo "Home directory: $HOME"
}

display_terminal_info() {
    echo "Terminal name: $TERM"
    echo "Terminal type: $TERM_PROGRAM"
}

display_machine_name() {
    echo "Machine name: $(hostname)"
}

display_logged_in_users() {
    echo "Number of users logged in: $(who | wc -l)"
    echo "List of users logged in:"
    who
}

echo "Menu:"
echo "1. Display calendar and greeting"
echo "2. Display username and home directory"
echo "3. Display terminal name and type"
echo "4. Display machine name"
echo "5. Display number of users logged in and list of users"
echo "Enter your choice:"

read choice

case $choice in
    1) display_calendar_and_greeting ;;
    2) display_user_info ;;
    3) display_terminal_info ;;
    4) display_machine_name ;;
    5) display_logged_in_users ;;
    *) echo "Invalid choice" ;;
esac