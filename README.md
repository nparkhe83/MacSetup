# Development Environment Setup

This repository contains scripts and configuration files to set up a development environment for macOS. It's tailored for software development, focusing on a clean, minimal, and efficient setup.

The repository is forked from [Corey M Schafer's repo](https://github.com/CoreyMSchafer/dotfiles.git). 

## Overview

The setup includes automated scripts for installing essential software, configuring Bash and Zsh shells, and setting up Visual Studio Code editor.

## Important Note Before Installation

**WARNING:** The configurations and scripts in this repository are **HIGHLY PERSONALIZED** to my own preferences and workflows. If you decide to use them, please be aware that they will **MODIFY** your current system, potentially making some changes that are **IRREVERSIBLE** without a fresh installation of your operating system.

I have adapted [Corey's original repo](https://github.com/CoreyMSchafer/dotfiles.git) in the following manner:
 - removed custom prompt in favor of [P10k theme for zsh](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi1t96t6vGEAxXs2zQHHQ57DEAQFnoECBgQAQ&url=https%3A%2F%2Fgithub.com%2Fromkatv%2Fpowerlevel10k&usg=AOvVaw2DTvEkHaYatcc0a1K-qKkv&opi=89978449)
 - Removed Python configuration
 - Removed Sublime Text Editor
 - More plugins for VS Code editor.

While I have included a Makefile recipe to backup files wherever possible, I cannot guarantee that all files are backed up. The backup mechanism is designed to backup **SOME files**.

This repo is highly personalised to my requirements. If you want to do the same, I would suggest you fork [Corey's original repo](https://github.com/CoreyMSchafer/dotfiles.git)

If you choose to run these scripts, please do so with **EXTREME CAUTION**. It's recommended to review the scripts and understand the changes they will make to your system before proceeding.

By using these scripts, you acknowledge and accept the risk of potential data loss or system alteration. Proceed at your own risk.

## Getting Started

### Prerequisites

- macOS (The scripts are tailored for macOS)

### Installation

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/nparkhe83/MacSetup.git ~/MacSetup
   ```
2. Navigate to the `MacSetup` directory:
   ```sh
   cd ~/MacSetup
   ```
3. Run the installation script:
   ```sh
   ./install.sh
   ```

This script will:

- Create symlinks for dotfiles (`.bashrc`, `.zshrc`, etc.)
- Run macOS-specific configurations
- Install Homebrew packages and casks
- Configure Visual Studio Code

## Configuration Files

- `.bashrc` & `.zshrc`: Shell configuration files for Bash and Zsh.
- `.bash_prompt` & `.zprompt`: Custom prompt setup for Bash and Zsh.
- `.bash_profile`: Setting system-wide environment variables
- `.aliases`: Aliases for common commands. Some are personalized to my machines specifically (e.g. the 'yt' alias opening my YouTube Scripts')
- `settings/`: Directory containing editor settings for VSCode

- **Dotfiles**: Edit `.zprompt`, `.bash_prompt` to add or modify shell configurations.
- **VS Code**: Adjust settings in the `settings/` directory to change editor preferences and themes.

## License

This project is licensed under the MIT License - see the [LICENSE-MIT.txt](LICENSE-MIT.txt) file for details.

## Acknowledgments

- Forked from [Corey M Schafer's repo](https://github.com/CoreyMSchafer/dotfiles.git)
- Corey Schafer originally forked this from [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles)
- Thanks to all the open-source projects used in this setup.
