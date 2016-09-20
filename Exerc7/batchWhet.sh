#!/bin/bash

i=0
n=4
O0Mean=0
O1Mean=0
O2Mean=0
O3Mean=0
echo O0 O1 O2 O3
while [ $i -lt $n ]
do
    O0=$(./whetO0 | grep "MIPS" | cut -d " " -f6)
    O1=$(./whetO1 | grep "MIPS" | cut -d " " -f6)
    O2=$(./whetO2 | grep "MIPS" | cut -d " " -f6)
    O3=$(./whetO3 | grep "MIPS" | cut -d " " -f6)
    echo $O0 $O1 $O2 $O3
    #O0Mean=$(bc <<< "scale=3;$O0Mean + $(./whetO0 | grep "MIPS" | cut -d " " -f6)")
    #O1Mean=$(bc <<< "scale=3;$O1Mean + $(./whetO1 | grep "MIPS" | cut -d " " -f6)")
    #O2Mean=$(bc <<< "scale=3;$O2Mean + $(./whetO2 | grep "MIPS" | cut -d " " -f6)")
    #O3Mean=$(bc <<< "scale=3;$O3Mean + $(./whetO3 | grep "MIPS" | cut -d " " -f6)")
    let i=i+1
done
#O0Mean=$(bc <<< "scale=3;$O0Mean/$n")
#O1Mean=$(bc <<< "scale=3;$O1Mean/$n")
#O2Mean=$(bc <<< "scale=3;$O2Mean/$n")
#O3Mean=$(bc <<< "scale=3;$O3Mean/$n")
