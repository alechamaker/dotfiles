set nocompatible              " be iMproved, required
filetype off                  " required

" " disable bell
set visualbell

if has('win32')
	" " Avoid mswin.vim making Ctrl-v act as paste
	noremap <C-V> <C-V>
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
syntax on
set t_Co=256
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" "Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
"
" " NERD tree allows you to explore your filesystem and open files and
" directories.
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'Yggdroot/indentLine'

" " 
" " Pretty colored brackets
Plugin 'frazrepo/vim-rainbow'
Plugin 'xavierd/clang_complete'
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
let g:clang_library_path='/usr/lib64/libclang.so.3.8'
" " pretty theme
Plugin 'morhetz/gruvbox'
" "let g:gruvbox_contrast_dark = 'soft'
set nu
set colorcolumn=80

" Attempting to fix visual block bug
"nnoremap q <c-v> 

" " start nerdtree when vim starts up
autocmd vimenter * NERDTree
autocmd vimenter * colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='gruvbox'
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
" "
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
