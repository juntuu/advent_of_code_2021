#!/usr/bin/awk -f

BEGIN{FS=",| -> "}function l(a){for(a[x=$1,y=$2]++;x-$3||y-$4;)
a[x+=($3>$1)-($3<$1),y+=($4>$2)-($4<$2)]++}$1==$3||$2==$4{l(A)}
END{for(i in A)a+=A[i]>1;for(i in B)b+=B[i]>1;print a"\n"b}l(B)
