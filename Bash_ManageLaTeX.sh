#!/bin/bash

# Fichier LaTeX à compiler :
theMainLatexFile="aliceCDSpreprint_Master"
theIRCLatexFile="aliceIRCreport_Master"


# =======================================================
#   - w/  argument: COMPILATION
#   - w/o argument: CLEANUP
# =======================================================

if [ -z ${1} ]
then
   # Si aucun argument n'est donné au script, on compile le fichier LaTeX
   if pdflatex --shell-escape ${theMainLatexFile}.tex && bibtex ${theMainLatexFile}
   
   # if latex --shell-escape ${theMainLatexFile}.tex && bibtex ${theMainLatexFile}
    # dvips -R0 -o ${theMainLatexFile}.ps ${theMainLatexFile}.dvi && ps2pdf14 ${theMainLatexFile}.ps  ${theMainLatexFile}.pdf
    # echo "dvips done ..."
    # echo "ps2pdf done ..."
   
   then
      echo "--------------------------"
      echo "CDSpreprint, Latex done ..."
      echo "CDSpreprint, Bibtex done ..."
   fi
elif [[ ${1} == "IRC" ]]
then
   # Si un argument "IRC" est donné au script, on compile le fichier LaTeX dédié à l'Internal Review Committee
   if pdflatex --shell-escape ${theIRCLatexFile}.tex && bibtex ${theIRCLatexFile}
   
   # if latex --shell-escape ${theIRCLatexFile}.tex && bibtex ${theIRCLatexFile}
    # dvips -R0 -o ${theIRCLatexFile}.ps ${theIRCLatexFile}.dvi && ps2pdf14 ${theIRCLatexFile}.ps  ${theIRCLatexFile}.pdf
    # echo "dvips done ..."
    # echo "ps2pdf done ..."
   
   then
      echo "--------------------------"
      echo "IRC report, Latex done ..."
      echo "IRC report, Bibtex done ..."
   fi  
   
elif [[ ${1} == "cleanall" ]]
then
   # Si un argument "cleanall" est donné au script, on fait un ménage complet (temp + PDF) avant un commit
   rm -f *.aux *.out *.ilg *.blg *.log *.bbl *.toc *.lof *.lot *.ptc *.mtc* *.ent *.idx *.ind *.dvi *~
   rm -f *.fls *.fdb_latexmk
   rm -f ${theMainLatexFile}.pdf
   rm -f ${theIRCLatexFile}.pdf
   echo "--------------------------"
   echo "Cleaning (tmp + pdf) done ..."
else
   # Si un argument quelconque est donné au script, on fait un peu de ménage avant un commit 
   # i.e. pas le pdf
   rm -f *.aux *.out *.ilg *.blg *.log *.bbl *.toc *.lof *.lot *.ptc *.mtc* *.ent *.idx *.ind *.dvi *~
   rm -f *.fls *.fdb_latexmk
   echo "--------------------------"
   echo "Cleaning (tmp) done ..."

fi


exit 0;
