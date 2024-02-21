#!/bin/bash
# ./set_header.sh

	# Set variables

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/whoami`" >> $HOME/.${SHELL##/bin/}rc
    echo "export USER" >> $HOME/.${SHELL##/bin/}rc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> $HOME/.${SHELL##/bin/}rc
    echo "export GROUP" >> $HOME/.${SHELL##/bin/}rc
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL="$USER@student.42.fr"" >> $HOME/.${SHELL##/bin/}rc
    echo "export MAIL" >> $HOME/.${SHELL##/bin/}rc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp plugin/stdheader.vim ~/.vim/plugin/

source $HOME/.${SHELL##/bin/}rc
