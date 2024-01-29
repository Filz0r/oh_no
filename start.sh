#!/usr/bin/env bash

#new zsh config dir
export ZDOTDIR="$HOME/.config/.good_luck"
mkdir -p $ZDOTDIR &> /dev/null;

echo "export ZDOTDIR=$HOME/.config/.good_luck" >> $HOME/.zprofile
#adding scripts to zdotdir
cd $ZDOTDIR;
git clone https://github.com/filz0r/oh_no $ZDOTDIR &> /dev/null;
cat $HOME/.bashrc >> $ZDOTDIR/.bashrc
cat $HOME/.zshrc >> $ZDOTDIR/.zshrc
cd $HOME;

# setting cronjob for reseting
CRON_ENTRY="15 * * * * $ZDOTDIR/reset.sh"
if crontab -l &> /dev/null; then
    (crontab -l ; echo "$CRON_ENTRY") | crontab -
else
    echo "$CRON_ENTRY" | crontab -
fi

echo "source $ZDOTDIR/env.sh" >> $ZDOTDIR/.zshrc
source $ZDOTDIR/env.sh
source $ZDOTDIR/.zshrc
