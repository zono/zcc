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

## debug

```
# echo 'int main() { return 1+2; }' | ./zcc -debug -
====================
Debug Tokens
====================
int	ty=262	val=0	name=int
main	ty=258	val=0	name=main
(	ty=40	val=0	name=(null)
)	ty=41	val=0	name=(null)
{	ty=123	val=0	name=(null)
return	ty=296	val=0	name=return
1	ty=256	val=1	name=(null)
+	ty=43	val=0	name=(null)
2	ty=256	val=2	name=(null)
;	ty=59	val=0	name=(null)
}	ty=125	val=0	name=(null)
EOF	ty=301	val=0	name=(null)
====================
Debug Parser
====================
prog->gvars->len=0
prog->funcs->len=1
func->name=main
	// function
	op=ND_FUNC
	ty=FUNC
	name=main
		// body
		op=ND_COMP_STMT
			// stmt
			op=ND_RETURN
				// expr
				op=+
					// lhs
					op=ND_NUM
					ty=INT
					val=1
					// rhs
					op=ND_NUM
					ty=INT
					val=2
ty=FUNC
====================
.intel_syntax noprefix
.text
.global main
main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	push r12
	push r13
	push r14
	push r15
.L1:
	jmp .L2
.L2:
	mov r10, 1
	mov r11, 2
	mov r10, r10
	add r10, r11
	mov rax, r10
	jmp .Lend4
.L3:
	mov rax, r10
	jmp .Lend4
	mov r10, 0
.Lend4:
	pop r15
	pop r14
	pop r13
	pop r12
	mov rsp, rbp
	pop rbp
	ret
```