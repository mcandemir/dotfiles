# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# fix Remnant characters when tab completing with ZSH
export LC_ALL="en_US.UTF-8"

# oh-my-zsh theme
ZSH_THEME="robbyrussell"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


# update reminder
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh


# alias exatree
alias el="exa --long --all --header --time-style=long-iso --git --icons --group-directories-first --group -b"
alias elt="exa --long --all --header --time-style=long-iso --git --icons --group-directories-first --group -b --tree";

# my aliases
alias conf-alaccritty="nvim $HOME/.config/alacritty/alacritty.yml"
alias conf-zshrc="nvim $HOME/.zshrc"
alias conf-tmux="nvim $HOME/.tmux.conf"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/canarch/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/canarch/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/canarch/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/canarch/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Minikube - Kubernetes alias
# alias kubectl="minikube kubectl --"

# # istio
# export PATH="$PATH:/home/canarch/istio-1.15.3/bin"
#
# # krew
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

