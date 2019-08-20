let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /home/Documents/Studying/Prog/Godot/projects/Zelda/items
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +7 /home/Documents/Studying/Prog/Godot/projects/Zelda/enemies/stalfos.gd
badd +11 /home/Documents/Studying/Prog/Godot/projects/Zelda/engine/directions.gd
badd +15 /home/Documents/Studying/Prog/Godot/projects/Zelda/engine/entity.gd
badd +1 /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd
badd +7 /home/Documents/Studying/Prog/Godot/projects/Zelda/player/player.gd
argglobal
silent! argdel *
$argadd /home/Documents/Studying/Prog/Godot/projects/Zelda/enemies/stalfos.gd
$argadd /home/Documents/Studying/Prog/Godot/projects/Zelda/engine/directions.gd
$argadd /home/Documents/Studying/Prog/Godot/projects/Zelda/engine/entity.gd
$argadd sword.gd
$argadd /home/Documents/Studying/Prog/Godot/projects/Zelda/player/player.gd
edit /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("/home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd") | buffer /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd | else | edit /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
8
normal! zo
let s:l = 10 - ((7 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 014|
tabedit /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("/home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd") | buffer /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd | else | edit /home/Documents/Studying/Prog/Godot/projects/Zelda/items/sword.gd | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
8
normal! zo
let s:l = 13 - ((8 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 05|
tabnext 2
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 winminheight=1 winminwidth=1 shortmess=aoOtIsTWAqF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
let g:this_obsession_status = 2
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
