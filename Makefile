CC = gcc
CFLAGS = -masm=intel -no-pie -fno-stack-protector
TARGET = main
OBJECTS = main.o mov.o movsx.o movsxd.o movzx.o add.o sub.o xor.o jmp.o jne.o shl.o test.o

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^
	rm *.o
