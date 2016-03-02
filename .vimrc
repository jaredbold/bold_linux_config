" .vimrc
" Jared Bold
" 1.22.2015
"
execute pathogen#infect()
filetype indent plugin on
syntax on

set lazyredraw
set ttyfast
set synmaxcol=1000
"let loaded_matchparen = 1
set nocursorcolumn
set nocursorline
"set nowrap

set hidden
set wildmenu
set wrap

set t_Co=256

set showcmd
set hlsearch

set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent

set nostartofline
set ruler
set laststatus=2

set confirm
set visualbell
set noeb vb t_vb=

set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200

" Tab settings
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Color column over 80 characters
highlight ColorColumn ctermbg=yellow ctermfg=black
call matchadd('ColorColumn', '\%81v', 100)

" Doxygen syntax
let g:load_doxygen_syntax=1

" Macro
let @d = 'oif(){}koout() << simcycle << getName() << "::" << __FUNCTION++€kb€kb__ << ":"		<<<< endlh€kb;kkkk'
let @t = 'ofor(uint32 tid = 0; tic €kb€kbd < SMC_I€kbUtility::cMaxThreads; ++tid){}'

set cursorline
" Syntax highlight template files
autocmd BufRead,BufNewFile *.T set filetype=cpp

" Airline Settings
let g:airline_theme='murmur'

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 0
let g:syntastic_cpp_compiler_options = '-Wall -pipe'
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_config_file = "$p9/.rtx_syntastic_cpp_config"
