#!/usr/bin/awk -f

sub(/lime.|-/,FS){M[$2]=M[$2]FS$1;M[$1]=M[$1]FS$2}
function P(a,t,h,s){a~/end/&&++n||a~/[a-z]/&&h~a&&
t++||split(M[a],s);for(k in s)s[k]~/star/||P(s[k],
t,h a)}END{print P("start",1)n"\n"P("start",n=0)n}
