#!/usr/bin/awk -f

END {print x*y"\n"x*z} /f/ {x+=$2;z+=y*$2} /u/ {y-=$2} /n/ {y+=$2}
