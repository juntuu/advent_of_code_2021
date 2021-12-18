#!/usr/bin/awk -f

function b(i,t){for(;i--;sub(/./,z))t=t*2+(/^1/);return t}function D(e,c,o,d,E)
{A+=b(3);if(4~e=b(3))do;while(b(1)*(d=b(4,d)));else{c=b(1)?b(11):o=b(15)-length
for(d=e~2?1e9:e;c--&&length+o;e||d+=B){D(E=B)e~1&&d*=B;e~2&&B<d&&d=B;e~3&&B>d&&
d=B}e~5&&d=E>B;e~6&&d=E<B;e~7&&d=E==B}B=d}{for(split("0124936DA5B7FEC8",H,i=z);
i++<16;)gsub(H[i],substr("0000100110101111000 de Bruijn",i,4));print D()A"\n"B}
