#!/bin/bash

choice=$(echo -e 'Spotify\ncmus\nSpotify-tui' | rofi -dmenu -i -p 'Choose your
music player')

case $choice in
    Spotify)
        notify-send 'Launching Spotify' --urgency low
        spotify
        ;;

    cmus)
        notify-send 'Launching cmus' --urgency low
        urxvt -e 'cmus'
        ;;

    Spotify-tui)
        notify-send 'Launching Spotify-tui' --urgency low
        ;;
esac
