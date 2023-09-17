MY_PATH=$(dirname "$0")

ln -s $PWD $HOME/.config

sh $MY_PATH/setup/vundle-install.sh
sh $MY_PATH/setup/brew-installs.sh

cd ~/.vim/bundle/coc.nvim
npm upgrade
npm install
npm run build