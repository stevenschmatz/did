#!/usr/bin/env bash

FILE_PATH=~/did.md
DATE=`date +"# %B %d, %Y (%A)"`

# Try to see if date was already written to file
cat $FILE_PATH | grep "$DATE" > /dev/null
status=$?

if test $status -eq 0
then
	nvim +'normal Go' $FILE_PATH
else
	nvim +'normal Go' +'r!date +"\# \%B \%d, \%Y (\%A)"' $FILE_PATH
fi
