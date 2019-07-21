all: call_shellcode stack exploit

call_shellcode: call_shellcode.c
	gcc -z execstack -o call_shellcode call_shellcode.c

stack: stack.c
	gcc -z execstack -o stack stack.c

exploit: exploit.c
	gcc -o exploit exploit.c

.PHONY: clean
clean:
	-rm exploit stack call_shellcode
