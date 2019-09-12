" UNMAPPINGS

unmap t

" KEY MAPPINGS

" TAB MOTIONS

map gf createTab https://www.facebook.com/
map gt createTab https://tildes.net/user/mrbig
map gl createTab https://www.rememberthemilk.com/app/#today
map gh createTab https://github.com/mrbig033?tab=repositories
map gr createTab https://old.reddit.com/user/takethecannoli4/?sort=hot
map gv createTab chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html
map gp createTab https://www.hardware.com.br/comunidade/cpu-simples/1510121/


" BUFFERS

map q goBack
map 3 nextTab
map E showHelp
map e goForward
map 2 createTab
map i focusInput
map 1 previousTab
map < moveTabLeft
map > moveTabRight
map <c-a-n> nextTab
map <a-s> visitPreviousTab

map S moveTabToNewWindow
map c LinkHints.activateModeWithQueue
map gc LinkHints.activateModeToCopyLinkUrl
map b LinkHints.activateModeToOpenInNewTab
map yd LinkHints.activateModeToDownloadLink

" INSIDE MOTIONS

map w scrollUp
map s scrollDown
map D scrollToTop
map d scrollPageUp
map a scrollPageDown
map A scrollToBottom
' Marks.activateGotoMode
m Marks.activateCreateMode