set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vcscommand.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chrisbra/csv.vim'
"text objects
Plugin 'textobj-user'
Plugin 'mattn/vim-textobj-url'
Plugin 'textobj-entire'
Plugin 'textobj-line'
Plugin 'vim-indent-object'
call vundle#end()
":source %
":PluginInstall / PluginUpdate

"Nerdtree setting - Ctrl-n to toggle
autocmd vimenter * NERDTree
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"NerdCommmenter
"Visual mode - c :toggle cc:comm cu:uncomm c$:comm_eol cs:block_comm cy:yank_and_comment
let g:NERDSpaceDelims = 0
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1

"airline
let g:airline#extensions#tabline#enabled = 1

"easymotion : \\w, \\s, etc...

"indent on
filetype plugin indent on

"basic settings
set ts=4
set sw=4
set number
set autoindent
set smartindent
set number
set ruler
set cursorline
set cursorcolumn
syntax enable
colorscheme koehler
