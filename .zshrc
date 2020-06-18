# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jacob/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Adding aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"

PROMPT='%B%F{yellow}%~%f%b %# '
