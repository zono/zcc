# zcc

## 9cc

https://github.com/rui314/9cc

## compile

```
$ docker-compose up -d
$ docker exec -it ubuntu /bin/bash
# cd zcc
# echo 'int main() { return 10; }' | ./zcc - > tmp-test1.s
# gcc -static -o tmp-test1 tmp-test1.s
# ./tmp-test1
# echo $?
10
```