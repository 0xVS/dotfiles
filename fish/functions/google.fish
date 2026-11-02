function google --description "Searches query on Google and opens the result"
    #set -l query (string escape --style=url "$argv")
    set -l query (string join "+" $argv)
    set -l url (string join "" "https://google.com/search?q=" $query)
    xdg-open "$url" >/dev/null 2>&1
end
