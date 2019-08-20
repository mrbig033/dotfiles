" {{{ basic settings 
syntax sync minlines=256
set formatoptions+=tcq
set nocursorcolumn
set nowrap linebreak nolist 
set textwidth=82
let g:goyo_width=85
autocmd! User GoyoEnter silent! Limelight
autocmd! User GoyoEnter silent! normal gm
colorscheme badwolf
" }}}
" {{{ abbrevs 
iabbrev '' ```
iabbrev ''p ```python
iabbrev ''v ```vim
iabbrev var variable
iabbrev 2h ==
iabbrev 3h ===
iabbrev 4h ====
iabbrev 5h =====
iabbrev 6h ======
iabbrev 4- ----
" }}}
" {{{ mappings 

inoremap <silent> <M--> `
nnoremap <silent> <M-[> A<space>+<esc>j

nnoremap <M-y> o<cr>[caption=""]<cr>[width=]<cr>[cols=2*^,options=header]<cr>.<cr>\|===<cr>\|<space>Item<space><space>\|<space>Description<cr>\|<space>Item1<space>\|<space>Description1<space><cr>\|===<esc>k?\|===<cr>:noh<cr>3kf=a
inoremap <M-u> <esc>/\zs=\ze\w<cr>:noh<cr>lR
inoremap <M-i> <esc> /^\.<cr>:noh<cr>a
inoremap <M-o> <esc> /\zs\|\ze\s\w<cr>:noh<cr>wR
inoremap <M-p> <esc> /\zs\|\ze\s\w<cr>:noh<cr>wR

nnoremap <M-a> {/\|===<cr>jy/\|===<cr>:noh<cr>
nnoremap <M-t> {/\|===<cr>j<S-v>/\|===<cr>k<esc>:noh<cr>gv
nnoremap <silent> <c-t> {/\|===<cr>j<S-v>/\|===<cr>k<esc>:noh<cr>gv:Tabularize /\|<cr>gvoj:SortByWidth<cr>`<w

nnoremap ]]] i[source,vim]<cr>----<cr>----<esc>ko
vnoremap <silent> cl <esc>`>a,window="_blank"]<esc>`<i[<esc>P
vnoremap <silent> ck <esc>`>a`<esc>`<i`<esc>
nnoremap <silent> <M-i> <c-i>zz
nnoremap <silent> <M-o> <c-o>zz

nnoremap <silent> <c-9> :silent! /\v^\={2}\s<cr>zt10<c-y>:noh<cr>
nnoremap <silent> <c-0> :silent! ?\v^\={2}\s<cr>zt10<c-y>:noh<cr>

nnoremap <silent> _ :silent! /\v^\={4}\s<cr>zt10<c-y>:noh<cr>
nnoremap <silent> + :silent! ?\v^\={4}\s<cr>zt10<c-y>:noh<cr>

nnoremap <silent> <M--> :silent! /^\|===$\n\|<cr>zt10<c-y>:noh<cr>
nnoremap <silent> <M-=> :silent! ?^\|===$\n\|<cr>zt10<c-y>:noh<cr>
