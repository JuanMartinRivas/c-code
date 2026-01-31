build/code.exe: code.c | build
	$(CC) code.c -o build/code.exe -Wall -Wextra -pedantic -std=c99

build:
	mkdir -p build

clean:
	rm -f build/code.exe

.PHONY: clean