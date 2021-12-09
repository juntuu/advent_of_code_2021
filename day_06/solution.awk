#!/usr/bin/awk -f

function D(a,y,s){for(;t<a;t++)A[(t+7)\
%9]+=A[t%9];for(y in A)s+=A[y];print s}
END{D(80)D(256)}BEGIN{RS=","}{A[+$0]++}
