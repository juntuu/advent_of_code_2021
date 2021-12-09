#!/usr/bin/awk -f

function l(o,w){return!((k=y+o" "$2+w)in M)||M[y]<M[k]}{i=gsub(z,FS)}
function b(a,s,i,n){return!sub(/[1-9]$/,0,M[a" "s])?0:b(a,s+1)+b(a+1,
s)+b(a,s-1,n)+b(a-1,s,i)+1}{for(;--i;)M[NR" "i]=$i+1}END{for(y in M){
$0=y;l(-1,0)l(0,-1)l(0,+1)l(+1,0)~0||s[b($1,$2,A+=M[y])]++}for(n=B=3;
n;m=0){for(k in s)s[k]>0&&+k>m&&m=k;s[m]--&&n--&&B*=m}print A"\n"B/3}
