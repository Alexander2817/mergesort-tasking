CFLAGS=-O3 -std=c11 -fPIC -g
CXXFLAGS=-O3 -std=c++17 -fPIC -g
LD=g++


all: mergesort_seq mergesort_par


mergesort_seq: mergesort_seq.cpp
	$(LD) $(LDFLAGS) mergesort_seq.cpp -o mergesort_seq

mergesort_par: mergesort_par.cpp
	$(LD) $(LDFLAGS) mergesort_par.cpp -o mergesort_par

bench: mergesort_seq mergesort_par
	./queue.sh

clean:
	-rm *.o
	-rm mergesort_seq mergesort_par

distclean:
	-rm *.sh.*

.PHONY:  mergesort_seq mergesort_par
