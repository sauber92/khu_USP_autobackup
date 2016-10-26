#!/bin/bash

NAME=$(date +%m%d%H%M)

HOST='User remote server ip'
USER='User id'
FILE=$NAME'.tar'

tar -cvzf $NAME.tar *

sftp $USER@$HOST << END_SCRIPT
put $FILE
quit
END_SCRIPT
exit 0
