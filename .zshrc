# ############################
# Make zsh none case sensetive
# ############################
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit

# ###################################
# Check branch change on each command
# ###################################
precmd() {
    branch_name="$(command git symbolic-ref --short HEAD 2> /dev/null)"
    [ -n "$branch_name" ] && PS1="%F{226}%~%f %F{203}ᛋ $branch_name%f " || PS1="%F{226}%~%f "
}