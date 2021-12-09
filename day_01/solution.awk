#!/usr/bin/awk -f

END{print A"\n"B}{A+=NR>1&&$1>x[NR-1];B+=NR>3&&$1>x[NR-3];x[NR]=$1}
