.POSIX:

include config.mk

TEST = test-zidane

SRC = test_zidane.c
OBJ = $(SRC:.c=.o)
INC = test_zidane_sleep.h

all: $(TEST)

$(OBJ): $(INC)

$(TEST): $(OBJ)

$(TEST): $(OBJ)
	$(CC) -o $@ $(OBJ) $(LDFLAGS)

.c.o:
	$(CC) -c -o $@ $< $(CPPFLAGS) $(CFLAGS)

test: $(TEST)
	./$(TEST)

clean:
	rm -f $(TEST) $(OBJ)

.PHONY: all test clean
