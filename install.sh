MY_PATH=$(dirname "$0")

ln -s $PWD $HOME/.config

sh $MY_PATH/setup/nvim-installs.sh
sh $MY_PATH/setup/vundle-install.sh


cd ~/.vim/bundle/coc.nvim
npm upgrade
npm install
npm run build