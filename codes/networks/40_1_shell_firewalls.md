### **🧪 문제 1: 특정 IP 차단 상태 확인 후 차단 설정**

#### **✅ 실행 예시**

$ sudo ./problem1.sh

\[INFO\] 현재 rich rule 목록에 192.168.0.100 차단 룰이 존재하지 않습니다.

\[INFO\] 차단 룰을 추가합니다...


success

또는

$ sudo ./problem1.sh

\[INFO\] 192.168.0.100은 이미 차단되어 있습니다.

\[SKIP\] 추가 작업을 수행하지 않습니다.

---
~~~

#!/bin/bash
IP="$1" 

RULE="rule family='ipv4' source address='$IP' reject"

if sudo firewall-cmd --list-rich-rules | grep -q "$IP"; then
    echo "[INFO] The $IP blocking rule currently exists in the rich rule list."
    echo "[SKIP] Do not perform any additional actions."
else
    echo "[INFO] The $IP blocking rule does not currently exist in the rich rule list."
    echo "[INFO] Add blocking rule..."
    sudo firewall-cmd --permanent --add-rich-rule="$RULL"
    sudo firewall-cmd --reload
fi

[reyne@192.168.0.52 ~/aa]$ ./problem1.sh 192.168.0.44
[INFO] The 192.168.0.44 blocking rule does not currently exist in the rich rule list.
[INFO] Add blocking rule...
Error: INVALID_RULE: no element, no action
success

~~~

### **🔒 문제 2: 포트 8080이 열려 있다면 닫기**

#### **✅ 실행 예시**

$ sudo ./problem2.sh

\[INFO\] 포트 8080/tcp 이 열려 있습니다. 제거합니다...

success

또는

$ sudo ./problem2.sh

\[INFO\] 포트 8080/tcp 이 열려 있지 않습니다. 아무 작업도 수행하지 않습니다.

---

~~~

#!/bin/bash
PORT="$1"

if sudo firewall-cmd --list-ports | grep -q "$PORT"; then
    echo "[INFO] Port $PORT is open. Remove..."
    sudo firewall-cmd --permanent --remove-port=$PORT
    sudo firewall-cmd --reload
else
    echo "[INFO] Port $PORT is not open, no action is taken."
fi


[reyne@192.168.0.52 ~/aa]$ sudo ./problem2.sh 8080/tcp
[INFO] Port 8080/tcp is not open, no action is taken.

~~~

