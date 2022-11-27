#!/bin/bash -x

cd starters

echo "Starters"
echo "Exercise 0 : yasl_hw"
./yasl_hw

echo "Exercise 1 : yasl_aff_param"
./yasl_aff_param Hello World 42 "Be Cool"
./yasl_aff_param

echo "Exercise 2 : yasl_do <value1> <operator> <value2>"
./yasl_do 21 "+" 42    ; echo;
./yasl_do 42 "-" 3     ; echo;
./yasl_do 42 "/" 4     ; echo;
./yasl_do 11 "*" 8     ; echo;
./yasl_do 42 "%" 17    ; echo;
./yasl_do 42 ">" 3     ; echo;
./yasl_do 42 "<" 3     ; echo;
./yasl_do 42 ">=" 3    ; echo;
./yasl_do 42 ">=" 42   ; echo;
./yasl_do 42 "<=" 3    ; echo;
./yasl_do 42 "<=" 42   ; echo;
./yasl_do 42 "==" 42   ; echo;
./yasl_do 42 "!=" 42   ; echo;

echo "Exercise 3 : yasl_repeat <start_num> <value1> [ <value2> [ ...]]"
./yasl_repeat 4 Bonjour "how are you ?"
./yasl_repeat 1 "************" "******" "****" "---"
./yasl_repeat 0 hello
./yasl_repeat a hello
./yasl_repeat 2a hello

echo "Exercise 4 : yasl_fact <num>"
./yasl_fact 0
./yasl_fact 1
./yasl_fact 2
./yasl_fact 3
./yasl_fact 4
./yasl_fact 5
./yasl_fact 10
./yasl_fact 20
./yasl_fact 21
./yasl_fact 22
./yasl_fact 23
./yasl_fact -1
./yasl_fact hello
./yasl_fact -42

echo "Exercise 5 : yasl_split <separator> <string>"
./yasl_split a ljksdpoiapoipoialljlaiuoiu
./yasl_split " " " Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
./yasl_split
./yasl_split a
./yasl_split a b c
./yasl_split aa ljksdpoiapoipoialljlaiuoiu

echo "Exercise 6 : yasl_interactive"
./yasl_interactive <<EOF
42
21
+ "\n" +
print
63
EOF

echo "Main course"
cd ../main_course
cat images/img1.rgb.b64 | ./display_b64
cat images/img2.rgb.b64 | ./display_b64
cat images/img3.rgb.b64 | ./display_b64
cat images/img4.rgb.b64 | ./display_b64
cat images/img5.rgb.b64 | ./display_b64
cat images/faulty1.rgb.b64 | ./display_b64
cat images/faulty2.rgb.b64 | ./display_b64
