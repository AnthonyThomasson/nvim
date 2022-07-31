set nocompatible              " be iMproved, required
filetype off                  " required

set relativenumber

syntax on
set t_Co=256
set cursorline

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'mhinz/vim-startify'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:startify_custom_header =
       \ startify#pad(split(system("figlet -w 100 \"Tony's VIM\""), '\n'))

" NERDTree Config
nmap <S-Tab> :NERDTreeToggle<CR>

" quick escape from terminal
tnoremap <Esc> <C-\><C-n>
