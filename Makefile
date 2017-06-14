
CPP=g++-5
CPPFLAGS= -O2 -flto -std=c++11 -march=native -fpermissive -fmodulo-sched -finline-functions -fmodulo-sched-allow-regmoves -ftree-loop-distribute-patterns -ftree-loop-distribution -ftree-loop-if-convert-stores -ftree-vectorize -ftree-slp-vectorize -ftree-loop-vectorize -fpredictive-commoning -fbranch-target-load-optimize


CC=gcc-5
CFLAGS=-g -O2 -flto -march=native 

LDLIBS= -lssl -lcrypto -lpthread  
LDFLAGS= -flto


srccppfiles = $(shell find . -name "*.cpp") 
objectscpp  = $(patsubst %.cpp, %.o, $(srccppfiles))

srcfiles = $(shell find . -name "*.c") 
objects  = $(patsubst %.c, %.o, $(srcfiles))



all: $(objectscpp) $(objects)
	$(CPP) $(LDFLAGS) $(objectscpp)  $(objects) -o xmr-cpu  $(LDLIBS) 


%.o: %.cpp 
	$(CPP) $(CPPFLAGS) -c -o $@  $<



%.o: %.c 
	$(CC) $(CFLAGS)  -c  -o $@ $<


clean:
	rm -rf $(objectscpp) $(objects) *.o xmr-cpu



