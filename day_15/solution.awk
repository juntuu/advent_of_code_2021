#!/usr/bin/awk -f

function R(i,s,k){!i||(i=s FS k)in S||(q=v+int(substr(M[k%H],
s%H+1,1)+k/H+int(s/H)-1)%9+1)*Q[i]>Q[i]||Q[i]=q}{g=M[H++]=$0}
END{for(;X++<5;X*=4)for(v=k=0;S[$0=k]k;delete Q[k]){k=R(y=$2,
x=$1,y-1)R(x,x-1,y)R(x<i=H*X,++x,y)R(y<i,x-1,++y);if(x y~i i)
{print v;delete Q;delete S};v=g;for(i in Q)Q[i]<v&&v=Q[k=i]}}
