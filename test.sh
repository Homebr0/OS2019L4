#!/bin/bash

LISTLEN=201
TESTFILE=/test/bashpipingtest
TESTFILE2=/test/bashtest2

for i in `seq 1 $LISTLEN`
do
	echo "YOUR TEST FACE x$i TIMES" >> $TESTFILE
	echo "ANOTHER TEST x$i" >> $TESTFILE2
	echo "AHAHAHAHA x$i TIMES" >> $TESTFILE
done

TESTSIZE=$(stat -c%s "$TESTFILE")
TESTSIZE2=$(stat -c%s "$TESTFILE2")
