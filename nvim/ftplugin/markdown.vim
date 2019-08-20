" {{{ basic settings 
autocmd BufEnter * set showtabline=0
let g:goyo_width=85
setlocal textwidth=80
syntax sync minlines=256
setlocal formatoptions+=tcq
setlocal nowrap linebreak nolist 
setlocal nonumber norelativenumber
" {{{ tabulation
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
" }}}
" colorscheme gruvbox
" setlocal background=dark
" }}}
" {{{ abbrevs 
iabbrev <buffer> 1h #
iabbrev <buffer> 2h ##
iabbrev <buffer> 3h ###
iabbrev <buffer> 4h ####
iabbrev <buffer> 5h #####
iabbrev <buffer> 6h ######
iabbrev <buffer> '' ```
" }}}
" {{{ mappings 

" nmap <cr> <Plug>Markdown_OpenUrlUnderCursor
nmap <cr> :noh<cr>gf:bun! index.md<cr>:echo ""<cr>

" {{{ inserts
inoremap <buffer> <silent> <M--> `
vnoremap <buffer> <silent> cb <esc>`>a**<esc>`<i**
vnoremap <buffer> <silent> ck <esc>`>a`<esc>`<i`<esc>
vnoremap <silent> <esc>`>a](<esc>p`]a)<esc>`<i[
vnoremap <silent> cl <esc>`>a](<esc>p`]a)<esc>`<i[
" }}}

" vim: ft=vim:
