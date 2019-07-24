all: retlib exploit

retlib: retlib.c
	gcc -fno-stack-protector -z noexecstack -o retlib retlib.c

exploit: exploit.c
	gcc -o exploit exploit.c

.PHONY:clean
clean:
	-rm retlib exploit
