# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/s22100141/Capston2/libpng

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s22100141/Capston2/libpng/build

# Utility rule file for png_scripts_sym_out.

# Include the progress variables for this target.
include CMakeFiles/png_scripts_sym_out.dir/progress.make

CMakeFiles/png_scripts_sym_out: scripts/sym.out


scripts/sym.out: ../scripts/sym.c
scripts/sym.out: pnglibconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/s22100141/Capston2/libpng/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating scripts/sym.out"
	/usr/local/bin/cmake -DINPUT=/home/s22100141/Capston2/libpng/scripts/sym.c -DOUTPUT=/home/s22100141/Capston2/libpng/build/scripts/sym.out -P /home/s22100141/Capston2/libpng/build/scripts/cmake/genout.cmake

pnglibconf.h: pnglibconf.out
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/s22100141/Capston2/libpng/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating pnglibconf.h"
	/usr/local/bin/cmake -DOUTPUT=pnglibconf.h -P /home/s22100141/Capston2/libpng/build/scripts/cmake/gensrc.cmake

pnglibconf.out: pnglibconf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/s22100141/Capston2/libpng/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating pnglibconf.out"
	/usr/local/bin/cmake -DINPUT=/home/s22100141/Capston2/libpng/build/pnglibconf.c -DOUTPUT=/home/s22100141/Capston2/libpng/build/pnglibconf.out -P /home/s22100141/Capston2/libpng/build/scripts/cmake/genout.cmake

pnglibconf.c: ../scripts/pnglibconf.dfa
pnglibconf.c: scripts/options.awk
pnglibconf.c: ../pngconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/s22100141/Capston2/libpng/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating pnglibconf.c"
	/usr/local/bin/cmake -DOUTPUT=pnglibconf.c -P /home/s22100141/Capston2/libpng/build/scripts/cmake/gensrc.cmake

png_scripts_sym_out: CMakeFiles/png_scripts_sym_out
png_scripts_sym_out: scripts/sym.out
png_scripts_sym_out: pnglibconf.h
png_scripts_sym_out: pnglibconf.out
png_scripts_sym_out: pnglibconf.c
png_scripts_sym_out: CMakeFiles/png_scripts_sym_out.dir/build.make

.PHONY : png_scripts_sym_out

# Rule to build all files generated by this target.
CMakeFiles/png_scripts_sym_out.dir/build: png_scripts_sym_out

.PHONY : CMakeFiles/png_scripts_sym_out.dir/build

CMakeFiles/png_scripts_sym_out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/png_scripts_sym_out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/png_scripts_sym_out.dir/clean

CMakeFiles/png_scripts_sym_out.dir/depend:
	cd /home/s22100141/Capston2/libpng/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s22100141/Capston2/libpng /home/s22100141/Capston2/libpng /home/s22100141/Capston2/libpng/build /home/s22100141/Capston2/libpng/build /home/s22100141/Capston2/libpng/build/CMakeFiles/png_scripts_sym_out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/png_scripts_sym_out.dir/depend

