MY_PATH=$(dirname "$0")

sh $MY_PATH/utilities/vundle-install.sh
sh $MY_PATH/utilities/brew-installs.sh

cd ~/.vim/bundle/coc.nvim
yarn upgrade
yarn install
yarn build
