clang -fprofile-instr-generate -fcoverage-mapping -o test3 ../test3.c

gcc -o exec exec_test.c

./exec

llvm-profdata merge -sparse rawdata* -o covdata

rm rawdata*

llvm-cov show ../test_asdf -instr-profile=covdata
