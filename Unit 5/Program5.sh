#!/bin/bash

while true; do
    echo "Menu:"
    echo "a. Display troubleshooting details of network"
    echo "b. Kill a process"
    echo "c. View all mounts"
    echo "d. Display full format listing"
    echo "e. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        a)
            echo "Displaying troubleshooting details of network..."
            ;;
        b)
            read -p "Enter the process ID to kill: " process_id
            echo "Killing process with ID $process_id..."
            kill "$process_id"
            ;;
        c)
            echo "Viewing all mounts..."
            mount
            ;;
        d)
            echo "Displaying full format listing..."
            ls -l
            ;;
        e)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac
done