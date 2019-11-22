" {{{ plug
call plug#begin('~/.config/nvim/plugins/plugged')
Plug 'jceb/vim-orgmode'
Plug 'chrisbra/NrrwRgn'
Plug 'tpope/vim-obsession'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/goyo.vim'
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
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''
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
" {{{ neomake
" https://github.com/neomake/neomake#setup

" When writing a buffer, 1 second delay
" call neomake#configure#automake('w', 1000)

" When writing a buffer (no delay).
" call neomake#configure#automake('w')

" When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)

" When reading a buffer (after 1s), and when writing (no delay).
" call neomake#configure#automake('rw', 1000)

" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
" call neomake#configure#automake('nrwi', 500)

" Show only error
" let g:neomake_verbose = 0
"}}}
" }}}

"vim: set filetype=vim:
