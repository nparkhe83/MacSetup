#!/usr/bin zsh

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

xcode-select --install

# Set scroll as traditional instead of natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false && killall Finder
