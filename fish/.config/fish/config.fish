if status is-interactive
    # No greeting
    set fish_greeting

    # Use starship prompt
    if command -v starship &>/dev/null
        starship init fish | source
    end


    if command -v atuin &>/dev/null
        atuin init fish | source
    end

    # Apply terminal color sequences (Material You from wallpaper)
    #if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    #    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    #end

    set -g fish_color_valid_path green --underline

    # Aliases
    alias clear "printf '\033[2J\033[3J\033[1;1H'" # fix: kitty doesn't clear scrollback properly
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias vim nvim
    alias snake nsnake
    alias tetris bastet
    if command -v eza &>/dev/null
        alias ls 'eza --icons'
    end
    alias q 'qs -c ii'
end
