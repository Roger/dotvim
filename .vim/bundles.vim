set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

Plugin 'ConradIrwin/vim-bracketed-paste'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'majutsushi/tagbar'

Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-vinegar'

Plugin 'bling/vim-airline'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'

" Unite and deps
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'

" Syntax check
Plugin 'scrooloose/syntastic'

" Haxe
Plugin 'jdonaldson/vaxe'

" Python
"Plugin 'klen/python-mode'
Plugin 'lepture/vim-jinja'
Plugin 'elzr/vim-json'
Plugin 'jmcantrell/vim-virtualenv'

" Color Scheme
Plugin 'jonathanfilip/vim-lucius'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'

" React
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" DartLang
"Plugin 'rbtnn/dart-vim-plugin'

Plugin 'ivanov/vim-ipython'

call vundle#end()
