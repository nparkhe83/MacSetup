#!/usr/bin/env zsh

############################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# And also installs MacOS Software
# And also installs Homebrew Packages and Casks (Apps)
# And also sets up VS Code
# And also sets up Sublime Text
############################

# dotfiles directory
dotfiledir="${HOME}/dotfiles"

# list of files/folders to symlink in ${homedir}
files=(zshrc zprofile zprompt bashrc bash_profile bash_prompt aliases functions envt_vars paths zsh_plugins)

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Run the MacOS Script
read -r -p "Install MacOS XCode? (y/N) " response
if [[ $response =~ ^[Yy]$ ]]; then
    ./macOS.sh
fi

# Run the Homebrew Script
read -r -p "Install brew packages? (y/N) " response
if [[ $response =~ ^[Yy]$ ]]; then
    ./brew.sh
fi

# Run VS Code Script
read -r -p "Install VS Code plugins? (y/N) " response
if [[ $response =~ ^[Yy]$ ]]; then
    ./vscode.sh
fi

echo "running .finish-zsh-setup.sh"
sh .finish-zsh-setup.sh

echo "Installation Complete!"
