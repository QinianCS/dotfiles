# while clipnotify
    # xclip -selection clipboard -o | wl-copy
# end &
while clipnotify; do xclip -selection clipboard -o | wl-copy; done &
