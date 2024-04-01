source .zshrc
read -p "finished sourcing .zshrc"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
read -p "finished evaluating fzf"

# Enable atuin for command history management
eval "$(atuin init zsh)"
read -p "finished evaluating atuin"

source ~/powerlevel10k/powerlevel10k.zsh-theme
read -p "finished sourcing p10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
read -p "finished sourcing p10k"

# Set fzf to search for files
export FZF_DEFAULT_COMMAND='fd --type f'
