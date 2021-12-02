.PHONY: all tests clean

clean:
	rm tests/tests.out

all: tests

tests: tests/tests.out

tests/tests.out:
	$(CC) ./tests/test.c -o tests.out -lm -g && cd tests && mv ../tests.out .