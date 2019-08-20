" {{{ iabbrevs
" iabbrev b!! #!/bin/bash<c-r>=Eatchar('\m\s\<bar>/')<cr>
" 
iabbrev env_reset Defaults        env_reset,timestamp_timeout=360,pwfeedback
iabbrev b!! #!/usr/bin/env bash<cr>
iabbrev p!! #!/usr/bin/python3<c-r>=Eatchar('\m\s\<bar>/')<cr><cr>
iabbrev ~!! /home/mrblack/<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbrev n!! ~/.config/nvim/<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbrev -!! —
iabbrev !!! ¦
iabbrev modeline!! " vim: ft=vim:<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbrev nnul &>/dev/null
" }}}
" {{{ cabbrevs

cabbrev autoformat set formatoptions+=tcqa
cabbrev noautoformat set formatoptions=jcroql
cabbrev s! silent wa!<bar>silent so %
cabbrev sthis! silent wa!<bar>silent so %
cabbrev p! let @+ = expand("%:p") <bar> echo "path yanked"
cabbrev c! source ~/.vimrc <bar> PlugClean
cabbrev path! let @+ = expand("%:p") <bar> echo "path yanked"
cabbrev i! source ~/.vimrc <bar> PlugInstall
cabbrev clean! source ~/.vimrc <bar> PlugClean
cabbrev install! source ~/.virmc <bar> PlugInstall

cabbrev path! let @+ = expand("%:p") <bar> echo "path yanked"
cabbrev p! let @+ = expand("%:p") <bar> echo "path yanked"
cabbrev runthis! write! <bar> silent !%:p <bar> echo "file executed"
cabbrev deletethisfile :!sudo trash-put % <bar> echo "file deleted"

cabbrev nurnu set nu rnu
cabbrev nonu set nonu nornu
cabbrev wrap! set wrap! nolist!
cabbrev w! set wrap! nolist!
cabbrev ic! set ignorecase! <bar> set ignorecase?

cabbrev nostatus call StatusOff()
cabbrev status! call StatusWordCount()
cabbrev lightstatus silent call StatusLight()

cabbrev blank g/^\_$\n\_^$/d

cabbrev  lipsum :Loremipsum

cabbrev en setlocal spell! spelllang=en
cabbrev pt setlocal spell! spelllang=pt


cabbrev install! source ~/.config/nvim/plugins.vim <bar> PlugInstall
cabbrev clean! source ~/.config/nvim/plugins.vim <bar> PlugClean
cabbrev i! wa! <bar> source ~/.config/nvim/plugins.vim <bar> PlugInstall
cabbrev c! wa! <bar> source ~/.config/nvim/plugins.vim <bar> PlugClean


cabbrev sthis silent wa!<bar>silent so %
cabbrev sourcethis silent so %

cabbrev sinit! source $MYVIMRC<bar>:noh<bar>echo ""<cr>

cabbrev sourceinit source $MYVIMRC

cabbrev == wincmd =<cr>

" }}}

" nnoremap <silent> <leader>g :exe ':silent !google-chrome --no-sandbox % &'<cr>
" vim: nowrap
