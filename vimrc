set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Better file browser 
Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'wincent/command-t'
Plugin 'powerline/powerline'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub


" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NERDTree Configuration
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" SuperTab Configuration
let g:SuperTabDefaultCompletionType="context"

hi Pmenu ctermbg=238 gui=bold
hi PmenuSel ctermbg=red gui=bold

" Powerline Configuration
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set noshowmode
set encoding=utf-8

" Normal Configuration
syntax on

set nu
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set autoindent
set hlsearch
set noswapfile
set cursorline

