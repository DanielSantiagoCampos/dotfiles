syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set nowrap
set number
set list
set listchars=eol:·
set autoindent
"set mouse=a
set fillchars+=vert:\
set clipboard=unnamed
set encoding=utf-8

let g:airline_powerline_fonts=1
autocmd BufWritePre <buffer> :%s/\s\+$//e

let mapleader=","
let taboo_tab_format=" %N. %f%m "

" Taboo
set sessionoptions+=tabpages,globals
cabbrev tr TabooRename

" tab switching shortcuts
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

map <C-n> :NERDTreeToggle<CR>
map <C-y> <Plug>(easymotion-s)

call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-surround'
  Plug 'easymotion/vim-easymotion'
  Plug 'elixir-lang/vim-elixir'
  Plug 'slashmili/alchemist.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'gcmt/taboo.vim'
  Plug 'dracula/vim'

  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  Plug 'lifepillar/vim-solarized8'
 call plug#end()
