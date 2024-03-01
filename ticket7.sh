#!/bin/bash
#write a script to validate the votes and victory of presidential canditates (mr biya and kamto)
#if mr biya votes is more 5000 the he is the winner but if kamto votes is equall to or less than 5000 then he is the winner.

echo "hello fellow citizens welcome to the elecam platform,kindly put your president name and number of votes to acertain the election outcome"
read name
echo put number of votes registered by your candidate mr $name
read votes
echo hello `whoami`,mr $name gannered $votes votes
if [ $votes -gt 5000 ]
then
echo congratulations mr $name is the newly elected president of cameroon
else
echo sorry mr $name lost the election.
fi
