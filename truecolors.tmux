#!/usr/bin/env bash
# vim: ft=sh ts=4 sw=4 expandtab

main() {
    if [[ "$__CFBundleIdentifier" =~ iterm ]]; then
        # iTerm2
        tmux set-option -g terminal-overrides ",xterm-256color:Tc"
    elif [[ "$__CFBundleIdentifier" =~ alacritty ]]; then
        # Alacritty
        tmux set-option -g terminal-overrides ",alacritty:RGB"
    fi
}
main
