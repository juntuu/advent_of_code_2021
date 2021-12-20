#!/usr/bin/awk -f

function I(m,a,g,e){++NR;for(y=l--+2;y<=NR;y++)for(x=l;++x<NR;n=0){
for(j=-2;++j<2;)for(i=-2;++i<2;n+=(y+j,x+i)in a?a[y+j,x+i]:m%2)n*=2
e+=g[y,x]=1!~K[n+1]}if(--m)I(m,g,a);else print e}END{I(2,P)I(48,P)}
NR<2{split($0,K,z)}NR>2{for(i=split($0,a,z);i;i--)P[NR,i]=a[i]~/#/}
