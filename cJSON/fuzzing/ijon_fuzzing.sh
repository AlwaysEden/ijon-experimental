mkdir -p afl-build || exit 1
cd afl-build || exit 1
#cleanup
rm -r -- *

CC=../../../afl-clang-fast cmake ../.. -DENABLE_FUZZING=On -DENABLE_SANITIZERS=On -DBUILD_SHARED_LIBS=Off

cd fuzzing

make

a=0
while [ "$a" -lt 5 ]
do
	/mnt/hdd/fuzz_usability/ijon-experimental/afl-fuzz -i /mnt/hdd/fuzz_usability/ijon-experimental/cJSON/fuzzing/inputs -o findings$a ./afl-main @@ yes &
	program_pid=$!

	sleep 3600 
	
	kill -9 $program_pid
	
	((a++))
done
