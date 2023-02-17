% Figs/Chapter2/qqg.mp -- do not edit, generated automatically by Master.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 40*2.84526pt#, 25*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1);
vlabel ("$q$", __i1);
vlabel ("$\bar {q}$", __i2);
vconnect ("fermion", __i1, __v1);
vconnect ("fermion", __i2, __v1);
vconnect ("gluon,label=$g$, lab.dist=0.1w", __v1, __o1);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
