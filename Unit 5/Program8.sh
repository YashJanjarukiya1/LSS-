#!/bin/bash

while true; do
    echo "Menu:"
    echo "a. Display dynamic real-time view of running system"
    echo "b. Display full format list of processes"
    echo "c. List all mounted filesystems"
    echo "d. Display background and foreground processes"
    echo "e. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        a)
            echo "Displaying dynamic real-time view of running system..."
            ;;
        b)
            echo "Displaying full format list of processes..."
            ps aux
            ;;
        c)
            echo "Listing all mounted filesystems..."
            mount
            ;;
        d)
            echo "Displaying background and foreground processes..."
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