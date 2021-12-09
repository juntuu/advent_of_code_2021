#!/usr/bin/awk -f

{split($0,q,/,/);l=A=B=1e9;for(x in q){x=q[x];x<l&&l=x
x>h&&h=x}for(;l++<h;){a=b=0;for(x in q){x=l-q[x];x<0&&
x=-x;a+=x;b+=x*(x+1)/2}a<A&&A=a;b<B&&B=b}print A"\n"B}
