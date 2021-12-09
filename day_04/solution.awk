#!/usr/bin/awk -f

Squid bingo ~n{n=split($0,N,",")}gsub(ORS," \n "){B[NR]=FS$0FS}
END{for(;i++<n;)for(j in B)if(sub(" "N[i]" "," , ",B[j])*!W[j])
{w=B[j]~/( *,){5}/;for(o=1;o++<5*!w;w=x~5){x=!split(B[j],l,ORS)
for(p in l)x+=split(l[p],q)q[o]~","}if(W[j]=w){x=!split(B[j],q)
for(k in q)x+=q[k]*N[i];if(z~y)print x;y=x}}print y}BEGIN{RS=z}
