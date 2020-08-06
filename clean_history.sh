#!/bin/bash

"Script for cleaning history file"

file="/home/nathyane/.bash_history"

while IFS= read line
do
	"sed '/cd../d'

done < "$file

