#!/bin/sh

#. "$(command -v use)"
#use '@gh/tayadev/uikit'
. ./uikit

statusline="(type a key)"

render() {
    cursor_position
    erase_display
    echo "> $statusline"
}

render
while key=$(uikit_key); do
    case $key in
        k|'up')    statusline='Up';;
        j|'down')  statusline='Down';;
        l|'right') statusline='Right';;
        h|'left')  statusline='Left';;
        q)         uikit_quit;;
    esac
    render
done
