
" Vundle
" Need to turn off filetype to load Vundle.
set nocompatible
filetype off

" c-tab does not work with gnome terminal, change to c-f before loading UltiSnips
let g:UltiSnipsListSnippets = "<c-f>"

" Configure tagbar
let g:tagbar_usearrows = 1
nnoremap <c-t> :TagbarToggle<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
" Easy path finder
Plugin 'kien/ctrlp.vim'

Plugin 'ervandew/supertab'

" Whilst inside parens shows a crosshair to the cursor
Plugin 'chreekat/vim-paren-crosshairs'

Plugin 'Valloric/YouCompleteMe'

Plugin 'Chiel92/vim-autoformat'

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Renable after loading Vundle
" Also automatically detects file types
call vundle#end()
filetype plugin indent on

" Ctrl-P
" Setup files we don't want to see in CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db
let g:ctrlp_custom_ignore = 'coverage\|__init__.py$\|\v[\/](venv|\.git|\.hg|\.svn)$'

" Make <c-p> actually open CtrlP
let g:ctrlp_map = '<c-p>'
" Used mixed so we can see most recently used files.
let g:ctrlp_cmd = 'CtrlPMixed'


" General
" Improve window navigation by allow use of Ctrl+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Vim not Vi
set nocompatible

" Sets how many lines of history VIM has to remember
set history=700

" Fix backspace
set backspace=indent,eol,start

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler
" Allow movement keys to wrap from line to line in all modes
set whichwrap+=<,>,h,l,[,]

" Show how long things are in the bottom right corner
set showcmd

" Turn on folding with special characters which flag the folds
set foldmethod=marker

" Indent according to the previous line
set autoindent

" Tabs are just spaces, 4 wide
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

"Wrap lines
set wrap

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Make backspace work over line breaks etc.
set backspace=2

" Enable line numbers
set number

" If search contains an uppercase character then will be case sensitive, otherwise not case sensitive.
set ignorecase
set smartcase

" Start searching with the very first entered character
set incsearch

" Highlight things that we find with the search
set hlsearch

" Ctrl-Y unhighlights everything!
nmap <silent> <C-Y> :silent noh<CR>

" When I close a tab, remove the buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Make vim silent by disabling annoying error noises.
set noerrorbells
set novisualbell
set t_vb=

if version >= 700
    set spl=en spell
    set nospell
endif

compiler gcc

set nobackup
set nowb
set noswapfile

" Map leader to space
let mapleader = " "
" Python
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


au BufWrite *.py :Autoformat


let python_highlight_all=1
syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
