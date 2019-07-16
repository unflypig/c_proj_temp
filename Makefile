CC = gcc#编译器名称
TARGET = main#目标文件名称
#当前目录下所有c文件
C_FILE = $(shell find -name "*.c")
#去除.c文件后缀
BASE = $(basename $(C_FILE))
#追加.o文件后缀
OBJT = $(addsuffix .o, $(BASE))
$(TARGET):$(OBJT)
	$(CC) -o $(TARGET) $(OBJT)

#清除编译产生的文件
.PHONY:clean
clean:
	-rm $(TARGET) $(OBJT)
