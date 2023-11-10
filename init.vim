call plug#begin()

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Rust Syntax Highlighting
Plug 'rust-lang/rust.vim'

" Color Scheme 

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()


" Color Scheme Configurations
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha "

" Rust Vim Config
syntax enable
filetype plugin indent on

" Telescope Mapping
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Basic Config
set number
set relativenumber
