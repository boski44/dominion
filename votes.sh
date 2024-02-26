#!/bin/bash
#write a script of how the presedential votes went down using the condition statements.
echo insert the president candidate name
read president
echo mr $president your registered votes is
read votes
if [ $votes -gt 5000 ]
then
echo $president won the election
echo `whoami` wishes a successful mandate to the new mr $president
else
echo we are sorry to announce that mr $president lost the election
fi
