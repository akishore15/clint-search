#!/bin/bash

# Function to handle the search query
search() {
    local query="$1"
    while true; do
        sleep 3
        if [[ "$query" == *" "* ]]; then
            query="${query// /+}"
        fi
        echo "https://google.com/search?q=$query"
        sleep 3
    done
}

# Read user input
read -p "Search... " query

# Trap the keyboard interrupt (Ctrl+C) to exit gracefully
trap 'echo -e "\nSearch interrupted by user."; exit' SIGINT
search "$query"
google-chrome "https://google.com/search?q=$query"


