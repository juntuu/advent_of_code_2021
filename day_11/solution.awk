#!/usr/bin/awk -f

function I(n,c){(k=y+n"\34"x+c)in G&&G[k]&&++G[k]}{for(i=split($0,a,z);i;i--)
G[NR,i]=a[i]}function S(){n=0;for(k in G)++G[k];do for(f=y=0;y++<10;)for(x=0;
x++<10;)if(G[y,x]>9){++n;G[y,x]=I(f=-1,f)I(f)I(f,1)I(0,f)I(0,1)I(1,f)I(1)I(1,
1)}while(f);n>99&&B=i}END{for(;++i<101;)A+=S()n;for(;!B;i++)S();print A"\n"B}
