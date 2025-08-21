#!/usr/bin/env bash
# useless change
# another useless change
# testing 1, 2, ... 3
# blah

cd /home/dkuehn/spack

echo 'This is a useless feature'

backup_dir="/home/dkuehn/castep-project/spack-backups"

files=$(git status | grep modified | cut -d':' -f 2 | cut -d '/' -f7,8 | tr '/' '-')

for file in ${files[@]}
do
	if [[ -f $backup_dir/$file ]]
	then
		mv $backup_dir/$file $backup_dir/$file.bak
	fi
	echo $file
done
