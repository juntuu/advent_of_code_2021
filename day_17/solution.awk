#!/usr/bin/awk -f

gsub(/[=.,]/,FS){for(A=B=i=0;i++<$5;)for(j=$7;-$7>=Y=j++;)
{X=i;for(x=y=0;(x<$4||x>$5||y<$7||y>$8||!++B*(j>A&&A=j))&&
x<$5&&y>$7&&(X||x>$4);X&&x+=X--)y+=Y--}print(A^2-A)/2RS B}
