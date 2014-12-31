set nocompatible
filetype off

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Add your bundles here
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'benmills/vimux'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'kchmck/vim-coffee-script'
Bundle 'udalov/kotlin-vim'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
" Setting up Vundle - the vim plugin bundler end


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

