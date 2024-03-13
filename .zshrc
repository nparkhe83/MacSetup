autoload -Uz colors && colors
setopt PROMPT_SUBST

# Load dotfiles:
for file in ~/.{zprompt,aliases,functions,envt_vars}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
