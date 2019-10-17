"pathogen
execute pathogen#infect()

"turns on colors
let &t_Co=256

"sets numbers to left
set nu rnu
se mouse+=a

"sets backspace to 2 spaces
set bs=2

"remaps jj to escape in insert mode
inoremap jj <Esc>

"pathogen
execute pathogen#infect()

"highlighting and indenting
syntax on
filetype plugin indent on
colorscheme gruvbox

"linter
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let b:ale_fixers = {'python': ['autopep8']}

"ctags
let g:gutentags_define_advanced_commands=1

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard']

"statusline
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=\ %{gutentags#statusline()} "shows gutentag status

"directory explorer (Sex Vex)
let g:netrw_liststyle=3
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

"keymapping for inserting parentheses
inoremap (;; (<CR>);<C-c>O
inoremap {;; {<CR>};<C-c>O
inoremap [;; [<CR>];<C-c>O
inoremap (;, (<CR>),<C-c>O
inoremap {;, {<CR>},<C-c>O
inoremap [;, [<CR>],<C-c>O
inoremap (;<CR> (<CR>)<C-c>O
inoremap {;<CR> {<CR>}<C-c>O
inoremap [;<CR> [<CR>]<C-c>O

"changes directory in buffer
set autochdir

"fzf
set rtp+=/usr/local/opt/fzf

"autocompletes relative path of file
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')

function! s:append_dir_with_fzf(line)
  call fzf#run(fzf#wrap({
    \ 'options': ['--prompt', a:line.'> '],
    \ 'source': 'git ls-files $(git rev-parse --show-toplevel) | xargs -n 1 dirname | uniq',
    \ 'sink': {line -> feedkeys("\<esc>:".a:line.line, 'n')}}))
  return ''
endfunction

"autocompletes directories
cnoremap <expr> <c-x><c-d> <sid>append_dir_with_fzf(getcmdline())

"case insensitive regex search
set ignorecase
set smartcase
