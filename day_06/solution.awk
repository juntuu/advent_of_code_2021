#!/usr/bin/awk -f

!++A[$1]function D(a,y,s){for(;t<a;t++)A[(t+7)%9]+=A[t%9]
for(y in A)s+=A[y];print s}END{D(8e1)D(2^8)}BEGIN{RS=","}
