for i in *.md ; do echo "$i" && pandoc -s $i -o $i.html ; done
