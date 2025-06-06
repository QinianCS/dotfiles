# c="clear" \
# v="nvim" \
# f="fff" \
# cat="bat" \
# l="ls -lh --color=auto --group-directories-first" \
# ls="ls -h --color=auto --group-directories-first" \
# la="ls -lah --color=auto --group-directories-first" \
# grep="grep --color=auto" \
# shell="exec $SHELL -l" \
# fk="sudo !!" \
# mv="mv -i" \
# rm="rm -Iv" \
# df="df -h" \
# du="du -h -d 1" \
# k="killall" \
# p="ps aux | grep $1" \
alias tl="tmux ls"
alias tn="tmux new -s"
alias td="tmux new -ds"
alias ta="tmux a"
alias tt="tmux a -t"

alias f="flatpak"
alias fs="flatpak search"
alias fu="flatpak update"
alias fr="flatpak remove"
alias fru="flatpak remove --unused"
alias fi="flatpak install"
alias fiu="flatpak install --user"

alias a="sudo apt"
alias ai="sudo apt install"
alias ar="sudo apt remove"

alias b="sudo btrfs"
alias bs="sudo btrfs subvolume"
alias bf="sudo btrfs filesystem"

# alias c cargo
# alias cn "cargo +nightly"

alias c="chezmoi"
alias ca="chezmoi add"
alias cae="chezmoi add --encrypt"
alias cs="chezmoi status"
alias cdiff="chezmoi diff"
alias cr="chezmoi re-add"
alias cg="chezmoi git --"

alias ll="lsd -lh"
alias lh="lsd -lh"
alias lah="lsd -lah"
alias ls="lsd"
# alias ls "ls --human-readable --literal --group-directories-first --color=auto"
# alias ls "eza --group-directories-first"
alias l "lsd -l"
# alias l "eza -l"
alias la "l -a"

alias mkdir "mkdir -p"
alias mv "mv -i"

alias s="sudo systemctl"
alias sdu="systemctl --user"
alias jc journalctl
alias jcn "journalctl --no-hostname"
alias jcnb "journalctl --no-hostname -b"
alias jcneb "journalctl --no-hostname -eb"
alias jcnuu "journalctl --no-hostname --user-unit"

alias g git
alias ga "git add"
alias gap "git add -p"
alias gau "git add -u"
alias gb "git branch"
alias gbD "git branch -D"
alias gbd "git branch -d"
alias gc "git commit"
alias gca "git commit -a"
alias gcaa "git commit -a --amend"
alias gcam "git commit -am"
alias gch "git checkout"
alias gchb "git checkout -b"
alias gchm "git checkout main"
alias gcm "git commit -m"
alias gd "git diff"
alias gdc "git diff --cached"
alias gf "git fetch"
alias gfo "git fetch origin"
alias gfu "git fetch upstream"
alias gl "git log"
alias glG "git log -G"
alias glo "git log --oneline"
alias gm "git merge"
alias gpul "git pull"
alias gpulo "git pull origin"
alias gpulu "git pull upstream"
alias gpus "git push"
alias gpusf "git push --force-with-lease"
alias gpusu "git push -u"
alias gpusuo "git push -u origin"
alias gr "git rebase"
alias gri "git rebase -i"
alias grm "git remote"
alias grp "git rev-parse"
alias gs "git status"
alias gss "git status --short"
alias gsh "git show"
alias gsp "git stash pop"
alias gst "git stash"
alias gsu "git submodule update"
alias gsui "git submodule update --init"
alias gsuir "git submodule update --init --recursive"

alias gcl "gix clone"
alias gp "git push"
alias gpu "git pull"

alias man="batman"
alias ip='ip -color=auto'
alias grep='grep --color=auto'
# alias v="codium --ozone-platform-hint=wayland --password-store=gnome-libsecret --gtk-version=3 --ignore-gpu-blocklist --enable-wayland-ime --enable-features=TouchpadOverscrollHistoryNavigation,WaylandWindowDecorations --ozone-platform=wayland --wayland-per-window-scaling --wayland-text-input-version=3"
alias v="codium"
# alias sr="screen"
alias ze="zellij"
# alias srd="screen -dmS"
alias g1="sh ~/n/scripts/gitclonedepthone.sh"
#md
alias zki="zk inbox"
# alias hxo="helix -w ~/n/notes"
# alias xdg-open "handlr"
# fish setting
set -U fish_greeting
