let mapleader ="\<space>"
" {{{ buffers

nnoremap ! :qa!<cr>
nnoremap Q :wqa!<cr>
nnoremap gQ Q
nnoremap <leader>q :bunload<cr>
nnoremap <leader>x :bd!<cr>

nnoremap <silent> ç <c-w>w
nnoremap <silent> <m-9> :only<cr>
" }}}
" {{{ windows

" nnoremap <silent> <m-h> <c-w>h
nnoremap <silent> <m-h> <c-w>h
nnoremap <silent> <m-l> <c-w>l
nnoremap <silent> <m-j> <c-w>j
nnoremap <silent> <m-k> <c-w>k

nnoremap <silent> <m-9> :only<cr>
nnoremap <silent> <leader>0 :quit<cr>

nnoremap <silent> <leader>k :split<cr><c-w>
nnoremap <silent> <leader>j :split<cr>
nnoremap <silent> <leader>h :vsplit<cr><c-w>w
nnoremap <silent> <leader>l :vsplit<cr>

nnoremap <silent> <leader>K :botright split<cr><c-w>
nnoremap <silent> <leader>J :botright split<cr>
nnoremap <silent> <leader>H :botright vsplit<cr><c-w>w
nnoremap <silent> <leader>L :botright vsplit<cr>

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
" movement {{{
nnoremap <leader>ts :let &scrolloff=999-&scrolloff<cr>:echo " Toggle Centered Cursor"<cr>
nmap <leader>u <Plug>(easymotion-W)

" nnoremap <c-x>i :w!<cr>:so ~/.config/nvim/plugins.vim<cr>:PlugInstall<cr>
" nnoremap <c-x>c :w!<cr>:so ~/.config/nvim/plugins.vim<cr>:PlugClean<cr>
" nnoremap <c-x>l :LinuxCodingStyle<cr>:echo "Linux Coding Style"<cr>
" nnoremap <c-x>r :w!<cr>:so %<cr>:echo " file loaded"<cr>
nnoremap <M-o> <c-o>
nnoremap <silent> <c-M-o> :silent e#<cr>

nnoremap <silent> <M-s> :silent b#<cr>:echo ""<cr>
vnoremap <silent> <M-s> <esc>:silent b#<cr>:echo ""<cr>

nnoremap <M-i> <c-i>
nnoremap <leader>r :Ranger<cr><c-\><c-n>:set nonu nornu<cr>:echo ""<cr>i
nnoremap j mzj`z
nnoremap g, g,zz
nnoremap g; g;zz
nnoremap n nzvzmzvzz
nnoremap n nzvzmzvzz
nnoremap <silent> ge g_
nnoremap <silent> gr vg_
nnoremap <silent> zn zmzvzz
nnoremap <space>= :botright help<space>

nnoremap <silent> - :silent! helpclose<cr>
nnoremap <silent> <expr> j (v:count? 'j' : 'gj')
nnoremap <silent> <expr> k (v:count? 'k' : 'gk')
" }}}
" {{{ editing

" replace
nnoremap <leader>su :%s/

" paste from insert
inoremap <c-v> <c-r>+
" inoremap <c-x>v <c-v>

" " remove blank lines
" nnoremap <c-x>B :g/^$/d<cr>

" " remove double blank lines
" nnoremap <c-x>b :%s/\(\n\n\)\n\+/\1/<cr>:noh<cr>:echo ""<cr>

" " indent buffer
" nnoremap <c-x>i mzgg=G`z0w

" just one space
nnoremap go o<esc>
nnoremap gi O<esc>
nnoremap <m-space> :s/\s\+/ /g<cr>W:noh<cr>:echo ""<cr>

nnoremap <m-.> .
" vnoremap <silent> <leader>ce :SortByWidth<cr>
nnoremap <silent> <leader>cd mzyyp`zj
nnoremap <silent> <esc> :silent! wa!<cr>:noh<cr>:echo ""<cr>

" sort by width
vnoremap <leader>ce :! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" }}}
" {{{ commands
" nnoremap <c-x>s :SyntasticToggleMode<cr>
" nnoremap <c-x>y :setlocal foldmethod=syntax<cr>
"
nnoremap <silent> <leader>e :silent !eclauncher % &>/dev/null <cr>
nnoremap <silent> <leader>mg :Goyo<cr>:echo ""<cr>
nnoremap <silent> <leader>mt :set showtabline=0<cr>:echo ""<cr>
nnoremap ; :
" nnoremap <c-z> <nop>
nnoremap <silent> <leader>k :silent bd!<cr>

" }}}
"{{{ emacs like

nnoremap <leader>f gf

" mark whole buffer
nnoremap <c-x>h mZgg<s-v>G

" increase / decrease number
nnoremap <c-s-a> <c-a>
vnoremap <c-s-a> <c-a>
nnoremap <c-s-x> <c-x>
vnoremap <c-s-x> <c-x>
" kill line
inoremap <c-k> <c-o>D

" " undo
" " undo
inoremap <c-_> <c-o>u

" " up and down line
inoremap <c-n> <c-o>j
inoremap <c-p> <c-o>k

" " my paragraph motions
inoremap <M-p> <esc>{^
inoremap <M-n> <esc>}^
nnoremap <M-p> k{j^
nnoremap <M-n> }j^

" " sentences
inoremap <M-e> <c-o>)
inoremap <M-a> <c-o>(
nnoremap <M-e> )
nnoremap <M-a> (

" line motions
" nnoremap <c-a> g0
" nnoremap <c-e> g$
" inoremap <c-a> g0
" inoremap <c-e> g$

nnoremap <c-m-i> <c-a>
" nnoremap <c-x>h ggVG
nnoremap <c-m-i> ggVGp:wqa!<cr>
" nnoremap <c-x><cr> :silent ! m %<cr>

nnoremap <silent> <tab> :silent execute "normal! za"<cr>

nnoremap <silent> <c-M-p> :silent bprev<cr><c-\><c-n>:echo ""<cr>
nnoremap <silent> <c-M-n> :silent bnext<cr><c-\><c-n>:echo ""<cr>

nmap ga <Plug>Titlecase
vmap ga <Plug>Titlecase
nmap gT <Plug>TitlecaseLine

nnoremap <c-m-j> ddjP
nnoremap <c-m-k> ddkP
nnoremap <c-k> K:only<cr>
" }}}
" {{{ terminal
nnoremap <m-2> @
nnoremap <m-return> mZgg=G`Z
" }}}
" {{{ searching
nnoremap <M-d> :b<space>
nnoremap <c-s> /
" }}}
" {{{ narrow
xmap <leader>n <Plug>NrrwrgnDo
" }}}
" vim: nowrap
