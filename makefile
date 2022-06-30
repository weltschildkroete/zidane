.POSIX:

include config.mk

TEST = test-zidane

SRC = test_zidane.c
OBJ = $(SRC:.c=.o)

all: $(TEST)

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
