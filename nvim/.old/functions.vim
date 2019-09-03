" {{{ disabled
" " {{{ sameline
" " nnoremap <c-a> /Sim\\|Não/1<cr>Ji,<esc>:noh<cr>

" function SameLine()
"     execute "normal! gg/foo\<cr>dd"
" endfunction

" " }}}
" " " {{{ jump to last position
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif
" " " }}}
" " {{{ avoid nesting
" " if has('nvim')
" "   let $VISUAL = 'nvr -cc split --remote-wait'
" "   let $EDITOR = 'nvr -cc split --remote-wait'
" " endif
" " }}}
" " {{{ path macro
" let @o = 'mZ:s/\/home\/dave\//\~\/`Z'
" " }}}
" " {{{ remove menus from GUI
" let did_install_default_menus = 1
" " }}}
" " {{{ st fix
" " if &term =~ '256color'
" "     " disable Background Color Erase (BCE) so that color schemes
" "     " render properly when inside 256-color tmux and GNU screen.
" "     " see also http://sunaku.github.io/vim-256color-bce.html
" "     set t_ut=
" " endif
" " " }}}
" " {{{ term insert
" " augroup nterm
" " 	autocmd!
" "         autocmd BufWinEnter,WinEnter term://* startinsert
" "         autocmd BufLeave term://* stopinsert
" " augroup END
" augroup TermExtra
"   autocmd!
"   autocmd BufEnter term://* start!
" augroup end
" " }}}
" " {{{ term macro
" " function! <SID>StripTrailingWhitespaces()
" "     " Preparation: save last search, and cursor position.
" "     let _s=@/
" "     let l = line(".")
" "     let c = col(".")
" "     " Remove Trailling ws
" "     %s/\s\+$//e
" "     " Clean up: restore previous search history, and cursor position
" "     let @/=_s
" "     call cursor(l, c)
" " endfunction

" " autocmd BufWritePre *.c,*.vim :call <SID>StripTrailingWhitespaces()
" " }}}
" " {{{ open file at point
" function! OpenFileInPrevWindow()
"     let cfile = expand("<cfile>")
"     wincmd p
"     execute "edit " . cfile
"     echo ""
" endfunction
" nmap <c-k> :call OpenFileInPrevWindow()<cr>
" " }}}
" " {{{ autosave
" augroup AutoSave
" 	autocmd!
" 	autocmd FocusLost   *  :silent! wall
" 	autocmd InsertEnter *  :silent! wall
" 	autocmd InsertLeave *  :silent! wall
" 	autocmd BufLeave    *  :silent! wall
" 	autocmd CmdlineLeave * :silent! wall
" 	autocmd CmdlineLeave * :noh
" augroup END
" " }}}
" }}}
