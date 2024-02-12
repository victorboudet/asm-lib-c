##
## EPITECH PROJECT, 2024
## minilibC
## File description:
## Makefile
##

LIBNAME = libasm.so

SRC = 	strlen.s\
		strchr.s\
		strrchr.s\
		memset.s\
		memcpy.s\
		strcmp.s\
		strncmp.s\

OBJ = $(SRC:.s=.o)

ASM = nasm
CFLAGS = -fno-builtin -L. -lasm -Wl,-rpath,.
ASMFLAGS = -f elf64
LDFLAGS = -shared
TEST_PROG = test_prog
LD = ld

all: $(LIBNAME)

$(LIBNAME): $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.s
	$(ASM) $(ASMFLAGS) -o $@ $<

test: $(LIBNAME) tests/main.c
	$(CC) $(CFLAGS) tests/main.c -o $(TEST_PROG)
	./$(TEST_PROG)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(LIBNAME)
	$(RM) $(TEST_PROG)

re: fclean all

.PHONY: all clean
