" " {{{ Plug
call plug#begin('~/.config/nvim/plugins/plugged')
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-obsession'
Plug 'vim-scripts/loremipsum'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/echodoc.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'calviken/vim-gdscript3'
Plug 'vim-syntastic/syntastic'
Plug 'TheZoq2/neovim-auto-autoread'
Plug 'ajh17/VimCompletesMe'
call plug#end()
" }}}
" {{{ vimcompletesme
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" let b:vcm_tab_complete = 1
" }}}
" {{{ syntastic
" See the recommended settings:  
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
     \ "mode": "active",
     \ "active_filetypes": ["ruby", "php"],
     \ "passive_filetypes": ["ruby", "php"] }
" }}}
" {{{ ultisnips
let g:UltiSnipsExpandTrigger="<m-o>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["~/.config/nvim/plugins/plugged/vim-snippets/snippets"]

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" }}}
" {{{ fzf
let g:fzf_layout = { 'down': '~20%' }
" }}}
" {{{ obsession
set statusline+=\ %{ObsessionStatus()}
nnoremap <leader>s :source ~/.config/nvim/session.vim<cr>
nnoremap <leader>o :Obsess ~/.config/nvim/session.vim<cr>
nnoremap <leader><leader>o :Obsess<cr>
nnoremap <leader>O :Obsess!<cr>
" }}}
