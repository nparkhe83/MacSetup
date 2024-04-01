#!/usr/bin zsh

echo "\n\n\nXCode will begin installation. \nPlease confirm on popup"
echo "Installation will take 5-10 mins based on your internet connection"
echo "Press enter to continue..."
read

xcode-select --install

# Set scroll as traditional instead of natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false && killall Finder
