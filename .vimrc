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
Plugin 'rking/ag.vim' " Source Coder search Plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yggdroot/indentline'
Plugin 'mbbill/undotree'
Plugin 'airblade/vim-gitgutter'
" Plugin 'junegunn/goyo.vim'
Plugin 'wincent/command-t'
" Plugin 'nathanaelkane/vim-indent-guides'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
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
nnoremap <leader>w :w!<cr>

" set completeopt-=preview
syntax on
set number
set cursorline
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
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
set lazyredraw          " redraw only when we need to.
nnoremap <LEADER>gd :YcmCompleter GoTo<CR>
nnoremap <LEADER>gr :YcmCompleter GoToReferences<CR>
nnoremap <LEADER>t :term<CR>
nnoremap Y y$
set wildmenu
set history=1000
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
" set lbr
" set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set listchars=tab:\|\ 
set list


set foldenable
set foldlevelstart=10 " open most folds by default
set foldminlines=10
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent
nnoremap <space> za



" inoremap jj <ESC>
" open ag.vim
nnoremap <leader>a :Ag<space>

set undofile
set undodir=~/.vim/undo/
set backup
set backupdir=~/.vim/backup/
set writebackup
set directory=~/.vim/swap/
" move vertically by visual line
" nnoremap j gj
nnoremap j gj
nnoremap k gk
" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
" Buffer navigation like Firefox.
nnoremap <C-b>   :bnext<CR>
inoremap <C-b>   <Esc>:bnext<CR>i
" Redraw vim screen
nnoremap <LEADER><l> <C-l>
" Window Split Switching
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guioptions-=L
    set guioptions-=r
    set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
    " set guitablabel=%N/\ %t\ %M
    " set t_Co=256
    " set guifont=*
    set anti guifont=Inconsolata-g\ for\ Powerline\ Medium\ 10
endif



let g:ycm_server_python_interpreter = '/usr/bin/python2' " change this according to the YcmRestartSerever Error
let g:ycm_python_binary_path = '/usr/local/bin/python3.6'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_goto_buffer_command = 'vertical-split'


" CtrlP settings
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#tab_nr_type = 2

" indentline settings
" Vim
let g:indentLine_char = '┆'






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
