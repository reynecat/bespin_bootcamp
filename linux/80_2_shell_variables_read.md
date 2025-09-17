인자와 read를 함께 사용하여 변수 조합 출력

~$ 80_2_shell_variables_read.sh agument_first
 read input : read_first

input values : agument_first read_first

~~~

echo "명령행 인자: $1"
read -p "사용자 입력: " user_input
echo "조합 결과: $1 + $user_input = $1_$user_input"

~~~