set $up    k
set $down  j
set $left  h
set $right l
set $mod Mod4
set $alt Mod1
new_float normal
new_window normal
# new_window 1pixel
floating_modifier $mod
hide_edge_borders smart
focus_follows_mouse yes
font xft:URWGothic-Book 11
# font pango:DejaVu Sans Mono 0
popup_during_fullscreen ignore
focus_on_window_activation focus
force_display_urgency_hint 150 ms
workspace_auto_back_and_forth yes
set $Locker i3lock --show-failed-attempts --color=#000000 && sleep 1
set $mode_system System (l) lock, (e) logout, (s) suspend, (h) hibernate, (r) reboot, (Shift+s) shutdown

# bar {
# i3bar_command i3bar
# status_command i3status
# position bottom
# mode dock
# modifier none
# binding_mode_indicator no

# bindsym button4 nop
# bindsym button5 nop
# strip_workspace_numbers yes

# colors {
# background #222D31
# statusline #F9FAF9
# separator  #454947

# focused_workspace  #F9FAF9 #16a085 #292F34
# active_workspace   #595B5B #353836 #FDF6E3
# inactive_workspace #595B5B #222D31 #EEE8D5
# binding_mode       #16a085 #2C2C2C #F9FAF9
# urgent_workspace   #16a085 #FDF6E3 #E5201D
# }
# }
# bindsym $mod+m bar mode toggle

bar {

i3bar_command i3bar
status_command i3blocks
position bottom
mode dock
modifier none
binding_mode_indicator no

bindsym button4 nop
bindsym button5 nop
strip_workspace_numbers yes

colors {
background #222D31
statusline #F9FAF9
separator  #454947

focused_workspace  #F9FAF9 #16a085 #292F34
active_workspace   #595B5B #353836 #FDF6E3
inactive_workspace #595B5B #222D31 #EEE8D5
binding_mode       #16a085 #2C2C2C #F9FAF9
urgent_workspace   #16a085 #FDF6E3 #E5201D
}
}
bindsym $mod+m bar mode toggle

# Color for the terminal ( ~/.Xresources file )
set_from_resource $term_background background
set_from_resource $term_foreground foreground
set_from_resource $term_color0     color0
set_from_resource $term_color1     color1
set_from_resource $term_color2     color2
set_from_resource $term_color3     color3
set_from_resource $term_color4     color4
set_from_resource $term_color5     color5
set_from_resource $term_color6     color6
set_from_resource $term_color7     color7
set_from_resource $term_color8     color8
set_from_resource $term_color9     color9
set_from_resource $term_color10    color10
set_from_resource $term_color11    color11
set_from_resource $term_color12    color12
set_from_resource $term_color13    color13
set_from_resource $term_color14    color14
set_from_resource $term_color15    color15

# Theme colors
# class                   border  backgr. text    indic.   child_border

client.focused          #2F3D44 #2F3D44 #1ABC9C #454948
client.focused_inactive #556064 #556064 #80FFF9 #FDF6E3
client.unfocused        #556064 #556064 #80FFF9 #FDF6E3
client.urgent           #CB4B16 #FDF6E3 #1ABC9C #268BD2
client.placeholder      #000000 #0c0c0c #ffffff #000000
client.background       #2B2C2B

# Theme colors
# class                   border  backgr. text    indic.   child_border

# client.focused          #2F3D44 #2G3D50 #1ABC9C #454948
# client.focused_inactive #556064 #556064 #80FFF9 #FDF6E3
# client.unfocused        #556064 #556064 #80FFF9 #FDF6E3
# client.urgent           #CB4B16 #FDF6E3 #1ABC9C #268BD2
# client.placeholder      #000000 #0c0c0c #ffffff #000000
# client.background       #2B2C2B


exec --no-startup-id "google-chrome"
exec --no-startup-id "/home/jerry/dotfiles/scripts/emacs_scripts/lif"
exec --no-startup-id "~/scripts/cline_scripts/sessions.sh"
exec --no-startup-id "xfce4-terminal --command='tmux attach' --working-directory=~ --title=term-up --hold &"
exec --no-startup-id "xfce4-terminal --command=/home/jerry/.pyenv/shims/ranger --working-directory=~ --title=term-ranger --hold &"
exec --no-startup-id "xset s 0 0 -dpms &"
# exec --no-startup-id "xset s 5400 5400 &"
exec --no-startup-id "xset mouse 14/5 0 &"
exec --no-startup-id "xset r rate 200 60 &"
exec --no-startup-id "compton -b --backend glx &"
exec --no-startup-id "~/scripts/keyboard/init_keys.sh &"
exec --no-startup-id "xrandr --output DP-1 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --off --output HDMI-2 --off &"
exec --no-startup-id "~/scripts/i3_scripts/delayed_init"
exec --no-startup-id redshift
exec --no-startup-id xfce4-power-manager
exec --no-startup-id nm-applet
# exec --no-startup-id "xinput --disable 'ETPS/2 Elantech Touchpad' &"
# exec --no-startup-id "synclient TapButton1=1 TouchpadOff=0 PalmDetect=1 &"


bindsym $mod+h focus Left
bindsym $mod+l focus Right
bindsym $mod+j focus Down
bindsym $mod+k focus Up

bindsym $mod+Up focus Up
bindsym $mod+Tab focus Up
bindsym $mod+Left focus Left
bindsym $mod+Escape focus Left
bindsym $mod+Down focus Down
bindsym $mod+Right focus Right

bindsym $mod+comma [class="Emacs"] focus
bindsym $mod+space focus mode_toggle
bindsym $mod+$alt+h focus output Left
bindsym $mod+$alt+l focus output Right

bindsym $alt+Shift+c focus child;exec notify-send --expire-time=250 'parent focus'
bindsym $alt+Shift+p focus parent;exec notify-send --expire-time=250 'parent focus'

bindsym $mod+Shift+u [title="term-up"] kill; exec "xfce4-terminal --command='tmux attach' --working-directory=~ --title=term-up --hold &"

bindsym $mod+Shift+r [title="term-ranger"] kill; exec "~/scripts/i3_scripts/term-ranger"

bindsym F10 exec "~/maps/texpander/texpander.sh"; mode default
# bindsym $mod+b border none
# bindsym $mod+o border normal
bindsym $mod+q kill
bindsym $mod+Return exec "~/maps/suckless/st_bin3/bin/st"
bindsym --release $mod+Shift+q exec xkill
bindsym F9 exec "~/.emacs_anywhere/bin/run"
bindsym $mod+F5 exec --no-startup-id $Locker
bindsym $mod+z exec --no-startup-id morc_menu
bindsym $mod+d exec dmenu_run -i -l 5 -fn 'Input Mono-13'
bindsym --release Print exec "xfce4-screenshooter --region"
bindsym $mod+Shift+F5 exec "i3-nagbar -t warning -m 'Exit i3?' -b 'Yes' 'i3-msg exit'"
bindsym $mod+F12 exec "i3-msg exit"

bindsym $mod+Shift+k move Up
bindsym $mod+Shift+j move Down

bindsym $mod+Shift+h move Left
bindsym $mod+Shift+l move Right

bindsym $mod+Shift+Right move Right
bindsym $mod+Shift+Left move Left

bindsym $mod+Shift+Up move Up
bindsym $mod+Shift+Down move Down

bindsym $mod+f fullscreen toggle

default_orientation vertical
workspace_layout stacking

bindsym $mod+s layout toggle
bindsym $mod+x layout toggle all

bindsym $mod+v split v;exec notify-send --expire-time=250 --expire-time=1000 'tile vertically'
bindsym $mod+Control+o split h;exec notify-send --expire-time=250 --expire-time=1000 'tile horizontally'

bindsym Menu mode "$launch"

mode "$launch" {

bindsym F10 exec "~/maps/texpander/texpander.sh"; mode default
bindsym 1 exec "~/scripts/i3_scripts/touchpad_off"; mode default
bindsym 2 exec "~/scripts/i3_scripts/touchpad_on"; mode default
bindsym 3 [title="term-up"] move scratchpad; [title="term-ranger"] move scratchpad; exec "~/scripts/cline_scripts/open-i3-config"; mode default
bindsym Shift+e exec "i3-msg exit"; mode default
bindsym Menu exec "rofi -show run"; mode default
bindsym w exec "rofi -show window"; mode default
bindsym t [title="term-up"] move scratchpad; [title="term-ranger"] move scratchpad; exec "thunar"; mode default
bindsym Shift+t [title="term-up"] move scratchpad; [title="term-ranger"] move scratchpad; exec "sudo thunar"; mode default
bindsym s exec "~/scripts/i3_scripts/startup-manual"; mode default
bindsym Shift+p [title="term-up"] move scratchpad; [title="term-ranger"] move scratchpad; exec "sudo poweroff"; mode default
bindsym k exec "/home/jerry/dotfiles/scripts/keyboard/keyboard-default/init_keys.sh &"; mode default
bindsym Shift+k exec "/home/jerry/dotfiles/scripts/keyboard/ik &"; mode default
bindsym Shift+w exec feh --recursive --randomize --bg-fill ~/Wallpaper; mode default
bindsym Shift+r exec "/home/jerry/dotfiles/scripts/cline_scripts/restart_terminals"; mode default
bindsym z exec "google-chrome-stable"; mode default
bindsym q exec "qbittorrent"; mode default
bindsym e [title="term-up"] move scratchpad; [title="term-ranger"] move scratchpad; exec "emacsclient --socket-name=gui-emacs --no-wait --create-frame"; mode default

# bindsym Shift+u exec "st2 -t term-up -n term-up"; mode default
# bindsym Shift+r exec "st2 -t term-ranger -n term-ranger -e ranger"; mode default

bindsym Escape mode default; exec notify-send --expire-time=250 'mode: default'
bindsym $mod+g mode default; exec notify-send --expire-time=250 'mode: default'

}


bindsym $mod+Shift+space floating toggle; mode "$floating"
bindsym $mod+apostrophe; mode "$tilling"; exec notify-send --expire-time=250 'tilling'

mode "$tilling" {

bindsym $left  resize grow   width  10 px or 10 ppt
bindsym $right resize shrink width  10 px or 10 ppt
bindsym $up    resize shrink height 10 px or 10 ppt
bindsym $down  resize grow   height 10 px or 10 ppt

# same bindings, but for the arrow keys
bindsym Left   resize shrink width  10 px or 10 ppt
bindsym Down   resize grow   height 10 px or 10 ppt
bindsym Up     resize shrink height 10 px or 10 ppt
bindsym Right  resize grow   width  10 px or 10 ppt
bindsym $mod+apostrophe; mode "$floating"; exec notify-send --expire-time=250 --expire-time=250 'floating'
bindsym Escape mode default; exec notify-send --expire-time=250 'mode: default'
bindsym $mod+q kill; mode default; exec notify-send --expire-time=250 'mode: default'
bindsym $mod+g mode default; exec notify-send --expire-time=250 'mode: default'
}

mode "$floating" {

bindsym $mod+$left move Left 80px
bindsym $mod+$right move Right 80px
bindsym $mod+$up move Up 80px
bindsym $mod+$down move Down 80px

bindsym Left focus Left
bindsym Down focus Down
bindsym Up focus Up
bindsym Right focus Right

bindsym Shift+h resize shrink Left   36 px or 36 ppt
bindsym h resize grow Left           36 px or 36 ppt

bindsym Shift+j resize shrink height 36 px or 36 ppt
bindsym j resize grow height         36 px or 36 ppt

bindsym Shift+k resize shrink height 36 px or 36 ppt
bindsym k resize grow height         36 px or 36 ppt

bindsym Shift+l resize shrink width  36 px or 36 ppt
bindsym l resize grow width          36 px or 36 ppt

bindsym $mod+apostrophe floating disable; mode default; exec notify-send --expire-time=250 'mode: default'
bindsym $mod+Shift+space floating disable; mode default; exec notify-send --expire-time=250 'mode: default'

bindsym $mod+q kill; mode default; exec notify-send --expire-time=250 'mode: default'
bindsym Escape kill; mode default; exec notify-send --expire-time=250 'mode: default'

bindsym $mod+g mode default; exec notify-send --expire-time=250 'mode: default'
}

bindsym $mod+equal scratchpad show
bindsym $mod+Shift+minus move scratchpad; mode default
for_window [class="Autokey-gtk" title="AutoKey"] move scratchpad

for_window [title="term-up"] border none
for_window [title="term-up"] floating enable sticky enable
for_window [title="term-up"] move scratchpad
for_window [title="term-up"] resize set 1250 450; move to position 350 0
bindsym $mod+u [title="mrblack"] move scratchpad; [title="term-ranger"] move scratchpad; [title="term-up"] scratchpad show; move to position 350 0; move to position 350 0

for_window [title="term-ranger"] border none
for_window [title="term-ranger"] floating enable sticky enable
for_window [title="term-ranger"] move scratchpad
for_window [title="term-ranger"] resize set 1250 450; move to position 350 0
bindsym $mod+i [title="mrblack"] move scratchpad; [title="term-up"] move scratchpad; [title="term-ranger"] scratchpad show; move to position 350 0

for_window [class="Hexchat" title="mrblack"] border none
for_window [class="Hexchat" title="mrblack"] floating enable sticky enable
for_window [class="Hexchat" title="mrblack"] move scratchpad
for_window [class="Hexchat" title="mrblack"] resize set 1250 450; move to position 350 0
bindsym $mod+o [title="term-ranger"] move scratchpad; [title="term-up"] move scratchpad; [title="mrblack"] scratchpad show; move to position 350 0

set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9; workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10; workspace $ws10

bindsym $mod+Control+1 move container to workspace $ws1
bindsym $mod+Control+2 move container to workspace $ws2
bindsym $mod+Control+3 move container to workspace $ws3
bindsym $mod+Control+4 move container to workspace $ws4
bindsym $mod+Control+5 move container to workspace $ws5
bindsym $mod+Control+6 move container to workspace $ws6
bindsym $mod+Control+7 move container to workspace $ws7
bindsym $mod+Control+8 move container to workspace $ws8
bindsym $mod+Control+9 move container to workspace $ws9
bindsym $mod+Control+0 move container to workspace $ws10

bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

bindsym $mod+F10 mode "$output"

mode "$output" {

#### SCREENS ####
bindsym 1 exec "~/scripts/screen/mx-hdmi-screen.sh"; mode default
bindsym 2 exec "~/scripts/screen/mx-dual-screen.sh"; mode default
bindsym 3 exec "~/scripts/screen/mx-built-in-screen.sh"; mode default

#### AUDIO ####
bindsym F1 exec "pactl set-card-profile 0 output:hdmi-stereo"; mode default
bindsym F2 exec "pactl set-card-profile 0 output:analog-stereo"; mode default

bindsym Escape; exec notify-send --expire-time=250 --expire-time=1000 "mode default"; mode default
}

bindsym $mod+p workspace prev_on_output
bindsym $mod+n workspace next_on_output

# bindsym Control+Shift+Left workspace prev_on_output
# bindsym Control+Shift+Right workspace prev_on_output

bindsym $mod+Control+h move container to output left; focus output Left
bindsym $mod+Control+l move container to output right; focus output Right
bindsym $mod+Control+Left move container to output left; focus output Left
bindsym $mod+Control+Right move container to output right; focus output Right

bindsym $mod+Control+Shift+h move workspace to output Left
bindsym $mod+Control+Shift+l move workspace to output Right
bindsym $mod+Control+Shift+Left move workspace to output Left
# bindsym $mod+Control+Shift+Right move workspace to output Right

bindsym $mod+Shift+n focus output Right
bindsym $mod+Shift+p focus output Left

bindsym XF86AudioPlay exec playerctl play-pause
bindsym XF86AudioMute exec amixer -q set Master toggle
bindsym XF86AudioRaiseVolume exec amixer set Master 10%+
bindsym XF86AudioLowerVolume exec amixer set Master 10%-
bindsym $mod+XF86AudioRaiseVolume exec amixer set Master 200%+
bindsym $mod+$alt+XF86AudioRaiseVolume exec amixer set Master 5%+
bindsym $mod+$alt+XF86AudioLowerVolume exec amixer set Master 5%-

for_window [class="GParted"] floating disable border normal
for_window [class="Gnome-pomodoro"] floating disable
for_window [class="Inkscape" title="Document Properties"]  floating disable resize set 720 400  move position 650
for_window [class="Inkscape" title="Preferences"]  floating disable resize set 720 400  move position 650
for_window [class="Spotify"] floating disable
for_window [class="Timeshift-gtk"] floating disable
for_window [class="VirtualBox Manager"] floating disable
for_window [class="calibre"] floating disable
for_window [class="feh"] floating disable
for_window [class="jetbrains-idea" title="Project Structure"] floating disable
for_window [class="mx-tools"] floating disable
for_window [class="qBittorrent"] floating disable
for_window [class="vlc" title="Advanced Preferences"] floating disable
for_window [class="vlc" title="Simple Preferences"] floating disable
for_window [title="Welcome to IntelliJ IDEA"] floating disable
for_window [title="Welcome to PyCharm"] floating disable

for_window [class="(?i)System-config-printer.py"] floating enable border normal
for_window [class="(?i)virtualbox"] floating enable border normal
for_window [class="Clipgrab"] floating enable
for_window [class="File-roller"] floating enable resize set 720 400
for_window [class="Galculator"] floating enable border pixel 1
for_window [class="Godot" title="^Jumper$"]  floating enable
for_window [class="Godot" title="^Loony_Lips$"] floating enable
for_window [class="Inkscape" title="Preferences"]  floating enable resize set 720 400  move position 650 0
for_window [class="Lightdm-settings"] floating enable
for_window [class="Lxappearance"] floating enable sticky enable border normal
for_window [class="Manjaro Settings Manager"] floating enable border normal
for_window [class="Manjaro-hello"] floating enable
for_window [class="Nitrogen"] floating enable sticky enable border normal
for_window [class="Oblogout"] fullscreen enable
for_window [class="Pamac-manager"] floating enable
for_window [class="Qtconfig-qt4"] floating enable sticky enable border normal
for_window [class="Simple-scan"] floating enable border normal
for_window [class="Skype"] floating enable border normal
for_window [class="Timeset-gui"] floating enable border normal
for_window [class="Xfburn"] floating enable
for_window [class="Xfrun4"] floating enable resize set 520 200
for_window [class="calamares"] floating enable border normal
for_window [class="octopi"] floating enable
for_window [class="qt5ct"] floating enable sticky enable border normal
for_window [title="About Pale Moon"] floating enable
for_window [title="File Transfer*"] floating enable
for_window [title="MuseScore: Play Panel"] floating enable
for_window [title="alsamixer"] floating enable border pixel 1
for_window [title="i3_help"] floating enable sticky enable border normal
for_window [title="term Preferences"] floating enable
for_window [title="Atomic Chrome"] resize set 1367 384; move to position 0 0

assign [class="Gnome-pomodoro"] $ws10
for_window [class="Emacs"] border normal
for_window [class="Gimp"] border normal
for_window [class="Spotify"] move to workspace 10
for_window [urgent=latest] focus
for_window [class="Emacs" title=" EMACS DEBUG"] move workspace 2

exec --no-startup-id i3-msg workspace $ws1
