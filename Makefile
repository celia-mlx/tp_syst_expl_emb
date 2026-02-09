# Q14 : On renomme les fichiers .s pour ne pas les écraser
clean:
	rm -f x86-hello arm-hello *.s

x86-hello: hello.c
	gcc -S hello.c
	mv hello.s hello_x86.s
	gcc -o x86-hello hello.c

arm-hello: hello.c
	arm-none-linux-gnueabihf-gcc -S hello.c
	mv hello.s hello_arm.s
	arm-none-linux-gnueabihf-gcc -o arm-hello hello.c
