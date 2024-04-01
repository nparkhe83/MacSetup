autoload -Uz colors && colors
setopt PROMPT_SUBST

# enable vi mode
bindkey -v
set -o vi


# Load dotfiles:
for file in ~/.{zprompt,aliases,functions,envt_vars,paths,zsh_plugins}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

