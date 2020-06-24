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

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

#Adding local scripts to the path
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin

neofetch --ascii_distro Arch_small | lolcat


