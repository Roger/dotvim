" Don't use the powerline from arch package =/
let g:powerline_loaded = 1

set nocompatible              " be iMproved
filetype off                  " required!

if has('neovim')
  let s:python_host_init = 'python -c "import neovim; neovim.start_host()"'
  let &initpython = s:python_host_init
endif

source ~/.vim/bundles.vim
source ~/.vim/utils.vim

" Don't unload buffers when they are not displayed
set hidden

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
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'



" Tagbar
nnoremap <F7> :TagbarToggle<CR>

" Search
set ignorecase
set incsearch
set smartcase
set hlsearch
" Hide highlight
nmap <silent> <leader>n :silent :nohlsearch<CR>


" Misc

filetype plugin indent on

let NERDTreeHijackNetrw=1

set wildmode=longest:full,full
set wildmenu

set showmatch

set laststatus=2

"set list
"set listchars=trail:·
"set listchars+=tab:»·

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
function! ChgPath()
  " change window directory if exists
  if isdirectory(expand('%:p:h'))
    lcd %:p:h
  endif
endfunction
au BufEnter * call ChgPath()

" Tabs Nav
"map <C-n> :tabnext<CR>
"map <C-p> :tabprev<CR>
map <C-n> :bnext<CR>
map <C-p> :bprev<CR>

" Central Temp Files Directory
set undodir=~/.vim/tmp/undo/
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swap/

" Enable Backups
set backup

" Restore last cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" [YCM] remove preview window
set completeopt-=preview

" VAXE
let g:vaxe_lime_target="linux -neko -64"

map <F5> :Dispatch<CR>
autocmd FileType haxe map <F5> :exec "Dispatch build_lime " .vaxe_working_directory<CR>


" quit buffer
nmap <leader>q :bp <BAR> bd #<CR>
