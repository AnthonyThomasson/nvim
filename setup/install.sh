if [ ! -d "~/.vim/bundle/Vundle.vim" ]
then
	echo "Cloning Vundle..."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	echo "DONE"
fi
echo "Installing Modules..."
vim +PluginInstall +qall