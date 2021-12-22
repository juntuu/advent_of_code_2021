#!/usr/bin/awk -f

function V(C,n){for(k in C){$0=k;n+=($2-$1+1)*($4-$3+1)*($6-$5+1)*C[k]}
print n}function F(C,c){for(k in C)c[k];for(k in c)g(split(k,a))<G(5)||
g(4)<G(3)||g(2)<G(1)||C[G(1),g(2),G(3),g(4),G(5),g(6)]-=C[k];C[$0]+=O}{
O=/n/;gsub(/[^0-9-]+/,SUBSEP=FS)}$sub(FS,e)+99>$2{F(A)}F(B)END{V(A)V(B)
}function g(i){return$i<a[i]?$i:a[i]}function G(i){return-g(i)+$i+a[i]}
