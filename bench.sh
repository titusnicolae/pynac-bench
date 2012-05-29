#!/bin/bash
trap 'exit' 2
RESULTS="results.log"
ERRORS="errors.log"
rm $RESULTS 
rm $ERRORS 
for x in *.sage
do
	echo $x
	echo $x >> $RESULTS
	echo $x >> $ERRORS 
	sage $x 1>> $RESULTS 2>> $ERRORS 
	echo " " >> $RESULTS
	echo " " >> $ERRORS
done
