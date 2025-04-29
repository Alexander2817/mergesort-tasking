# MergeSort-tasking

This project compares a sequential mergesort to a parallel mergesort using `std::thread`.

In which we will see results with different array sizes to calculate the speedup.

---

## Files Needed

Make sure these files are present in the directory:

- `mergesort_seq.cpp` – Sequential mergesort 
- `mergesort_par.cpp` – Parallel mergesort
- `Makefile` – For compiling

---

## Compilation

To compile both versions, run:

```bash
make
```
## Running Sequential
Try out different sizes like 10000, 100000, 1000000, etc. for sequential
```bash
./mergesort_seq 5000000
```
## Running parallel
Try out different sizes like 10000, 100000, 1000000, etc. for parallel
```bash
./mergesort_par 5000000
```

## Comparison
Compare the two different runtime results and calculate speedup by doing speedup = sequential(T) / parallel(T). Try out different arraysizes or change the threshold in the mergesort_par.cpp file. Then recompile and run.
