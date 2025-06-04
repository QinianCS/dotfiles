tmux new -s helix 'helix -w ~/n' \; split-window -v -p 15 \; select-pane -t 1 \; resize-pane -Z || tmux a -t helix
