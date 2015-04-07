call pathogen#infect()
set nocompatible
filetype on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" the package manager
Bundle 'gmarik/vundle'
" Automatically added close parenthesis(or whatever)
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'Lokaltog/vim-easymotion'  
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}    
Bundle 'sjl/gundo.vim'                         
Bundle 'tpope/vim-surround'                    
Bundle 'scrooloose/nerdtree'                    
"Bundle 'tpope/vim-fugitive'                    
"Bundle 'jmcantrell/vim-virtualenv'             
"Bundle 'mileszs/ack.vim'                       
"Bundle 'taglist.vim'                           
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'bling/vim-airline'
" Color schemes: solarized, zenburn & molokai/monokai
Bundle 'altercation/vim-colors-solarized'
Bundle 'jnurmine/Zenburn'
Bundle 'tomasr/molokai'
" vim-ledger plguin
Bundle 'ledger/vim-ledger'
" Gundo togle key
nnoremap <F4> :GundoToggle<CR>
" NERDTree toggle key
map <F3> : NERDTreeToggle<CR>
" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 0
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_html_jshint_conf = "$HOME/.jshintrc"
let g:syntastic_coffeescript_checkers = ["coffeelint"]
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_java_checkers = []
if has("unix")
	let g:syntastic_error_symbol = "█"
	let g:syntastic_style_error_symbol = ">"
	let g:syntastic_warning_symbol = "█"
	let g:syntastic_style_warning_symbol = ">"
else
	let g:syntastic_error_symbol = "X"
	let g:syntastic_style_error_symbol = ">"
	let g:syntastic_warning_symbol = "!"
	let g:syntastic_style_warning_symbol = ">"
endif

"java compile
" F9/F10 compile/run default file.
" F11/F12 compile/run alternate file.
map <F9> :set makeprg=javac\ %<CR>:make<CR>
map <F10> :!echo %\|awk -F. '{print $1}'\|xargs java<CR>
map <F11> :set makeprg=javac\ #<CR>:make<CR>
map <F12> :!echo #\|awk -F. '{print $1}'\|xargs java<CR>
map! <F9> <Esc>:set makeprg=javac\ %<CR>:make<CR>
map! <F10> <Esc>:!echo %\|awk -F. '{print $1}'\|xargs java<CR>
map! <F11> <Esc>set makeprg=javac\ #<CR>:make<CR>
map! <F12> <Esc>!echo #\|awk -F. '{print $1}'\|xargs java<CR>
" Tip: load a file into the default buffer, and its driver
" into the alternate buffer, then use F9/F12 to build/run.
" Note: # (alternate filename) isn't set until you :next to it!
" Tip2: You can make then run without hitting ENTER to continue. F9-F12
" With these you can cl/cn/cp (quickfix commands) to browse the errors
" after you compile it with :make
set makeprg=javac\ %
set errorformat=%A:%f:%l:\ %m,%-Z%p^,%-C%.%#
" If two files are loaded, switch to the alternate file, then back.
" That sets # (the alternate file).
if argc() == 2
  n
  e #
endif
" Airline
" set lazyredraw
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme             = 'powerlineish'
let g:airline_powerline_fonts = 1
" Indent
set autoindent
"set smartindent
set expandtab
set shiftwidth=2
set tabstop=2

" Searching
set incsearch
set ignorecase
set smartcase
set hlsearch
" Number on left side
set number
" Backspace fix
set backspace=indent,eol,start
set nowrap
set nocompatible
filetype plugin indent on
set showmode
set showmatch
syntax on 
set background=dark
"colorscheme molokai
call togglebg#map("<F5>")
let g:solarized_termcolors=256
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
