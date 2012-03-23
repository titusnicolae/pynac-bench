#!/bin/bash
for x in *.sage
do
	if [ `echo $x | grep -e "[rs][0-9][^0-9]"` ]
	then 
		new=`echo $x | sed "s/\([rs]\)\(.*\)/\10\2/" `
		mv $x $new	
	fi
done
