#!/bin/bash

# see this -> https://github.com/johnf9896/dotfiles/blob/master/install.sh

# install chrome ***********************************
echo "*** Intsalling google chrome ***"
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt update && sudo apt install google-chrome-stable
sudo apt update && sudo apt install google-chrome-beta
echo "*** open google chrome ***"
google-chrome-stable

# Install necesary things ***************************
sudo apt install tmux
sudo apt install vim
sudo apt install curl
sudo apt install git

# Install necesary things ***************************
# docker -> https://docs.docker.com/install/linux/docker-ce/ubuntu/
# compose -> https://docs.docker.com/compose/install/

# add tmux config in ~/.tmux.conf
set-option -g prefix2 C-a
set-option -g mouse on
bind -n C-k send-keys -R \; clear-history
bind-key -n M-D split-window
bind-key -n M-d split-window -h
bind-key -n M-k clear-history
set -g history-limit 99999
set -s escape-time 0
setw -g mode-keys vi
set-option -ga terminal-overrides ",xterm-256color:Tc"
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

# add vim config in ~/.vimrc ************************
echo "*** Go ~/.vimrc ***"

# syntax on
# set expandtab
# set tabstop=2
# set shiftwidth=2
# set nowrap
# set number
# set list
# set listchars=eol:·
# set autoindent
# "set mouse=a
# set fillchars+=vert:\
# set clipboard=unnamed
# set encoding=utf-8
#
# let g:airline_powerline_fonts=1
# autocmd BufWritePre <buffer> :%s/\s\+$//e
#
# let mapleader=","
# let taboo_tab_format=" %N. %f%m "
#
# " Taboo
# set sessionoptions+=tabpages,globals
# cabbrev tr TabooRename
#
# " tab switching shortcuts
# noremap <leader>1 1gt
# noremap <leader>2 2gt
# noremap <leader>3 3gt
# noremap <leader>4 4gt
# noremap <leader>5 5gt
# noremap <leader>6 6gt
# noremap <leader>7 7gt
# noremap <leader>8 8gt
# noremap <leader>9 9gt
# noremap <leader>0 :tablast<cr>
#
# map <C-n> :NERDTreeToggle<CR>
# map <C-y> <Plug>(easymotion-s)
#
# call plug#begin('~/.vim/plugged')
# Plug 'scrooloose/nerdtree'
# Plug 'ctrlpvim/ctrlp.vim'
# Plug 'tpope/vim-surround'
# Plug 'easymotion/vim-easymotion'
# Plug 'elixir-lang/vim-elixir'
# Plug 'slashmili/alchemist.vim'
# Plug 'vim-airline/vim-airline'
# Plug 'powerman/vim-plugin-AnsiEsc'
# Plug 'tpope/vim-fugitive'
# Plug 'airblade/vim-gitgutter'
# Plug 'gcmt/taboo.vim'
# Plug 'dracula/vim'
#
# Plug 'MarcWeber/vim-addon-mw-utils'
# Plug 'tomtom/tlib_vim'
# Plug 'garbas/vim-snipmate'
# Plug 'honza/vim-snippets'
# call plug#end()
#
# " color dracula
# "if has("termguicolors")
# "  set termguicolors
# "endif

# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# :PlugInstall!


# add vim config in ~/.gitconfig ***************************
echo "*** Go ~/.gitconfig***"

# [alias]
#   st   = status -sb
#   br   = branch
#   d    = diff HEAD
#   co   = checkout
#   ci   = commit
#   df   = diff
#   dc   = diff --cached
#   lg   = log -p
#   lol  = log --graph --decorate --pretty=oneline --abbrev-commit
#   lola = log --graph --decorate --pretty=oneline --abbrev-commit --all
#   ls   = ls-files
# # Show files ignored by git:
#   ign  = ls-files -o -i --exclude-standard
#   rmb = branch --merged | ack jvargas | xargs -n 1 git branch -d
#   reco = !git checkout master && git pull && git checkout - && git rebase master
# [core]
#   excludesfile = ~/.gitignore
#   editor = vim
# [user]
#   name = UserName
#   email = email@gmail.com

# update colors of terminal with solarized ******************************
sudo apt-get install dconf-cli
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh

# instal silversearcher-ag
sudo apt-get install silversearcher-ag

# crate folders ******************************
mkdir ~/Repos/

# install asdf ******************************

# install flameshot *************************
# https://ubunlog.com/flameshot-herramienta-capturas-pantalla/
#sudo dpkg -i flameshot_0.5.0_amd64.deb
