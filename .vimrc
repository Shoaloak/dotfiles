" Shoaloak's Vimrc
" place cursor on word, type :h <C-r><C-w> to look up
"------------------------------------------------------------------------------"
" Disable compatibilty with vi
set nocompatible
" Enable filetype detection based on file, also read plugin and indent files
filetype plugin indent on

" Enable syntax, without overriding with default values (on)
syntax enable
" Enable line numbering
set number
" highlight columns > 80
let &colorcolumn=join(range(81,999),",")

execute pathogen#infect()
set background=dark "(dark | light)"
colorscheme monokai

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Do not make a distiction between case
set ignorecase
" Unless the search contains captital letters
set smartcase
" highlight search pattern(s)
set hlsearch
" show search pattern during search
set incsearch

" Treat all numerals as decimal
set nrformats=

" Specifies width \t character
set tabstop=4
" Specifies width of tab in spaces
set softtabstop=4
" Specifies space to move, for example  with < >
set shiftwidth=4
" Use spaces instead of \t character
set expandtab

" Use bash-like ex command autocompletion
set wildmode=longest,list

" Remap Up and Down to <C-p> and <C-n> for ex filter history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Mappings for list traversing
nnoremap <silent> [b :bprevious <CR>
nnoremap <silent> ]b :bnext <CR>
nnoremap <silent> [B :bfirst <CR>
nnoremap <silent> ]B :blast <CR>

" Easy active file dir expansion
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Up the memory of ex commands
set history=200

" Enable mouse support
set mouse=a

" Disable arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" plugins
runtime macros/matchit.vim

" clear highlight with <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" show number of matches
"nnoremap :%s///gn

" fix the :&
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" build ctags
nnoremap <f5> :!ctags -R<CR>

" infercase??
set infercase

" Radj zijn sheit
" set vb
set nobackup
"
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
" colorscheme zellner
"
" set smartcase
" set showmatch
" set mat=2
"
au Filetype python set makeprg=python\ %
au Filetype sh set makeprg=source\ %
"  END 

" No moar intro
set shortmess=I
