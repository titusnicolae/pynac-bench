#!/bin/bash
# TODO run in multiple threads
trap 'exit' 2
RESULTS="results.log"
ERRORS="errors.log"
TEMP_RESULTS=""
TEMP_ERRORS=""
njobs=0
if [ -f $RESULTS ]
then
	rm $RESULTS 
fi
if [ -f $ERRORS ]
then
	rm $ERRORS 
fi
list=""
COMMANDS="sage $x 1> $TEMP_RESULTS 2> $TEMP_ERRORS; 
echo $x; echo -e "$x\n$TEMP_RESULTS\n\n" >> $RESULTS; echo -e "$x\n$TEMP_ERRORS\n\n" >> $ERRORS;"
for command in $COMMANDS:
do
	echo $command
done
#for x in *.sage
#do
#	while [ $TEMP_ERRORS = 4 ]
#	do
#		sleep 1
#	done
#done

trap "echo 'A mers'" 1 
