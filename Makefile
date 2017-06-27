CFLAGS = -I ./include
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: walk 

walk: walk.cpp ppm.cpp log.cpp lab3http.cpp
	g++ $(CFLAGS) walk.cpp ppm.cpp log.cpp lab3http.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -owalk

clean:
	rm -f walk
	rm -f *.o

