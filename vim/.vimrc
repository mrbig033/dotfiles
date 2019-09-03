" {{{ vim settings
set backup
set nu rnu
set nowrap
set backup
set nu rnu
set hidden
set nowrap
set nolist
set notitle
set showcmd
set gdefault
set modeline
set undofile
set wildmenu
set autoread
set ttimeout
set tabstop=8
set expandtab
set linebreak
set showmatch
set notimeout
set linebreak
set smartcase
set incsearch
set lazyredraw
set autoindent
set noswapfile
set splitbelow
set splitright
set shiftround
set cursorline
set guioptions=
set matchtime=3
set shiftwidth=4
set textwidth=79
set history=1000
set autowriteall
set showbreak =.
set softtabstop=4
set synmaxcol=200
set regexpengine=1
set conceallevel=3
set ttimeoutlen=10
" colorscheme badwolf
set updatetime=1000
set undolevels=50000
set undoreload=50000
set virtualedit=block
set display+=lastline
set undodir=~/.vim/.undo
set wildmode=list:longest
set shortmess=aoOtIsTWAqF
set backupdir=~/.vim/.backup
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set clipboard+=unnamed,unnamedplus
set omnifunc=syntaxcomplete#Complete
highlight EndOfBuffer ctermfg=black ctermbg=black
""}}}"}}}
"{{{ mappings
" folds
nnoremap <silent> <tab> :silent execute "normal! za"<cr>
" mark whole buffer
nnoremap <c-x>h gg<s-v>G

nnoremap ! :qa!<cr>
nnoremap Q :wqa!<cr>
nnoremap <space>q :bunload<cr>

" increase / decrease number
nnoremap <c-s-a> <c-a>
vnoremap <c-s-a> <c-a>
nnoremap <c-s-x> <c-x>
vnoremap <c-s-x> <c-x>

nnoremap ! :qa!<cr>
nnoremap q :wqa!<cr>
nnoremap <space>q :bunload<cr>
nnoremap go o<esc>
nnoremap gi o<esc>
nnoremap <m-space> :s/\s\+/ /g<cr>w:echo ""<cr>
" {{{ windows

" nnoremap <silent> <m-h> <c-w>h
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k

nnoremap <silent> <space>9 :only<cr>
nnoremap <silent> <space>0 :quit<cr>

nnoremap <silent> <space>k :split<cr><c-w>
nnoremap <silent> <space>j :split<cr>
nnoremap <silent> <space>h :vsplit<cr><c-w>w
nnoremap <silent> <space>l :vsplit<cr>

nnoremap <silent> <space>K :botright split<cr><c-w>
nnoremap <silent> <space>J :botright split<cr>
nnoremap <silent> <space>H :botright vsplit<cr><c-w>w
nnoremap <silent> <space>L :botright vsplit<cr>

" RESIZE WINDOWS
" <c-w>=    balance windows
" ctrl-w +  increase height of current window by 1 line
" ctrl-w -  decrease height of current window by 1 line
" ctrl-w _  maximise height of current window
" ctrl-w |  maximise width of current window

" MOVE WINDOWS
" ctrl-w r  rotate all windows
" ctrl-w x  exchange current window with its neighbour
" ctrl-w H  move current window to far left
" ctrl-w J  move current window to bottom
" ctrl-w K  move current window to top
" ctrl-w L  move current window to far right

" }}}
" Save when leaving insert
" inoremap <silent> <esc> <c-o>:silent w!<cr><esc>
" Help Single Window
nnoremap <c-x>k :only<cr>

nnoremap <silent> <esc> :silent! wa!<cr>
nnoremap ; :

" }}}
" {{{ emacs like
inoremap <c-k> <esc>D

" undo
inoremap <c-_> <c-o>u

set display+=lastline
set laststatus=2
hi StatusLine ctermbg=white ctermfg=DarkRed
set statusline=\ %f\ %y"
set statusline+=\ %M
" up and down line
inoremap <c-a> <c-o>0
inoremap <c-e> <c-o>g_
inoremap <c-n> <c-o>j
inoremap <c-p> <c-o>k
inoremap <c-f> <c-o>l
inoremap <c-b> <c-o>h
nnoremap <silent> ge g_
nnoremap <silent> gr vg_
nnoremap <c-s-j> ddjP
nnoremap <c-s-k> ddkP
nnoremap <c-x><c-c> :qa!<cr>
" }}}
" unmaps {{{
nnoremap <c-c><c-c><c-c> :!sudo poweroff<cr>
" nnoremap : <nop>
" cmap q :!clear && echo "COOOL"<cr>
" }}}
" {{{ functions
" }}}}
" {{{ abbrevs
cabbrev s! silent wa!<bar>silent so %
cabbrev sthis! silent wa!<bar>silent so %
cabbrev p! let @+ = expand("%:p") <bar> echo "path yanked"
cabbrev c! source ~/.vimrc <bar> PlugClean
cabbrev path! let @+ = expand("%:p") <bar> echo "path yanked"
" }}}
