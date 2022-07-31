VUNDEL_INSTALL_DIR="$HOME/.vim/bundle/Vundle.vim"

if [ ! -d "$VUNDEL_INSTALL_DIR" ]
then
	echo "Cloning Vundle..."
	git clone https://github.com/VundleVim/Vundle.vim.git $VUNDEL_INSTALL_DIR
	echo "DONE"
else
	echo "Vundle already installed"
fi
echo "Installing Modules..."
vim +PluginInstall +qall