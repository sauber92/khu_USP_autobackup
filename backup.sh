#!/bin/bash

NAME=$(date +%m%d%H%M)

HOST='Your remote server ip'
USER='Your id'
PASSWD='Your password'
FILE=$NAME'.tar'

#tar file 만들기
tar -cvzf $NAME.tar *

#ftp를 백업
ftp -n $HOST << END_SCRIPT
quote USER $USER
quote PASS $PASSWD
put $FILE
quit
END_SCRIPT
exit 0
