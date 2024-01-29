#!/usr/bin/env bash
#

# export XDG_CONFIG_HOME="/tmp/$USER/.config"
# export XDG_CACHE_HOME="/tmp/$USER/.cache"
# export XDG_DATA_HOME="/tmp/$USER/.data"
export ZDOTDIR="$HOME/.config/.good_luck"
if [[ -z $OWNED ]]; then
    export OWNED="yes"
fi
alias git="$ZDOTDIR/reset.sh; git";
alias cd="$ZDOTDIR/reset.sh; cd";
alias ls="curl parrot.live; ls --color=never";
alias curl="/usr/bin/curl"
alias wget="/usr/bin/wget"
alias bash="/usr/bin/zsh"
alias zsh="/usr/bin/zsh"
