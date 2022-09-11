# From LaTeX pdf to Obsidian MD

I ran some commands to start with the process of creating links in Obsidian.

Create md files and move them to their respective folder.
```bash
for i in es/latex/chapters/*.tex ; do echo "$i" && pandoc -s $i -o $i.md ; done
mv es/latex/chapters/*.md es/md/chapters/
```

Then remove the tex format from md file.
```bash
for i in es/latex/chapters/*.tex.md ; do echo "$i" && mv $i "${i//\.tex/}"; done
```
