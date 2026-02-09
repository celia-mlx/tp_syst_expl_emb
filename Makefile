x86-hello: hello.c
	gcc -o x86-hello hello.c

arm-hello: hello.c
	arm-none-linux-gnueabihf-gcc -o arm-hello hello.c

clean:
	rm -f x86-hello arm-hello
