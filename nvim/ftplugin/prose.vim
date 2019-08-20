" {{{ basic settings 
syntax sync minlines=256
let g:goyo_width=95
setlocal filetype=markdown
setlocal syntax=markdown
setlocal formatoptions+=tcq
setlocal nocursorcolumn
setlocal nowrap linebreak nolist 
setlocal showbreak=
setlocal textwidth=90
set showcmd
colorscheme stylus
set background=dark
set showmode
let g:airline_theme = 'stylus'
autocmd VimEnter * silent! AirlineRefresh
" }}}
" {{{ abbrevs and text 
iabbrev '' ```
iabbrev ''p ```python
iabbrev ''v ```vim
iabbrev var variable
inoremap <silent> <M--> `
nnoremap <silent> <M--> i`<esc>a
nnoremap <silent> <M-[> i<cr><esc>`.

vnoremap <silent> cb <esc>a**<esc>`<i**<esc>`>Ea
vnoremap <silent> ck <esc>a`<esc>`<i`<esc>`>Ea
nnoremap <silent> <leader><leader>r :WrapToggle<cr>
" }}}
" {{{ other mappings 
nnoremap <buffer> <silent> <leader>n :set nu rnu<cr>
inoremap <buffer> <silent> <c-s> <esc>:wa!<cr>:echo "saved"<cr>a
nnoremap <buffer> <silent> <localleader>f :set formatoptions+=tcqa<cr>:echo "autoformat"<cr>
nnoremap <buffer> <silent> <localleader><localleader>f :set formatoptions+=tcq<cr>:echo "noautoformat"<cr>
nnoremap <buffer> <silent> <localleader>prose :badd ~/.config/nvim/ftplugin/prose.vim<cr>:b prose.vim<cr>
nnoremap <buffer> <silent> <leader>a :AirlineToggle<cr>:set laststatus=0<cr>
nnoremap <buffer> <silent> <leader><leader>a :AirlineToggle<cr>:set laststatus=2<cr>
nnoremap <buffer> <silent> <leader><leader>def :colorscheme default<cr>
nnoremap <buffer> <silent> <leader><leader>sty :colorscheme stylus<cr>:set background=dark<cr>
nnoremap <buffer> <silent> <localleader><localleader>g ggVG
" }}}
" {{{ format 
nnoremap <silent> <localleader>p gwap
nnoremap <silent> <F2> gwgggwG
inoremap <silent> <F2> <esc>gwgggwG
nnoremap <silent> <localleader>= :set textwidth+=10<cr>gwgggwG:set textwidth?<cr>
nnoremap <silent> <localleader>- :set textwidth-=10<cr>gwgggwG:set textwidth?<cr>
" }}}
" {{{ autocmds 
autocmd! User GoyoEnter silent! Limelight
autocmd! User GoyoEnter silent! normal gm
command! -nargs=* WrapToggle set wrap! linebreak! nolist!
" }}}
" {{{ mark long lines 
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%92v', 100)
" }}}
