#!/bin/bash

curl -s -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
mv ~/.bashrc ~/.bashrc_old &> /dev/null
mv ~/.git ~/.git_old &> /dev/null
mv ~/.gitconfig ~/.gitconfig_old &> /dev/null
mv ~/.tmux ~/.tmux_old &> /dev/null
mv ~/.tmux.conf ~/.tmux.conf_old &> /dev/null
mv ~/.vim ~/.vim_old &> /dev/null
mv ~/.viminfo ~/.viminfo_old &> /dev/null
mv ~/.vimrc ~/.vimrc_old &> /dev/null

cp -R .bashrc ~/ &> /dev/null
cp -R .git ~/ &> /dev/null
cp -R .gitconfig ~/ &> /dev/null
cp -R .tmux ~/ &> /dev/null
cp -R .tmux.conf ~/ &> /dev/null
cp -R .vim ~/ &> /dev/null
cp -R .viminfo ~/ &> /dev/null
cp -R .vimrc ~/ &> /dev/null

which node &> /dev/null

if [ $? == 1 ]; then
	echo "Please install 'nodejs' for proper vim functionality."
fi

echo "Please run :PlugInstall and :PluginInstall in vim."
echo "Execute command 'source ~/.bashrc' and 'source ~/.git-prompt.sh'"

