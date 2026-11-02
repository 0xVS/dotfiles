function ws --description "öffnet eine URL direkt oder sucht auf Google"
    if test (count $argv) -eq 0
        echo "Usage: ws <query or url>"
        return 1
    end

    set -l input "$argv[1]"
    set -l target

    if string match -q  -- '--help' $argv
        echo "Usage: ws <query or url>"
        return 0
    end


    if string match -qr '^localhost(:\d+)?(/.*)?$' -- $input
        set target "http://$input"
    else if string match -qr '^https?://\S+$' -- $input
        set target $input
    else if string match -qr '^(www\.|([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(/.*)?$)' -- $input; and not string match -qr '\.(txt|md|py|json|js|html|sh|xml|csv)$' -- $input
        set target "https://$input"
    else
        set target "https://www.google.com/search?q="(string escape --style=url -- "$argv")
    end

    xdg-open $target >/dev/null 2>&1 & disown
end
