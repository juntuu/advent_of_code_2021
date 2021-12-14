#/usr/bin/awk -f

sub(/,|=/,FS)NF~2{D[$0]}/f/{/x/?X=$4:Y=$4;for(k in D){split(k,a)
x=a[1];y=a[2];if(/x/&&x>X){delete D[k];D[2*X-x" "y]}if(/y/&&y>Y)
{delete D[k];D[x" "2*Y-y]}}}/ld/&&!A{for(k in D)A++;print A}END{
for(y=-1;++y<Y;print z)for(x=-1;++x<X;)printf(x" "y)in D?"@":FS}
