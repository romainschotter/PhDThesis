!/bin/bash

DIFFTREE="/home/rschotte/Documents/Latex\ Documents/PhDThesis_v1/Master.tex"
WORKINGTREE="/home/rschotte/Documents/Latex\ Documents/PhDThesis/Master.tex"

latexdiff --exclude-textcmd="section,subsection" --flatten /home/rschotte/Documents/Latex\ Documents/PhDThesis_v1/Master.tex Master.tex > diffs.tex
