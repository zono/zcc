# zcc

zcc is a copy of 9cc (https://github.com/rui314/9cc) to understand C compiler.

## compile

```
$ docker-compose up -d
$ docker exec -it ubuntu /bin/bash
# cd zcc
# make
# echo 'int main() { return 10; }' | ./zcc - > tmp-test1.s
# gcc -static -o tmp-test1 tmp-test1.s
# ./tmp-test1
# echo $?
10
```