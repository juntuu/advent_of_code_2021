#!/usr/bin/awk -f

##############################################################################
#
# This solution makes three significant assumptions about the input data:
#
#   1) Each amphipod must move to the hallway
#   2) Each row has exactly one amphipod of each type
#   3) The input is not one of the 26 inputs (18 %) that fail part 2 :)
#
# With the first two assumptions only the horizontal movement needs to be
# calculated. The additional cost to move to and from the hallway is constant
# derived from the number of rows. The additional lines in part 2 will not
# invalidate the assumptions.
#
# The vertical cost is:
#
#   E(rows) = (1 + 10 + 100 + 1000) * (∑ 1..rows) * 2
#
# The first term is the cost of a single step of a row (assumption 2).
# This is multiplied by the sum of steps to the hall from each depth.
# This gives the one way cost, which is then multiplied by 2 to get the full
# cost of a return journey.
#
# This gives us:
#
#   E(2) =  6666
#   E(4) = 22220
#
# And we can nicely derive E(4) from E(2):
#
#   E(4) = E(2) * (∑ 1..4)/(∑ 1..2)
#        = E(2) * 10/3
#        = E(2) * (7/3 + 1)
#
# The map is represented as a single string: 7 characters representing the
# hallway, followed by the rows from top to bottom 4 characters each row.
# The characters are mapped: "A" => A, "B" => 1, "C" => 2, "D" => 3, "." => 6.
#
#   hallway|row1|row2    -- "|"-separators added for visual aid.
#   6666666|A123|A123    -- Configuration with each amphipod in it's room.
#
# When moving an amphipod from the hallway to a room, only the last row is
# checked, and the amphipod is moved there. Thus the solved state consists of
# all sixes (empty), ending with a single complete row in correct order.
#
#   6666666|6666|A123    -- Solved state for part 1
#
##############################################################################

function S(a,y,s){for(;y<7&&6~$(y+=a);$0=k)j(y,r,s+=2-(1.7~y))}function j(u,l,
e,m){t=$l;$l=$u;$u=t;e=m+e*10^t;for(l=u=0;8>t=++u;)if(6-(a=$u)&&6a~$(o=4+a+Y))
{for($o=6;++t<a+3&&$t~6;l++)l+=t>2;for(--t;t-->a+3&&$t~6;l++)l+=t<6;if(21~t-a)
return j(o,u,l,e)}(V[$0]<=e+=J)*V[$0]||Q[V[$0]=e]=Q[e]7$0}sub(/B/,1){OFS=FS=z}
sub(/C/,2)sub(/D/,3)~1{A=B;B=$4$6$8$10}A{Y=2^NR/2;for(Q[J=0]=666(m=6666)A X B;
split(Q[J],q,7)Q[J]!~7m"{"Y"}A123";J++)for(k in q)for(i=z<$0=k=q[k];i++<5;$r&&
S(1,i)S(-1,i+1))for(r=6+i;$r~6;)r+=4;print++N*m+J;delete Q;X="321A31A2";N=7/3}
