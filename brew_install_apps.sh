#!/usr/bin/env zsh

# Define an array of packages to install using Homebrew.
packages=(
  "bash"
  "zsh"
  "git"
  "tree"
  "node"
  "volta"
  "neovim"
)
# Select packages to install
selected_packages=()

# Define an array of applications to install using Homebrew Cask.
apps=(
  "google-chrome"
  "firefox"
  "arc"
  "opera"
  "visual-studio-code"
  "vlc"
  "postman"
  "anki"
  "warp"
  "whatsapp"
  "microsoft-remote-desktop"
  "obsidian"
  "sourcetree"
  "docker"
  "google-cloud-sdk"
)
# Select apps to install
selected_apps=()

# Select packages that you want to install. These packages will be installed later
for package in "${packages[@]}"; do
  if brew list --formula | grep -q "^$package\$"; then
    echo "$package is already installed. Skipping..."
  else
    read -r -p "Install $package? (y/N) " response
    if [[ $response =~ ^[Yy]$ ]]; then
      # Add selected item to the selected_packages array
      selected_packages+=("$package")
    fi
  fi
done

# Select apps that you want to install. These apps will be installed later
for app in "${apps[@]}"; do
  if brew list --cask | grep -q "^$app\$"; then
    echo "$app is already installed. Skipping..."
  else
    read -r -p "Install $app? (y/N) " response
    if [[ $response =~ ^[Yy]$ ]]; then
      # Add selected app to the selected_apps array
      selected_apps+=("$app")
    fi
  fi
done

# Install selected packages
if [[ ${#selected_packages[@]} -gt 0 ]]; then
  echo "Installing selected packages"
  for package in "${selected_packages[@]}"; do
    echo "  * $package"
    brew install "$package"
  done
else
  echo "No packages selected for installation."
fi

# Install selected apps
if [[ ${#selected_apps[@]} -gt 0 ]]; then
  echo "Installing selected apps"
  for app in "${selected_apps[@]}"; do
    echo "Installing $app"
    brew install --cask "$app"
  done
else
  echo "No apps selected for installation."
fi
