#!/bin/sh
RESULTS="results.log"
ERRORS="errors.log"
rm $RESULTS 
rm $ERRORS 
for x in *.sage
do
	echo $x
	echo $x >> $RESULTS
	echo $x >> $ERRORS 
#	cat $x >> $RESULTS 
	sage $x 1>> $RESULTS 2>> $ERRORS 
	echo " " >> $RESULTS
	echo " " >> $ERRORS
done
