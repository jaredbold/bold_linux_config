" .vimrc
" Jared Bold
" 1.22.2015
"
execute pathogen#infect()
filetype indent plugin on
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

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

let mapleader= ","

" Color column over 80 characters
autocmd BufWinEnter *.C,*.h let w:m1=matchadd('ErrorMsg', '\%>80v.\+',-1)

" Doxygen syntax
let g:load_doxygen_syntax=1

" Commands
" Filter
command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a
command! RemoveEolWhitepace :%s/\s\+$//

" Macro

set cursorline
" Syntax highlight template files
autocmd BufRead,BufNewFile *.T set filetype=cpp
" Syntax for .def files to XML
autocmd BufRead,BufNewFile *.def set filetype=xml
autocmd BufRead,BufNewFile *.ih set filetype=xml

" Airline Settings
let g:airline_theme='murmur'

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f

let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wundef -Wshadow -Wunreachable-code'
let g:syntastic_cpp_config_file = ".rtx_syntastic_includes"
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_include_dirs = ['/afs/awd.austin.ibm.com/proj/p3/cte/tools/fusion/vol1/releases/R80_0-noarch/src']

let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_cpplint_args='--verbose=3 --extension=C,h'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_debug = 0

let g:syntastic_xml_xmllint_quiet_messages = {"regex":"failed to load external entity"}

" Fugitive settings
set statusline+=%{fugitive#statusline()}
