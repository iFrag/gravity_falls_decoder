LIBS = -lm
CFLAGS = -g
BIN_TESTS = tests.out

.PHONY: all tests clean

clean:
	rm tests/tests.out

all: tests

tests: tests/tests.out

tests/tests.out:
	$(CC) ./tests/test.c -o $(BIN_TESTS) $(LIBS) $(CFLAGS) && cd tests && mv ../tests.out .