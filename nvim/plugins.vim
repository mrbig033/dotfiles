" {{{ plug
call plug#begin('~/.config/nvim/plugins/plugged')
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'justinmk/vim-sneak'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-titlecase'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-rsi'
Plug 'vim-utils/vim-husk'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'haya14busa/incsearch.vim'
call plug#end()
" }}}
" {{{ settings
" {{{ badwolf
let g:badwolf_tabline = 1
let g:badwolf_darkgutter = 1
let g:badwolf_css_props_highlight = 1
let g:badwolf_html_link_underline = 1
"}}}
" {{{ incsearch
map #  <Plug>(incsearch-nohl-#)
map *  <Plug>(incsearch-nohl-*)
map g;  <Plug>(incsearch-forward)
map g/  <Plug>(incsearch-backward)
let g:incsearch#magic = '\v'
let g:incsearch#auto_nohlsearch = 1
let g:incsearch#separate_highlight = 1
let g:incsearch#consistent_n_direction = 1
" }}}
"" {{{ buftabline
let g:buftabline_show = 1
let g:buftabline_numbers = 0
let g:buftabline_plug_max = 35
let g:buftabline_indicators = 1
""}}}
" {{{ camelcase
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
" sunmap w
sunmap b
sunmap e
sunmap ge
" }}}
" {{{ autopairs
let g:AutoPairsShortcutToggle = '<c-c>p'
let g:AutoPairsShortcutJump = '<c-x><c-x>'
" }}}
" {{{ vertigo
" nnoremap <silent> , :<C-U>VertigoDown n<CR>
" vnoremap <silent> , :<C-U>VertigoDown v<CR>
" onoremap <silent> , :<C-U>VertigoDown o<CR>

let g:Vertigo_homerow = 'asdfghjklo'
let g:Vertigo_onedigit_method = 'smart4'
" }}}
" {{{ sneak
map f <Plug>Sneak_s
map F <Plug>Sneak_S
let g:sneak#use_ic_scs = 0
let g:sneak#label = 1
let g:sneak#s_next = 1
let g:sneak#target_labels = "asdfhjklqwertyu"
" }}}
" {{{ commentary
autocmd FileType cfg setlocal commentstring=#\ %s
" }}}
"
" }}}

"vim: set filetype=vim:
