make distclean
export CC=../afl-clang-fast 
./configure
make

#a=0
#while [ "$a" -lt 5 ]
#do
	../afl-fuzz -i ./contrib/ijon/ijon_input -o ./contrib/ijon/findings0 ./.libs/pngfix @@ &
	program_pid0=$!

	../afl-fuzz -i ./contrib/ijon/ijon_input -o ./contrib/ijon/findings1 ./.libs/pngfix @@ &
	program_pid1=$!
	../afl-fuzz -i ./contrib/ijon/ijon_input -o ./contrib/ijon/findings2 ./.libs/pngfix @@ &
	program_pid2=$!
	../afl-fuzz -i ./contrib/ijon/ijon_input -o ./contrib/ijon/findings3 ./.libs/pngfix @@ &
	program_pid3=$!
	../afl-fuzz -i ./contrib/ijon/ijon_input -o ./contrib/ijon/findings4 ./.libs/pngfix @@ &
	program_pid4=$!
	sleep 3600 
	
	kill -9 $program_pid0
	kill -9 $program_pid1
	kill -9 $program_pid2
	kill -9 $program_pid3
	kill -9 $program_pid4

#done
