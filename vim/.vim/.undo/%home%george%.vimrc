Vim�UnDo� |����'[yewg!�$�d�X�i�lY���]n">��   �                 $       $   $   $    ]�6    _�                    �       ����                                                                                                                                                                                                                                                                                                                                                             ]�c   
 �   �   �         �   �   �      5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]�r    �   �   �         5�_�         
          �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �          asda:w!   sdad:w!    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �         �   �   �      5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �        	asdasdasd5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �         5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �        COME!5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��     �   �   �        	asdasdasd5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �         5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        ]��    �   �   �        Come on!5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]��     �   �   �      5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]��     �   �   �      �   �   �      5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             ]��    �   �   �        "5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]�b     �                 " {{{ vim-plug   !call plug#begin('~/.vim/plugged')   Plug 'itchyny/lightline.vim'   Plug 'sjl/badwolf'   Plug 'tpope/vim-rsi'   Plug 'chrisbra/NrrwRgn'   Plug 'tpope/vim-repeat'   Plug 'tpope/vim-surround'   Plug 'jiangmiao/auto-pairs'   Plug 'reedes/vim-pencil'   Plug 'justinmk/vim-sneak'   Plug 'junegunn/goyo.vim'   Plug 'vim-utils/vim-husk'   Plug 'farmergreg/vim-lastplace'   call plug#end()   " }}}   " {{{ plug settings   " {{{ narrow   xmap <leader>n <Plug>NrrwrgnDo   " }}}   
" {{{ goyo   function! s:goyo_enter()     set showtabline=0   endfunction   function! s:goyo_leave()     hi statusline ctermbg=black     set showtabline=2   endfunction   5autocmd! User GoyoEnter nested call <SID>goyo_enter()   5autocmd! User GoyoLeave nested call <SID>goyo_leave()   let g:goyo_width = 95   let g:goyo_height = 90   let g:goyo_linenr = 1   " }}}   " {{{ sneak   nnoremap gf f   nnoremap gF F   map f <Plug>Sneak_s   map F <Plug>Sneak_S   let g:sneak#label = 1   let g:sneak#s_next = 1   -let g:sneak#target_labels = "asdfhjklqwertyu"   " }}}   " {{{ autopairs   (let g:AutoPairsShortcutToggle = '<c-c>p'   *let g:AutoPairsShortcutJump = '<c-x><c-x>'   " }}}   " {{{ pencil   let g:auto_save = 1   let g:auto_save_silent = 1   set nocompatible   filetype plugin on   augroup pencil   
  autocmd!   2  autocmd FileType markdown,mkd call pencil#init()   2  autocmd FileType text         call pencil#init()   augroup END   let g:pencil#textwidth = 79   " }}}   " {{{ lightline   set laststatus=2   " }}}   " }}}   " {{{ other settings   
set backup   
set nu rnu   
set nowrap   set linebreak   set textwidth=79   colorscheme badwolf   set foldmethod=marker   !set clipboard=unnamed,unnamedplus   1highlight EndOfBuffer ctermfg=black ctermbg=black   ," Disable annoying auto comment on new line:   P" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   " }}}   "{{{ mappings   let mapleader ="\<space>"   " folds   8nnoremap <silent> <tab> :silent execute "normal! za"<cr>   " mark whole buffer   nnoremap <c-x>h mzgg<s-v>g   vnoremap <esc> <esc>`z       nnoremap ! :qa!<cr>   nnoremap Q :wqa!<cr>   nnoremap <leader>q :bunload<cr>       " increase / decrease number   nnoremap <c-s-a> <c-a>   vnoremap <c-s-a> <c-a>   nnoremap <c-s-x> <c-x>   vnoremap <c-s-x> <c-x>   " kill line   inoremap <c-k> <c-o>D       " cursor signaling   *autocmd InsertEnter,InsertLeave * set cul!       " undo   inoremap <c-_> <c-o>u       " up and down line   inoremap <c-n> <c-o>j   inoremap <c-p> <c-o>k       1nnoremap <silent> <space>mg :Goyo<cr>:echo ""<cr>       nnoremap <silent> ge g_   nnoremap <silent> gr vg_       inoremap <c-f> <c-o>l       nnoremap ; :       nnoremap <c-s-j> ddjP   nnoremap <c-s-k> ddkP       nnoremap ! :qa!<cr>   nnoremap q :wqa!<cr>   nnoremap <leader>q :bunload<cr>   nnoremap go o<esc>   nnoremap gi o<esc>   7nnoremap <m-space> :s/\s\+/ /g<cr>w:noh<cr>:echo ""<cr>   " {{{ windows        " nnoremap <silent> <m-h> <c-w>h   3nnoremap <silent> <esc>h :noh<cr>:echo ""<cr><c-w>h   3nnoremap <silent> <esc>l :noh<cr>:echo ""<cr><c-w>l   nnoremap <silent> <esc>j <c-w>j   nnoremap <silent> <esc>k <c-w>k       $nnoremap <silent> <leader> :only<cr>   %nnoremap <silent> <leader>0 :quit<cr>       +nnoremap <silent> <leader>k :split<cr><c-w>   &nnoremap <silent> <leader>j :split<cr>   -nnoremap <silent> <leader>h :vsplit<cr><c-w>w   'nnoremap <silent> <leader>l :vsplit<cr>       4nnoremap <silent> <leader>K :botright split<cr><c-w>   /nnoremap <silent> <leader>J :botright split<cr>   6nnoremap <silent> <leader>H :botright vsplit<cr><c-w>w   0nnoremap <silent> <leader>L :botright vsplit<cr>       " RESIZE WINDOWS   " <c-w>=    balance windows   7" ctrl-w +  increase height of current window by 1 line   7" ctrl-w -  decrease height of current window by 1 line   -" ctrl-w _  maximise height of current window   ," ctrl-w |  maximise width of current window       " MOVE WINDOWS   " ctrl-w r  rotate all windows   6" ctrl-w x  exchange current window with its neighbour   +" ctrl-w H  move current window to far left   )" ctrl-w J  move current window to bottom   &" ctrl-w K  move current window to top   ," ctrl-w L  move current window to far right       " }}}   " Save when leaving insert   0inoremap <silent> <esc> <c-o>:silent w!<cr><esc>   " }}}   " {{{ abbrevs   %cabbrev s! silent wa!<bar>silent so %   )cabbrev sthis! silent wa!<bar>silent so %   :cabbrev p! let @+ = expand("%:p") <bar> echo "path yanked"   *cabbrev c! source ~/.vimrc <bar> PlugClean   =cabbrev path! let @+ = expand("%:p") <bar> echo "path yanked"   ,cabbrev i! source ~/.vimrc <bar> PlugInstall   .cabbrev clean! source ~/.vimrc <bar> PlugClean   2cabbrev install! source ~/.virmc <bar> PlugInstall   " }}}   " {{{ functions   " {{{ autosave   augroup myAutoSave!       autocmd!   !     au FocusLost * :silent wall!   augroup END   " }}}   " }}}}   "   "   "   " {{{ options   " " {{{ basic   ;" Update term title but restore old title after leaving Vim   set notitle   " " {{{ tabulation   set tabstop=8   set expandtab   set shiftwidth=4   set softtabstop=4   " }}}   
set backup   
set nu rnu   
set hidden   set showcmd   set gdefault   set modeline   set undofile   set wildmenu   set autoread       au FocusGained * :checktime   set showmatch   set notimeout   set ttimeout   set autochdir   set lazyredraw   set autoindent   set noshowmode   set noswapfile   set splitbelow   set splitright   set shiftround   set cursorline   set guioptions=   set matchtime=3   set nocompatible   set cedit=\<c-y>   set history=1000   set autowriteall   set showbreak =.   set synmaxcol=200   set regexpengine=1   set conceallevel=3   set updatetime=1000   set ttimeoutlen=10   set foldlevelstart=0   set undolevels=50000   set undoreload=50000   set virtualedit=block   set foldmethod=marker   set inccommand=nosplit   set wildmode=list:longest   set shortmess=aoOtIsTWAqF   "set clipboard+=unnamed,unnamedplus   vim   $set omnifunc=syntaxcomplete#Complete   #set undodir=~/.config/nvim/.undodir   'set backupdir=~/.config/nvim/.backupdir   set backspace=indent,eol,start   vim   	syntax on   filetype plugin on   colorscheme badwolf   syntax sync minlines=256   filetype plugin indent on   ,let g:python_host_prog ='/usr/bin/python2.7'   3" let g:python3_host_prog ='/usr/local/bin/python3'   " hide ugly tidles   7hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg   " }}}   " {{{ formatting   
set nowrap   
set nolist   set mouse=a   set linebreak   set display+=lastline   ," Disable annoying auto comment on new line:   P" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   ""}}}   " {{{ searching and movement   set smartcase   set hlsearch   set incsearch   set showmatch   " set ignorecase   	""}}}"}}}5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]�m     �   �   �      5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]�n     �   �   �      �   �   �      5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]�o    �   �   �         5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]�%     �                 " {{{ vim-plug   !call plug#begin('~/.vim/plugged')   Plug 'itchyny/lightline.vim'   Plug 'sjl/badwolf'   Plug 'tpope/vim-rsi'   Plug 'chrisbra/NrrwRgn'   Plug 'tpope/vim-repeat'   Plug 'tpope/vim-surround'   Plug 'jiangmiao/auto-pairs'   Plug 'reedes/vim-pencil'   Plug 'justinmk/vim-sneak'   Plug 'junegunn/goyo.vim'   Plug 'vim-utils/vim-husk'   Plug 'farmergreg/vim-lastplace'   call plug#end()   " }}}   " {{{ plug settings   " {{{ narrow   xmap <leader>n <Plug>NrrwrgnDo   " }}}   
" {{{ goyo   function! s:goyo_enter()     set showtabline=0   endfunction   function! s:goyo_leave()     hi statusline ctermbg=black     set showtabline=2   endfunction   5autocmd! User GoyoEnter nested call <SID>goyo_enter()   5autocmd! User GoyoLeave nested call <SID>goyo_leave()   let g:goyo_width = 95   let g:goyo_height = 90   let g:goyo_linenr = 1   " }}}   " {{{ sneak   nnoremap gf f   nnoremap gF F   map f <Plug>Sneak_s   map F <Plug>Sneak_S   let g:sneak#label = 1   let g:sneak#s_next = 1   -let g:sneak#target_labels = "asdfhjklqwertyu"   " }}}   " {{{ autopairs   (let g:AutoPairsShortcutToggle = '<c-c>p'   *let g:AutoPairsShortcutJump = '<c-x><c-x>'   " }}}   " {{{ pencil   let g:auto_save = 1   let g:auto_save_silent = 1   set nocompatible   filetype plugin on   augroup pencil   
  autocmd!   2  autocmd FileType markdown,mkd call pencil#init()   2  autocmd FileType text         call pencil#init()   augroup END   let g:pencil#textwidth = 79   " }}}   " {{{ lightline   set laststatus=2   " }}}   " }}}   " {{{ other settings   
set backup   
set nu rnu   
set nowrap   set linebreak   set textwidth=79   colorscheme badwolf   set foldmethod=marker   !set clipboard=unnamed,unnamedplus   1highlight EndOfBuffer ctermfg=black ctermbg=black   ," Disable annoying auto comment on new line:   P" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   " }}}   "{{{ mappings   let mapleader ="\<space>"   " folds   8nnoremap <silent> <tab> :silent execute "normal! za"<cr>   " mark whole buffer   nnoremap <c-x>h mzgg<s-v>g   vnoremap <esc> <esc>`z       nnoremap ! :qa!<cr>   nnoremap Q :wqa!<cr>   nnoremap <leader>q :bunload<cr>       " increase / decrease number   nnoremap <c-s-a> <c-a>   vnoremap <c-s-a> <c-a>   nnoremap <c-s-x> <c-x>   vnoremap <c-s-x> <c-x>   " kill line   inoremap <c-k> <c-o>D       " cursor signaling   *autocmd InsertEnter,InsertLeave * set cul!       " undo   inoremap <c-_> <c-o>u       " up and down line   inoremap <c-n> <c-o>j   inoremap <c-p> <c-o>k       1nnoremap <silent> <space>mg :Goyo<cr>:echo ""<cr>       nnoremap <silent> ge g_   nnoremap <silent> gr vg_       inoremap <c-f> <c-o>l       nnoremap ; :       nnoremap <c-s-j> ddjP   nnoremap <c-s-k> ddkP       nnoremap ! :qa!<cr>   nnoremap q :wqa!<cr>   nnoremap <leader>q :bunload<cr>   nnoremap go o<esc>   nnoremap gi o<esc>   7nnoremap <m-space> :s/\s\+/ /g<cr>w:noh<cr>:echo ""<cr>   " {{{ windows        " nnoremap <silent> <m-h> <c-w>h   3nnoremap <silent> <esc>h :noh<cr>:echo ""<cr><c-w>h   3nnoremap <silent> <esc>l :noh<cr>:echo ""<cr><c-w>l   nnoremap <silent> <esc>j <c-w>j   nnoremap <silent> <esc>k <c-w>k       $nnoremap <silent> <leader> :only<cr>   %nnoremap <silent> <leader>0 :quit<cr>       +nnoremap <silent> <leader>k :split<cr><c-w>   &nnoremap <silent> <leader>j :split<cr>   -nnoremap <silent> <leader>h :vsplit<cr><c-w>w   'nnoremap <silent> <leader>l :vsplit<cr>       4nnoremap <silent> <leader>K :botright split<cr><c-w>   /nnoremap <silent> <leader>J :botright split<cr>   6nnoremap <silent> <leader>H :botright vsplit<cr><c-w>w   0nnoremap <silent> <leader>L :botright vsplit<cr>       " RESIZE WINDOWS   " <c-w>=    balance windows   7" ctrl-w +  increase height of current window by 1 line   7" ctrl-w -  decrease height of current window by 1 line   -" ctrl-w _  maximise height of current window   ," ctrl-w |  maximise width of current window       " MOVE WINDOWS   " ctrl-w r  rotate all windows   6" ctrl-w x  exchange current window with its neighbour   +" ctrl-w H  move current window to far left   )" ctrl-w J  move current window to bottom   &" ctrl-w K  move current window to top   ," ctrl-w L  move current window to far right       " }}}   " Save when leaving insert   0inoremap <silent> <esc> <c-o>:silent w!<cr><esc>   " Help Single Window   nnoremap <c-k> K:only<cr>   " }}}   " {{{ abbrevs   %cabbrev s! silent wa!<bar>silent so %   )cabbrev sthis! silent wa!<bar>silent so %   :cabbrev p! let @+ = expand("%:p") <bar> echo "path yanked"   *cabbrev c! source ~/.vimrc <bar> PlugClean   =cabbrev path! let @+ = expand("%:p") <bar> echo "path yanked"   ,cabbrev i! source ~/.vimrc <bar> PlugInstall   .cabbrev clean! source ~/.vimrc <bar> PlugClean   2cabbrev install! source ~/.virmc <bar> PlugInstall   " }}}   " {{{ functions   " {{{ autosave   augroup myAutoSave!       autocmd!   !     au FocusLost * :silent wall!   augroup END   au FocusGained * :checktime   " }}}   " }}}}   "   "   "   " {{{ options   " " {{{ basic   ;" Update term title but restore old title after leaving Vim   set notitle   " " {{{ tabulation   set tabstop=8   set expandtab   set shiftwidth=4   set softtabstop=4   " }}}   
set backup   
set nu rnu   
set hidden   set showcmd   set gdefault   set modeline   set undofile   set wildmenu   set autoread   set showmatch   set notimeout   set ttimeout   set autochdir   set lazyredraw   set autoindent   set noshowmode   set noswapfile   set splitbelow   set splitright   set shiftround   set cursorline   set guioptions=   set matchtime=3   set nocompatible   set cedit=\<c-y>   set history=1000   set autowriteall   set showbreak =.   set synmaxcol=200   set regexpengine=1   set conceallevel=3   set updatetime=1000   set ttimeoutlen=10   set foldlevelstart=0   set undolevels=50000   set undoreload=50000   set virtualedit=block   set foldmethod=marker   set inccommand=nosplit   set wildmode=list:longest   set shortmess=aoOtIsTWAqF   "set clipboard+=unnamed,unnamedplus   vim   $set omnifunc=syntaxcomplete#Complete   #set undodir=~/.config/nvim/.undodir   'set backupdir=~/.config/nvim/.backupdir   set backspace=indent,eol,start   vim   	syntax on   filetype plugin on   colorscheme badwolf   syntax sync minlines=256   filetype plugin indent on   ,let g:python_host_prog ='/usr/bin/python2.7'   3" let g:python3_host_prog ='/usr/local/bin/python3'   " hide ugly tidles   7hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg   " }}}   " {{{ formatting   
set nowrap   
set nolist   set mouse=a   set linebreak   set display+=lastline   ," Disable annoying auto comment on new line:   P" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   ""}}}   " {{{ searching and movement   set smartcase   set hlsearch   set incsearch   set showmatch   " set ignorecase   	""}}}"}}}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]��     �                 " {{{ vim-plug   !call plug#begin('~/.vim/plugged')   Plug 'itchyny/lightline.vim'   Plug 'sjl/badwolf'   Plug 'tpope/vim-rsi'   Plug 'chrisbra/NrrwRgn'   Plug 'tpope/vim-repeat'   Plug 'tpope/vim-surround'   Plug 'jiangmiao/auto-pairs'   Plug 'reedes/vim-pencil'   Plug 'justinmk/vim-sneak'   Plug 'junegunn/goyo.vim'   Plug 'vim-utils/vim-husk'   Plug 'farmergreg/vim-lastplace'   call plug#end()   " }}}   " {{{ plug settings   " {{{ narrow   xmap <leader>n <Plug>NrrwrgnDo   " }}}   
" {{{ goyo   function! s:goyo_enter()     set showtabline=0   endfunction   function! s:goyo_leave()     hi statusline ctermbg=black     set showtabline=2   endfunction   5autocmd! User GoyoEnter nested call <SID>goyo_enter()   5autocmd! User GoyoLeave nested call <SID>goyo_leave()   let g:goyo_width = 95   let g:goyo_height = 90   let g:goyo_linenr = 1   " }}}   " {{{ sneak   nnoremap gf f   nnoremap gF F   map f <Plug>Sneak_s   map F <Plug>Sneak_S   let g:sneak#label = 1   let g:sneak#s_next = 1   -let g:sneak#target_labels = "asdfhjklqwertyu"   " }}}   " {{{ autopairs   (let g:AutoPairsShortcutToggle = '<c-c>p'   *let g:AutoPairsShortcutJump = '<c-x><c-x>'   " }}}   " {{{ pencil   let g:auto_save = 1   let g:auto_save_silent = 1   set nocompatible   filetype plugin on   augroup pencil   
  autocmd!   2  autocmd FileType markdown,mkd call pencil#init()   2  autocmd FileType text         call pencil#init()   augroup END   let g:pencil#textwidth = 79   " }}}   " {{{ lightline   set laststatus=2   " }}}   " }}}   " {{{ other settings   
set backup   
set nu rnu   
set nowrap   set linebreak   set textwidth=79   colorscheme badwolf   set foldmethod=marker   !set clipboard=unnamed,unnamedplus   1highlight EndOfBuffer ctermfg=black ctermbg=black   ," Disable annoying auto comment on new line:   P" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   " }}}   "{{{ mappings   let mapleader ="\<space>"   " folds   8nnoremap <silent> <tab> :silent execute "normal! za"<cr>   " mark whole buffer   nnoremap <c-x>h mzgg<s-v>g   vnoremap <esc> <esc>`z       nnoremap ! :qa!<cr>   nnoremap Q :wqa!<cr>   nnoremap <leader>q :bunload<cr>       " increase / decrease number   nnoremap <c-s-a> <c-a>   vnoremap <c-s-a> <c-a>   nnoremap <c-s-x> <c-x>   vnoremap <c-s-x> <c-x>   " kill line   inoremap <c-k> <c-o>D       " cursor signaling   *autocmd InsertEnter,InsertLeave * set cul!       " undo   inoremap <c-_> <c-o>u       " up and down line   inoremap <c-n> <c-o>j   inoremap <c-p> <c-o>k       1nnoremap <silent> <space>mg :Goyo<cr>:echo ""<cr>       nnoremap <silent> ge g_   nnoremap <silent> gr vg_       inoremap <c-f> <c-o>l       nnoremap ; :       nnoremap <c-s-j> ddjP   nnoremap <c-s-k> ddkP       nnoremap ! :qa!<cr>   nnoremap q :wqa!<cr>   nnoremap <leader>q :bunload<cr>   nnoremap go o<esc>   nnoremap gi o<esc>   7nnoremap <m-space> :s/\s\+/ /g<cr>w:noh<cr>:echo ""<cr>   " {{{ windows        " nnoremap <silent> <m-h> <c-w>h   3nnoremap <silent> <esc>h :noh<cr>:echo ""<cr><c-w>h   3nnoremap <silent> <esc>l :noh<cr>:echo ""<cr><c-w>l   nnoremap <silent> <esc>j <c-w>j   nnoremap <silent> <esc>k <c-w>k       $nnoremap <silent> <leader> :only<cr>   %nnoremap <silent> <leader>0 :quit<cr>       +nnoremap <silent> <leader>k :split<cr><c-w>   &nnoremap <silent> <leader>j :split<cr>   -nnoremap <silent> <leader>h :vsplit<cr><c-w>w   'nnoremap <silent> <leader>l :vsplit<cr>       4nnoremap <silent> <leader>K :botright split<cr><c-w>   /nnoremap <silent> <leader>J :botright split<cr>   6nnoremap <silent> <leader>H :botright vsplit<cr><c-w>w   0nnoremap <silent> <leader>L :botright vsplit<cr>       " RESIZE WINDOWS   " <c-w>=    balance windows   7" ctrl-w +  increase height of current window by 1 line   7" ctrl-w -  decrease height of current window by 1 line   -" ctrl-w _  maximise height of current window   ," ctrl-w |  maximise width of current window       " MOVE WINDOWS   " ctrl-w r  rotate all windows   6" ctrl-w x  exchange current window with its neighbour   +" ctrl-w H  move current window to far left   )" ctrl-w J  move current window to bottom   &" ctrl-w K  move current window to top   ," ctrl-w L  move current window to far right       " }}}   " Save when leaving insert   0inoremap <silent> <esc> <c-o>:silent w!<cr><esc>   " Help Single Window   nnoremap <c-k> K:only<cr>   " }}}   " {{{ abbrevs   %cabbrev s! silent wa!<bar>silent so %   )cabbrev sthis! silent wa!<bar>silent so %   :cabbrev p! let @+ = expand("%:p") <bar> echo "path yanked"   *cabbrev c! source ~/.vimrc <bar> PlugClean   =cabbrev path! let @+ = expand("%:p") <bar> echo "path yanked"   ,cabbrev i! source ~/.vimrc <bar> PlugInstall   .cabbrev clean! source ~/.vimrc <bar> PlugClean   2cabbrev install! source ~/.virmc <bar> PlugInstall   " }}}   " {{{ functions   " {{{ autosave   augroup myAutoSave!       autocmd!   !     au FocusLost * :silent wall!   augroup END   au FocusGained * :checktime   " }}}   " }}}}   "   "   "   " {{{ options   " " {{{ basic   ;" Update term title but restore old title after leaving Vim   set notitle   " " {{{ tabulation   set tabstop=8   set expandtab   set shiftwidth=4   set softtabstop=4   " }}}   
set backup   set backupdir=~/.vim/.backup   
set nu rnu   
set hidden   set showcmd   set gdefault   set modeline   set undofile   set undodir=~/.vim/.undo   set wildmenu   set autoread   set showmatch   set notimeout   set ttimeout   set autochdir   set lazyredraw   set autoindent   set noshowmode   set noswapfile   set splitbelow   set splitright   set shiftround   set cursorline   set guioptions=   set matchtime=3   set history=1000   set autowriteall   set showbreak =.   set synmaxcol=200   set regexpengine=1   set conceallevel=3   set updatetime=1000   set ttimeoutlen=10   set foldlevelstart=0   set undolevels=50000   set undoreload=50000   set virtualedit=block   set foldmethod=marker   set inccommand=nosplit   set wildmode=list:longest   set shortmess=aoOtIsTWAqF   "set clipboard+=unnamed,unnamedplus   $set omnifunc=syntaxcomplete#Complete   set backspace=indent,eol,start   vim   	syntax on   filetype plugin on   colorscheme badwolf   syntax sync minlines=256   filetype plugin indent on   ,let g:python_host_prog ='/usr/bin/python2.7'   3" let g:python3_host_prog ='/usr/local/bin/python3'   " hide ugly tidles   7hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg   " }}}   " {{{ formatting   
set nowrap   
set nolist   set mouse=a   set linebreak   set display+=lastline   ," Disable annoying auto comment on new line:   P" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   ""}}}   " {{{ searching and movement   set smartcase   set hlsearch   set incsearch   set showmatch   " set ignorecase   	""}}}"}}}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]��    �         �       �         �    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]��    �         �      Plug ''�         �    5�_�                    =       ����                                                                                                                                                                                                                                                                                                                                                V       ]��    �   =   @   �      " �   =   ?   �    5�_�      !               ?        ����                                                                                                                                                                                                                                                                                                                                                V       ]��     �   ?   B   �    �   ?   @   �    5�_�       "           !   ?        ����                                                                                                                                                                                                                                                                                                                                                V       ]��     �   >   ?          "5�_�   !   #           "   @        ����                                                                                                                                                                                                                                                                                                                                                V       ]��    �   ?   @           5�_�   "   $           #   
        ����                                                                                                                                                                                                                                                                                                                                                V       ]�1    �   
      �       �   
      �    5�_�   #               $          ����                                                                                                                                                                                                                                                                                                                                                V       ]�5    �   
      �      Plug ''�         �    5�_�                    =        ����                                                                                                                                                                                                                                                                                                                                                V       ]��    �   =   >   �      " �   =   ?   �      " {{{   " }}}�   >   ?   �      " �   >   @   �      "�   >   A   �       }}}5�_�          	      
   �        ����                                                                                                                                                                                                                                                                                                                                                             ]��     �   �   �        KKK:w!    5�_�              
   	   �        ����                                                                                                                                                                                                                                                                                                                                                             ]��     �   �   �        AAA:w!    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             ]�a   	 �   �   �         �   �   �        	asdasd:w!    5�_�                   �       ����                                                                                                                                                                                                                                                                                                                                                             ]�O    �   �   �        set<silent>  wildmenu5�_�                     �       ����                                                                                                                                                                                                                                                                                                                                                             ]�O    �   �   �         �   �   �        	<silent> 5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             ]�F    �   �   �         5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             ]��    �   �   �        �   �   �      �   �   �        set undofile5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             ]��     �   �   �        �   �   �      �   �   �        set undofile5��