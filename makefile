SRC=src
INC=include
OUT=hello

.SUFFIXES: .c .o
VPATH = $(SRC)

complie: $(OUT)
clean:
	rm $(OUT)
%.o: %.c
	gcc -c $^
hello.o: hello.c
	gcc -c $^ -I$(INC)
$(OUT): print.o hello.o
	gcc -o $(OUT) $^
	rm *.o

