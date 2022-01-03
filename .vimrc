set nocompatible              " be iMproved, required
filetype off                  " required

" " disable bell
set novisualbell

if has('win32')
	" " Avoid mswin.vim making Ctrl-v act as paste
	noremap <C-V> <C-V>
endif

" " CTRL-w to split window
nnoremap <C-Tab> <C-w>w
nnoremap <C-S-Tab> <C-w>W

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

set scrolloff=8

nmap <silent> j gj
nmap <silent> k gk

" for command mode
nnoremap <S-Tab> <<
" " for insert mode
inoremap <S-Tab> <C-d>


nmap <silent> <C-p> <Plug>(pydocstring)
" " let g:pydocstring_templates_path = '/home/aoe/.vim/pydocstringtest.format'
let g:pydocstring_formatter = 'sphinx'

" " 
set listchars=tab:▸\ ,trail:·
set list
set foldmethod=indent

let NERDTreeMapOpenInTab='n'


" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

call plug#begin('~/.vim/plugged')
""Plug 'numirias/semshi'

Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-python'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
Plug 'apalmer1377/factorus'

" " Python indenting
Plug 'Vimjas/vim-python-pep8-indent'

" " Python flake8
Plug 'nvie/vim-flake8'
call plug#end()

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

Plugin 'davidhalter/jedi-vim'
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
" " python highlighting

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
" " autocmd vimenter * NERDTree
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
