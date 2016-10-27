#!/bin/bash

NAME=$(date +%y%m%d)

HOST='celinux2.khu.ac.kr'
USER='usp33'
FILE=$NAME'.tar'

MakeTarFile() {
	tar -cvzf $NAME.tar *
}

ConnectSFTP() {
	sftp $USER@$HOST 2> /dev/null << END_SCRIPT
	put $FILE
	quit
END_SCRIPT
}

for i in {0..75..3}
	do
		MakeTarFile > /dev/null
		ConnectSFTP > /dev/null
		rm $FILE

		sleep 3m
	done

exit 0
