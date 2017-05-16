#!/usr/bin/env bash
#
# Scripts to run as user vagrant

echo running common.sh
echo ~
mkdir ~/github
git clone https://github.com/jones77/scripts ~/github/scripts \
    || cd ~/github/scripts && git pull  # git clone failed, do git pull
source ~/github/scripts/dotfiles/shelllib.sh
ce Red    hello, world
ce Yellow hello, world
ce Green  hello, world
~/github/scripts/files.sh     # configure dotfiles
~/github/scripts/packages.sh  # configure basic packages
# if [[ ! -f ~/bin/dropboxd ]]
# then
#     curl -Ss -L "https://dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#     ln -s ~/.dropbox-dist/dropboxd ~/bin/dropboxd || echo "but that's ok"
# fi
