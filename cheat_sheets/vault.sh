#!/bin/bash

# Define the list of links
links=(
  "google http://google.com"
  "youtube.com http://youtube.com.com"
  "news http://news.google.com"
)

# Define an empty array to store the keywords
sites=()

# Iterate over each link
for link in "${links[@]}"; do
  # Extract the keyword before the space character
  site="${link%% *}"
  # Add the selected_site to the array
  sites+=("$site")
done

echo "hi"
echo $sites
exit

# Print the resulting list of keywords
# printf '%s\n' "${keywords[@]}" | fzf
selected_site=$(printf '%s\n' "${sites[@]}" | fzf)

echo "selected_site: $selected_site"
