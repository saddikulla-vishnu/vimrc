set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


" execute pathogen#infect()

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1



" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","





" Let's save undo info!
" if !isdirectory($HOME."/.vim")
"     call mkdir($HOME."/.vim")
" endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo")
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap")
endif
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup")
endif





" Fast saving
nnoremap <leader>w :w<cr>

" set completeopt-=preview
syntax on
set number
set cursorline
" colorscheme slate
" colorscheme slate
colorscheme afterglow
set previewheight=10
set ignorecase
set smartcase
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <LEADER><ESC> :nohlsearch<CR>
set laststatus=2
set ruler
set path+=**
nnoremap <LEADER>gtd :YcmCompleter GoTo<CR>
nnoremap <LEADER>gtr :YcmCompleter GoToReferences<CR>
nnoremap Y y$
set wildmenu
set history=1000
" inoremap jj <ESC>


set undofile
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
" move vertically by visual line
nnoremap j gj
nnoremap k gk





" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    " set t_Co=256
    " set guitablabel=%M\ %t
endif



let g:ycm_python_binary_path = '/usr/local/bin/python3.6'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_goto_buffer_command = 'vertical-split'


" CtrlP settings
let g:ctrlp_cmd = 'CtrlPMixed'
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Advanced Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" try
"     set undodir=~/.vim/vim_runtime/temp_dirs/undodir
"     set undofile
" catch
" endtry

" Map auto complete of (, ", ', [
" inoremap $1 ()<esc>i
" inoremap $2 []<esc>i
" inoremap $3 {}<esc>i
" inoremap $4 {<esc>o}<esc>O
" inoremap $q ''<esc>i
" inoremap $e \""<esc>i






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
