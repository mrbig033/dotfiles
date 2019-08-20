" {{{ settings 
setlocal wrap
setlocal foldlevelstart=-1
setlocal textwidth=110
setlocal formatoptions+=tcq
setlocal nohlsearch
colorscheme rdark
set background=dark
command! -nargs=* WrapToggle set wrap! linebreak! nolist!
let b:goyo_width=120
nnoremap cs :colorscheme<space>
" }}}
" {{{ movement & folds 
" nnoremap <silent> zm zM:silent redraw!<cr>
" nnoremap <silent> <space> za:silent redraw!<cr>
" nnoremap <silent> <c-d> 15<c-d>:silent redraw!<cr>M
" nnoremap <silent> <c-u> 15<c-u>:silent redraw!<cr>M
" nnoremap <silent> <c-f> 2<c-f>:silent redraw!<cr>M
" nnoremap <silent> <c-b> 2<c-b>:silent redraw!<cr>M
" nnoremap <silent> <c-e> 8<c-e>:silent redraw!<cr>
" nnoremap <silent> <c-y> 8<c-y>:silent redraw!<cr>
" nnoremap <silent> gg gg:silent redraw!<cr>
" nnoremap <silent> G G:silent redraw!<cr>
" nnoremap <silent> <localleader><localleader>m I/* {{{ */<esc>0f*a<space>
" nnoremap <silent> <localleader><localleader>n I/* }}} */<esc>0f*a<space>
" " }}} }}}
" {{{ patterns 
" scenes
nnoremap <silent> <C-j> /^\/\*\s\<Cena\><cr>zt10<c-y>:silent redraw!<cr>
nnoremap <silent> <C-k> ?^\/\*\s\<Cena\><cr>zt10<c-y>:silent redraw!<cr>
" main sequences
nnoremap <silent> _ /\v^(INT\|EXT)<cr>zt10<c-y>:silent redraw!<cr>
nnoremap <silent> + ?\v^(INT\|EXT)<cr>zt10<c-y>:silent redraw!<cr>
" all sequences
nnoremap <silent> - /\v^(INT\|EXT\|\.\u+)<cr>zt10<c-y>:silent redraw!<cr>
nnoremap <silent> = ?\v^(INT\|EXT\|\.\u+)<cr>zt10<c-y>:silent redraw!<cr>
" characters
nnoremap <silent> <M--> /\v^(\u\u+)$\|\s\(.*\)$<cr>zt10<c-y>:silent redraw!<cr>
nnoremap <silent> <M-=> ?\v^(\u\u+)$\|\s\(.*\)$<cr>zt10<c-y>:silent redraw!<cr>
" dialogue
nnoremap <silent> <M-9> /\v^(\u\u+)$/+1\|\s\(.*\)$/+1<cr>zt10<c-y>:silent redraw!<cr>
nnoremap <silent> <M-0> ?\v^(\u\u+)$/+1\|\s\(.*\)$/+1<cr>zt10<c-y>:silent redraw!<cr>
" }}}
