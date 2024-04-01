#!/bin/zsh

#############################################################
#############################################################
##                                                         ##
## This script                                             ##
##  - Creates Symlinks to Shell configurations             ##
##  - Installs MacOS XCode & Sets Mac Configurations       ##
##  - Installs Homebrew packages & Casks                   ##
##  - Installs VSCode and installs its plugins             ##
##                                                         ##
#############################################################
#############################################################

# Run the MacOS Script to install git
# Also sets Scroll direction to traditional from Natural
./macOS.sh

# dotfiles directory
dotfilesdir="${HOME}/dotfiles"

# Download git repo if it does not exist
if [ ! -d $dotfilesdir ]; then
    cd ~
    git clone https://github.com/nparkhe83/dotfiles.git
fi

# change to the dotfiles directory
echo "Changing to the ${dotfilesdir} directory"
cd "${dotfilesdir}" || exit

# list of files/folders to symlink in ${homedir}
files=(zshrc zprofile zprompt bashrc bash_profile bash_prompt aliases functions envt_vars paths zsh_plugins)

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfilesdir}/.${file}" "${HOME}/.${file}"
done

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
