""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Alex Shoaloak
"       https://shoaloak.tk/
" 
" Version:
"       1.0 - 2016-05-11 22:46
"
" Index:
"       -> General
"       -> Appearance
"       -> Text, tab and indent related
"       -> Searching
"       -> status line and ex
"       -> Miscellaneous
"       -> Mappings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable compatibility with vi
set nocompatible

" Enable file type detection based on file, also read plug-in and indent files
filetype plugin indent on

" Memory of ex commands
set history=200

" Enable mouse support
set mouse=a


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance and interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax, without overriding with default values (on)
syntax enable

" Enable line numbering
set number

" highlight columns > 80
let &colorcolumn=join(range(81,999),",")

"set background=dark "(dark | light)"
"colorscheme solarized
colorscheme desert

" No intro
set shortmess=I

" No error sounds
set noerrorbells

" No error flashes 
set novisualbell


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of \t character
set expandtab

" Specifies width \t character
set tabstop=4

" Specifies width of tab in spaces
set softtabstop=4

" Specifies space to move, for example  with < >
set shiftwidth=4

" Make auto completion disregard case (depends on ignorecase)
set infercase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set proper compilers for filetypes
au Filetype python set makeprg=python\ %
au Filetype sh set makeprg=source\ %

" Create backup directorys
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do not make a distinction between case
set ignorecase
" Unless the search contains capital letters
set smartcase
" highlight search pattern(s)
set hlsearch
" show search pattern during search
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => status line and ex
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use bash-like ex command auto completion
set wildmode=longest,list

" Awesome-O status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set ruler


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat all numerals as decimal, for use with increment / decrement
set nrformats=

" Cursor jumps briefly to matching brace when inserted
set showmatch

" Tenths of seconds that showmatch jumps to matching brace
set mat=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy active file directory expansion
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" clear highlight with <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Remap Up and Down to <C-p> and <C-n> for ex filter history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Mappings for list traversing TODO: replace using unimpaired?
nnoremap <silent> [b :bprevious <CR>
nnoremap <silent> ]b :bnext <CR>
nnoremap <silent> [B :bfirst <CR>
nnoremap <silent> ]B :blast <CR>

" Disable arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" Show number of matches
"nnoremap :%s///gn

" (Re)build ctags
nnoremap <F5> :!ctags -R<CR>

" Insert datetime
nnoremap <F9> m'A<C-R>=strftime('%Y-%m-%d %H:%M')<CR><Esc>``

" Plug-ins
" TODO: install new matchit using Vim-plug
runtime macros/matchit.vim

" fix the :&
nnoremap & :&&<CR>
xnoremap & :&&<CR>
