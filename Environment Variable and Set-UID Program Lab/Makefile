all: fork execve system uidenv uidls

fork: fork.c
	gcc fork.c -o fork

execve: execve.c
	gcc execve.c -o execve

system: system.c
	gcc system.c -o system

uidenv: uidenv.c
	gcc uidenv.c -o uidenv

uidls: uidls.c
	gcc uidls.c -o uidls

.PHONY:clean
clean:
	-rm fork execve system
