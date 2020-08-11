I use pathogen for vim bundles.

https://github.com/tpope/vim-pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/dense-analysis/ale.git
git clone https://github.com/tpope/vim-commentary.git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/sheerun/vim-polyglot.git
```

For all plugins, simply go to the repos and clone to the ~/.vim/bundle directory

Plugins I use:

Ale (linter)

https://github.com/dense-analysis/ale

Commentary (quick commenting)

https://github.com/tpope/vim-commentary

ctrlp.vim (fuzzy finder, may replace with fzf)

https://github.com/kien/ctrlp.vim

fzf.vim (fuzzy finder, ostensibly faster and more customizable than ctrlp)

Requirement: fzf

https://github.com/junegunn/fzf

https://github.com/junegunn/fzf.vim

gruvbox (color scheme)

https://github.com/morhetz/gruvbox

surround (commands for surrounding parenthesis)

https://github.com/tpope/vim-surround

vim-fugitive (Git wrapper)

https://github.com/tpope/vim-fugitive

vim-gutentags (maintains ctags)

Requirements: ctags

https://packagecontrol.io/packages/CTags

https://github.com/ludovicchabant/vim-gutentags

vim-javascript (syntax highlighting for javascript)

https://github.com/pangloss/vim-javascript

vim-polyglot (syntax highlighting for many languages)

https://github.com/sheerun/vim-polyglot
