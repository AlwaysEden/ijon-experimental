IJON EXPERIMENTAL 
======

## Compile AFL+IJON

after compiling AFL as usually, run:

```
make
cd llvm_mode
LLVM_CONFIG=llvm-config-6.0 CC=clang-6.0 make
```
## Simple Test

```
./afl-clang-fast test2.c -o test2
./afl-fuzz -i simple_testcase/ -o outputs ./test2
```
