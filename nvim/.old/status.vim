" {{{ statusbar
set laststatus=2
hi statusLine ctermfg=yellow
hi statusline ctermbg=black

set statusline=\ %f\ %y
set statusline+=\ \|\ %(%{strftime('%a\ \|\ %eⁿᵈ\ \|\ %H:%M')}%)
set statusline+=\ \|\ \ %m
set statusline+=%=
set statusline+=\ \|\ %02vᶜ
set statusline+=\ \|\ %02pᵖ
set statusline+=\ \|\ %03l/%-L\

function! StatusWordCount()
	set laststatus=2
	set statusline=%f%y%m
	set statusline+=%=
	set statusline+=%{WordCount()}ʷ
	set statusline+=\ \|\ %02vᶜ
	set statusline+=\ \|\ %02pᵖ
	set statusline+=\ \|\ %03l/%-L\
endfunction

function! StatusNoWordCount()
	set laststatus=2
	set statusline=%f%y%m
	set statusline+=%=
	set statusline+=\ \|\ %02vᶜ
	set statusline+=\ \|\ %02pᵖ
	set statusline+=\ \|\ %03l/%-L\
endfunction

function! StatusOff()
	setlocal laststatus=0
	setlocal statusline=
endfunction

function! StatusLight()
	set laststatus=2
	set statusline=\ %f\ %m
endfunction

function! WordCount()
	let lnum = 1
	let n = 0
	while lnum <= line('$')
		let n = n + len(split(getline(lnum)))
		let lnum = lnum + 1
	endwhile
	return n
endfunction

function! InsertStatuslineColor(mode)
	if a:mode == 'i'
		hi statusline ctermbg=darkgrey
		hi statusline ctermfg=yellow
	elseif a:mode == 'r'
		hi statusline ctermbg=red
	else
		hi statusline ctermbg=black
	endif
endfunction

augroup status
	autocmd!
	autocmd InsertEnter * call InsertStatuslineColor(v:insertmode)
	autocmd InsertChange * call InsertStatuslineColor(v:insertmode)
	autocmd InsertLeave * hi statusline ctermbg=black
	autocmd InsertLeave * hi statusline ctermfg=yellow
augroup END
" " }}}
