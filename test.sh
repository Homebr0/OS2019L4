#!/bin/bash

LISTLEN=201
TESTFILE="test1.txt"
TESTFILE2="test2.txt"

for i in `seq 1 $LISTLEN`
do
	echo "Test 1x$i TIMES" >> $TESTFILE
	echo "Test 2x$i TIMES" >> $TESTFILE2
	echo "Test 3x$i TIMES" >> $TESTFILE
done

TESTSIZE=$(stat -c%s "$TESTFILE")
TESTSIZE2=$(stat -c%s "$TESTFILE2")
