#!/bin/bash
#create a directory called mydocument and a subdirectory called notesarchives.touch a file called notes.txt in the sub directory notesarchives

mkdir -p mydocument/notesarchives
cd mydocument/notesarchives
touch notes.txt
rm -rf  notesarchives/notes.txt
