shopt -s nullglob
for i in *.zip; do
    [ -f "$i" ] || break
    sudo zip2john $i >> hashes
done
