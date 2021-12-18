#!/usr/bin/awk -f

gsub(/[=.,]/,A=B=i=FS){for(;i++<$5;)for(j=$7;-$7>=Y=j++;x=y=0)for(X=i;!(y<$7||
x>$5||x>=$4&&y<=$8&&(j>A&&A=j)++B||!X&&x<$4);X&&x+=X--)y+=Y--}$0=(A^2-A)/2RS B
