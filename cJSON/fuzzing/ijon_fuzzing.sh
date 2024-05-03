mkdir -p afl-build || exit 1
cd afl-build || exit 1
#cleanup
rm -r -- *

CC=../../../afl-clang-fast cmake ../.. -DENABLE_FUZZING=On -DENABLE_SANITIZERS=On -DBUILD_SHARED_LIBS=Off

cd fuzzing

make

/mnt/hdd/fuzz_usability/ijon-experimental/afl-fuzz -i /mnt/hdd/fuzz_usability/ijon-experimental/cJSON/fuzzing/inputs -o ../../ijon_test/findings0 ./afl-main @@ yes &
program_pid0=$!

/mnt/hdd/fuzz_usability/ijon-experimental/afl-fuzz -i /mnt/hdd/fuzz_usability/ijon-experimental/cJSON/fuzzing/inputs -o ../../ijon_test/findings1 ./afl-main @@ yes &
program_pid1=$!

/mnt/hdd/fuzz_usability/ijon-experimental/afl-fuzz -i /mnt/hdd/fuzz_usability/ijon-experimental/cJSON/fuzzing/inputs -o ../../ijon_test/findings2 ./afl-main @@ yes &
program_pid2=$!

/mnt/hdd/fuzz_usability/ijon-experimental/afl-fuzz -i /mnt/hdd/fuzz_usability/ijon-experimental/cJSON/fuzzing/inputs -o ../../ijon_test/findings3 ./afl-main @@ yes &
program_pid3=$!

/mnt/hdd/fuzz_usability/ijon-experimental/afl-fuzz -i /mnt/hdd/fuzz_usability/ijon-experimental/cJSON/fuzzing/inputs -o ../../ijon_test/findings4 ./afl-main @@ yes &
program_pid4=$!

sleep 3700

kill -9 $program_pid0
kill -9 $program_pid1
kill -9 $program_pid2
kill -9 $program_pid3
kill -9 $program_pid4
	
