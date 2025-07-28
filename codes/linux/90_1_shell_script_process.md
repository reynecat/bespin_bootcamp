## **✅ 문제 : 간단한 서버 관리 스크립트 작성**

### **🔧 요구사항**

* `start`: 포트 8000에서 `http.server`를 백그라운드로 실행 (`nohup`, 로그는 `server.log`)

* `stop`: 실행 중인 프로세스를 찾아 종료

* `status`: 프로세스가 실행 중인지 확인하여 출력

* `restart`: 중지 후 다시 실행

  ### **🎯 실행 예시**

  $ ./webserver.sh start  
  서버가 백그라운드에서 시작되었습니다.  
    
  $ ./webserver.sh status  
  서버 실행 중입니다. PID: 13579  
    
  $ ./webserver.sh stop  
  서버가 종료되었습니다.  
    
  $ ./[webserver.sh](http://webserver.sh) tail\_log  
  … log message 확인


문제 모두 조건에 따라:

* `if [ "$1" == "start" ]` 식으로 흐름 제어

* 변수 `PORT`, `PID`, `LOGFILE` 등을 정의해 구성 가능


~~~


PORT="8000"
LOGFILE="servers.log"
PIDFILE="server.pid"

if [ "$1" == "start" ]; then
        nohup python3 -m http.server $PORT > $LOGFILE 2>&1 & PID=$!
        echo $PID > $PIDFILE
        echo "The server started in the background."

elif [ "$1" == "status" ]; then
        PID=$(cat $PIDFILE)
        ps -p "$PID"
        echo "Server is running. PID: "$PID" " 

elif [ "$1" == "stop" ]; then
        PID=$(cat $PIDFILE)
        kill "$PID"
        rm "$PIDFILE"
        echo "Server shut down."

elif [ "$1" == "restart" ]; then
        PID=$(cat $PIDFILE)
        kill "$PID"
        rm "$PIDFILE"
        echo "Server shut down."
        nohup python3 -m http.server $PORT > $LOGFILE 2>&1 & PID=$!
        echo $PID > $PIDFILE
        echo "The server started in the background."

elif [ "$1" == "tail_log" ]; then
        cat "$LOGFILE"
        echo "Check log message"

fi

~~~

