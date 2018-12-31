
//diese zeile in cmd / git shell ausführen um UTF-8 BOM in UTF-8 zu konvertieren
find . -type f -iname "*.java" -exec sed '1s/^\xEF\xBB\xBF//' -i.bak {} \; -exec rm {}.bak \;