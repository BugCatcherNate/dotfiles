set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline'
Plugin 'scrooloose/syntastic'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'valloric/youcompleteme'
Plugin 'morhetz/gruvbox'
Plugin 'chiel92/vim-autoformat'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" " `:help :Glaive` for usage.
" Plugin 'google/vim-glaive'
"
"
"



call vundle#end()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
filetype plugin indent on
filetype indent on
set laststatus=2
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
colorscheme gruvbox
set background=dark
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
