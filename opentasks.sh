#!/bin/bash

if [ -f ~/.opentasks.conf ]; then
    true
else
    echo "It seems you don't yet have OpenTasks CLI configured."
    read -r -p "Would you like to configure it? (y/N) " yn
    case "$yn" in
        n | N )
            exit
            ;;
        y | Y )
            true
            ;;
        *)
            echo "You need to type y or n. Exiting..."
            exit
            ;;
    esac
    cleanup_entries() {
        rm -f ~/opentasks.conf
        exit 1
    }
    trap cleanup_entries INT
    echo "Please enter your username for the server:"
    read -r username
    echo "$username" > ~/opentasks.conf
    echo "Please enter the path to your account's keyfile:"
    read -r keypath
    echo "$keypath" >> ~/opentasks.conf
fi
