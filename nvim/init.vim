" {{{ source
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/mappings.vim
so ~/.config/nvim/abbrevs.vim
" }}}
" {{{ options
" " {{{ basic
" Update term title but restore old title after leaving Vim
set notitle
" " {{{ tabulation
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
" }}}
set backup
set nu rnu
set hidden
set showcmd
set gdefault
set modeline
set undofile
set wildmenu
set autoread
au FocusGained * :checktime
set showmatch
set notimeout
set ttimeout
set autochdir
set lazyredraw
set autoindent
set noshowmode
set noswapfile
set splitbelow
set splitright
set shiftround
set cursorline
set guioptions=
set matchtime=3
set nocompatible
set cedit=\<c-y>
set history=1000
set autowriteall
set showbreak =.
set synmaxcol=200
set regexpengine=1
set conceallevel=3
set updatetime=1000
set ttimeoutlen=10
set foldlevelstart=0
set undolevels=50000
set undoreload=50000
set virtualedit=block
set foldmethod=marker
set inccommand=nosplit
set wildmode=list:longest
set shortmess=aoOtIsTWAqF
set clipboard+=unnamed,unnamedplus

set omnifunc=syntaxcomplete#Complete
set undodir=~/.config/nvim/.undodir
set backupdir=~/.config/nvim/.backupdir
set backspace=indent,eol,start

syntax on
filetype plugin on
colorscheme badwolf
syntax sync minlines=256
filetype plugin indent on
let g:python_host_prog ='/usr/bin/python2.7'
" let g:python3_host_prog ='/usr/local/bin/python3'
" hide ugly tidles
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
" }}}
" {{{ formatting
set nowrap
set nolist
set mouse=a
set linebreak
set display+=lastline
" Disable annoying auto comment on new line:
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
""}}}
" {{{ searching and movement
set hlsearch
set incsearch
set showmatch
" set smartcase
set ignorecase
""}}}"}}}
" {{{ status
" set laststatus=2
" set statusline=\ %f\ %y"
" set statusline+=\ %M
" hi StatusLine ctermbg=black ctermfg=Blue
" }}}
" {{{ functions
" {{{ eatchar
func! Eatchar(pat)
	let c = nr2char(getchar(0))
	return (c =~ a:pat) ? '' : c
endfunc
iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
" }}}
" {{{ cursor position
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif
" }}}
" {{{ autosave
" Autosave only when there is something to save. Always saving makes build
" watchers crazy
function! SaveIfUnsaved()
    if &modified
        :silent! w
    endif
endfunction
au FocusLost,BufLeave * :call SaveIfUnsaved()
" Read the file on focus/buffer enter
au FocusGained,BufEnter * :silent! !
" }}}
" {{{ goyo
function! s:goyo_enter()
  set showtabline=0
endfunction
function! s:goyo_leave()
  " hi statusline ctermbg=black
  set showtabline=2
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
let g:goyo_width = 95
let g:goyo_height = 90
let g:goyo_linenr = 1
" }}}
" }}}
"" vim: nowrap
