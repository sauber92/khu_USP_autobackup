# khu_USP_autobackup

이 프로그램은 경희대학교 컴퓨터공학과 **Unix System Programming** 수업에서 사용하는 서버에서  
예비서버로 파일을 백업하기 위해 만들어진 bash shell program입니다.  

## 기능

이 프로그램은 현재 디렉토리의 있는 모든 내용을 tar를 통해 묶은 후,  
ftp를 통해 원격 서버로 전송하는 프로그램입니다.  
백업 파일의 이름은 "백업시간(month+day+hour+minute).tar" 로 되어있습니다.  

## 사용법

### 다운로드 및 권한 부여

backup.sh를 다운 받은 후, shell에서  

```
id@server:~$ chmod 755 backup.sh
```

와 같이 실행권한을 부여합니다.  

### 코드 수정

vi editor와 같은 편집기를 사용하여 backup.sh를 수정합니다.  

```
HOST='User remote server ip'   
USER='User id'
PASSWD='User password'
```

위의 변수를 사용자에 맞게 수정하면 됩니다.  

</br>

만약, 전체 폴더의 백업을 원하지 않는다면 11번째 줄에서  

```
tar -cvzf $NAME.tar *
```

`*` 을 지우고 자신이 원하는 파일의 명을 입력하면 됩니다.  

### 실행

```
id@server:~$ ./backup.sh
```

와 같이 실행을 하면 됩니다.  

## 제작

* 제작자 : 정준영(경희대학교 전자전파공학과, 컴퓨터공학과 학부)    
* 연락 : jjy920517@gmail.com, [github](https://github.com/sauber92), [Facebook](https://www.facebook.com/profile.php?id=100003258917365)  
* 언어 : bash shell script language
* 실행 환경 : Ubuntu 12.04.5 LTS
