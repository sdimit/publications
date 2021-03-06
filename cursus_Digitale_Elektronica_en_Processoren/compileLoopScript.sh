#!/bin/sh
if [ $# -le 0 ]
then
	msg="temp commit"
else
	msg=$1
fi
cd "`dirname $0`"
while true
do
	for i in {1..50}
	do
		make
		sleep 60
	done
	git add .
	git commit -S -a -m "$msg"
	git push --all
	git push --tags
done
