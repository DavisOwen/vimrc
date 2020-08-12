#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/dense-analysis/ale.git
git clone https://github.com/tpope/vim-commentary.git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/ludovicchabant/vim-gutentags.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/sheerun/vim-polyglot.git
sudo apt-get install ctags
~/.fzf/install
