#!/bin/zsh

# Define the associative array
declare -A urls=(
  google "http://www.google.com"
  youtube "http://www.youtube.com"
  news "http://news.google.com"
  trello "http://trello.com"
)

# Get the keys of the associative array and pipe them to fzf
selected_key=$(printf "%s\n" ${(k)urls} | fzf --prompt="Select a key: ")

# Print the selected key
echo "Selected key: $selected_key"

echo "Selected Site: $urls[$selected_key]"


open -a 'Google Chrome' "$urls[$selected_key]"