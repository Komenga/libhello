LIB=libhello.so

all: $(LIB)

$(LIB): hellolib.o
	$(CC) $< -Wl,-soname,$(LIB).1 -fPIC $(LDFLAGS) -shared -o $(LIB).0.1

%.o: %.c
	$(CC) -c $<

clean:
	rm -rf *.o *.so*
