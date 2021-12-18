#!/usr/bin/awk -f

#############################################################################
# I don't even know how anymore, but this still works on my input...
# Questionable hacks:
# - reducing first record
# - adding the same record to itself
# - the max pair must be larger than the overall total
#############################################################################

END{print M()g;for(u in N)for(m in N)S(u m)M();print B}gsub(/,|()/,FS)N[$0]&&
S(O$0)function M(){+((g=$1)sub(/ *./,z))||g=M()+g*3+M()+g*2;B<g&&B=g;sub(/]/,
z)}function S(u,m){for($0=u?"[ "u"]":$0;++u<s=NF;m-=$u~/]/){if(4<m+=$u~/\[/){
--$u++;b<u&&$b+=$u;for(b=++u;b++<s;)if(1-(1$b)){$b+=$u;b=s}u=m=sub(/-[^]]*]/,
-z)}1-(1$u)&&b=u}for(;++m<u;)(4<l=int($m/2))&&S(0,$m="[ "l" "$m-l" ]")}{O=$0}
