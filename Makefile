##
## EPITECH PROJECT, 2024
## minilibC
## File description:
## Makefile
##

LIBNAME = libasm.so

SRC = 	\
		memcpy.s\
		memmove.s\
		memset.s\
		strcasecmp.s\
		strchr.s\
		strcmp.s\
		strcspn.s\
		strlen.s\
		strncmp.s\
		strpbrk.s\
		strrchr.s\
		strstr.s\
		rindex.s\
		index.s\
		memfrob.s\

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

test: $(LIBNAME) main.c
	$(CC) $(CFLAGS) main.c -o $(TEST_PROG)
	./$(TEST_PROG)

test_debug: $(LIBNAME) main.c
	$(CC) main.c -o $(TEST_PROG) -g
	./$(TEST_PROG)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(LIBNAME)
	$(RM) $(TEST_PROG)

re: fclean all

.PHONY: all clean
