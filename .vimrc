set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'benmills/vimux'
Bundle 'ggreer/the_silver_searcher'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
Bundle 'benmills/vimux'
Bundle 'kchmck/vim-coffee-script'
Bundle 'udalov/kotlin-vim'

set hlsearch
set laststatus=2
set showcmd
set ruler
set backspace=2
set autoread
set viminfo=%,'50,\"100,:100,n~/.vim/.viminfo
set whichwrap=<,>,[,]
set wrap
set linebreak
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set ai
set number
set mouse=a
set hidden

set matchpairs+=<:>

let mapleader = ","
let g:C_MapLeader = ","

filetype plugin indent on
runtime ftplugin/man.vim
nmap K :Man <cword><CR>

syntax enable
set t_Co=256
set background=dark

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:ackprg = 'ag --nogroup --nocolor --column'

nmap <F8> :TagbarToggle<CR>

" Vimux Commands
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vr :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vs :VimuxInterruptRunner<CR>
map <Leader>vc :VimuxClearRunnerHistory<CR>

