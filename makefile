TARGET=test-zidane

CFLAGS=-Wall -Wextra -std=c11 -pedantic -g -O2

ifeq ($(ZIDANE_SINGLE_THREADED), 1)
CPPFLAGS+=-DZIDANE_SINGLE_THREADED
else
CFLAGS+=-pthread
endif

all: $(TARGET)

$(TARGET): test_zidane.c zidane.h
	$(CC) -o $@ $(CFLAGS) $(CPPFLAGS) $<

test: test-zidane
	./$<

clean:
	rm -f $(TARGET)
	rm -f test_zidane.o

.PHONY: all test clean
