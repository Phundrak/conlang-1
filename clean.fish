#!/usr/bin/env fish
set delfname "*.pdf" "*.tex" "*.aux" "*.log" "*.toc" "*.out" "*.html" "*.lol" "*.lot" "*.epub"
set deldname "auto" "_minted*" "svg-inkscape"
for f in $delfname
    find -type f -name $f -delete
end

for d in $deldname
    find -type d -name $d -exec rm -r {} +
end
