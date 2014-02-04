set nocompatible              " be iMproved
filetype off                  " required!

source ~/.vim/bundles.vim
source ~/.vim/utils.vim

" Color Theme
set t_Co=256
set background=dark
let g:lucius_no_term_bg=1
colorscheme lucius
LuciusDark


" Python

" tabs to 4 spaces
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Check python with flake8
let g:flake8_cmd='/usr/bin/flake8-python2'
let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['flake8']


" Util Snips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" Unite
nnoremap <C-f> :Unite file_rec<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
let g:unite_source_grep_recursive_opt=''
nnoremap <space>/ :Unite grep:.<cr>


" Airline
let g:airline_powerline_fonts = 1
set noshowmode " MODE, it's redundant with airline


" Tagbar
nnoremap <silent> <leader>t :TagbarToggle<CR>

" Misc

filetype plugin indent on

let NERDTreeHijackNetrw=1

set laststatus=2

set list
set listchars=trail:·
set listchars+=tab:»·

syntax on " Syntax highlighting

scriptencoding utf-8

set autoindent
set backspace=indent,eol,start

" Use , as <leader>
let mapleader = ","
let g:mapleader = ","

" Expand tabs
nnoremap <silent> <leader>e :call <SID>ExecAndRestore("%s/\t/ /g")<CR>
" Strip white spaces
nnoremap <silent> <leader>s :call <SID>ExecAndRestore('%s/\s\+$//e')<CR>

" Change directory the current file's
autocmd BufEnter * lcd %:p:h

" Tabs Nav
map <C-n> :tabnext<CR>
map <C-p> :tabprev<CR>

" Central Temp Files Directory
set undodir=~/.vim/tmp/undo/
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swap/

" Enable Backups
set backup

" Restore last cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
