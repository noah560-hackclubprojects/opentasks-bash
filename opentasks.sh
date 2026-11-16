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
    echo "This is a placeholder."
fi
