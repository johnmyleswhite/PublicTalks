sleepecho:
	sleep 3 && echo "Woke up"

example: sleepecho
	clang -o order.exe order.c
	./order.exe

helloworld: sleepecho
	echo "Hello world"

clean:
	rm -f order.exe

all: sleepecho example helloworld
