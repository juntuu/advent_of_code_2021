#!/usr/bin/awk -f

!/HO -> OH/{X[$1]=$3}END{S(10,N,A)S(29,A)}gsub(i,FS){for(o=O=$++i;$++i;
O=$i)N[O$i]++}function S(Y,N,T,H){H[o]++++H[O];for(p in N){split(p,a,z)
P=N[p];x=y=H[a[1]]+=P;H[a[2]]+=P;T[a[1]X[p]]+=P;T[X[p]a[2]]+=P}delete N
if(!Y){for(k in H)x>(k=H[k])?x=k:y<k&&y=k;print(y-x)/2}else S(Y-1,T,N)}
