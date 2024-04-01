#!/bin/zsh

# Define an associative array to store links (keyword => link)
declare -A links

# Add your link entries here (replace with your keywords and links)
links["news"]="https://news.google.com"
links["wikipedia"]="https://www.wikipedia.org"
links["youtube"]="https://www.youtube.com"

echo "${!links[@]}"
exit

# Get the selected keyword using fzf
keyword=$(echo "${!links[@]}" | fzf)

# Check if a keyword was selected
if [[ -n "$keyword" ]]; then
  # Get the associated link from the array
  link=${links["$keyword"]}

  # Open the link in Chrome
  if [[ $(command -v google-chrome) ]]; then
    google-chrome "$link"
  else
    echo "WARNING: 'google-chrome' command not found. Using default browser."
    xdg-open "$link"
  fi
else
  echo "No keyword selected."
fi
