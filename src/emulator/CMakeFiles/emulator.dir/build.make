# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/unusualegg/prg/cpp/sls-8bit-cpu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/unusualegg/prg/cpp/sls-8bit-cpu

# Include any dependencies generated for this target.
include src/emulator/CMakeFiles/emulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/emulator/CMakeFiles/emulator.dir/compiler_depend.make

# Include the progress variables for this target.
include src/emulator/CMakeFiles/emulator.dir/progress.make

# Include the compile flags for this target's objects.
include src/emulator/CMakeFiles/emulator.dir/flags.make

src/emulator/CMakeFiles/emulator.dir/emulator.cpp.o: src/emulator/CMakeFiles/emulator.dir/flags.make
src/emulator/CMakeFiles/emulator.dir/emulator.cpp.o: src/emulator/emulator.cpp
src/emulator/CMakeFiles/emulator.dir/emulator.cpp.o: src/emulator/CMakeFiles/emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/emulator/CMakeFiles/emulator.dir/emulator.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/emulator/CMakeFiles/emulator.dir/emulator.cpp.o -MF CMakeFiles/emulator.dir/emulator.cpp.o.d -o CMakeFiles/emulator.dir/emulator.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/emulator.cpp

src/emulator/CMakeFiles/emulator.dir/emulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emulator.dir/emulator.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/emulator.cpp > CMakeFiles/emulator.dir/emulator.cpp.i

src/emulator/CMakeFiles/emulator.dir/emulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emulator.dir/emulator.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/emulator.cpp -o CMakeFiles/emulator.dir/emulator.cpp.s

src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.o: src/emulator/CMakeFiles/emulator.dir/flags.make
src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.o: src/emulator/microcode_executor.cpp
src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.o: src/emulator/CMakeFiles/emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.o -MF CMakeFiles/emulator.dir/microcode_executor.cpp.o.d -o CMakeFiles/emulator.dir/microcode_executor.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/microcode_executor.cpp

src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emulator.dir/microcode_executor.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/microcode_executor.cpp > CMakeFiles/emulator.dir/microcode_executor.cpp.i

src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emulator.dir/microcode_executor.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/microcode_executor.cpp -o CMakeFiles/emulator.dir/microcode_executor.cpp.s

src/emulator/CMakeFiles/emulator.dir/renderer.cpp.o: src/emulator/CMakeFiles/emulator.dir/flags.make
src/emulator/CMakeFiles/emulator.dir/renderer.cpp.o: src/emulator/renderer.cpp
src/emulator/CMakeFiles/emulator.dir/renderer.cpp.o: src/emulator/CMakeFiles/emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/emulator/CMakeFiles/emulator.dir/renderer.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/emulator/CMakeFiles/emulator.dir/renderer.cpp.o -MF CMakeFiles/emulator.dir/renderer.cpp.o.d -o CMakeFiles/emulator.dir/renderer.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/renderer.cpp

src/emulator/CMakeFiles/emulator.dir/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emulator.dir/renderer.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/renderer.cpp > CMakeFiles/emulator.dir/renderer.cpp.i

src/emulator/CMakeFiles/emulator.dir/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emulator.dir/renderer.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/renderer.cpp -o CMakeFiles/emulator.dir/renderer.cpp.s

# Object files for target emulator
emulator_OBJECTS = \
"CMakeFiles/emulator.dir/emulator.cpp.o" \
"CMakeFiles/emulator.dir/microcode_executor.cpp.o" \
"CMakeFiles/emulator.dir/renderer.cpp.o"

# External object files for target emulator
emulator_EXTERNAL_OBJECTS =

src/emulator/libemulator.a: src/emulator/CMakeFiles/emulator.dir/emulator.cpp.o
src/emulator/libemulator.a: src/emulator/CMakeFiles/emulator.dir/microcode_executor.cpp.o
src/emulator/libemulator.a: src/emulator/CMakeFiles/emulator.dir/renderer.cpp.o
src/emulator/libemulator.a: src/emulator/CMakeFiles/emulator.dir/build.make
src/emulator/libemulator.a: src/emulator/CMakeFiles/emulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libemulator.a"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && $(CMAKE_COMMAND) -P CMakeFiles/emulator.dir/cmake_clean_target.cmake
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/emulator/CMakeFiles/emulator.dir/build: src/emulator/libemulator.a
.PHONY : src/emulator/CMakeFiles/emulator.dir/build

src/emulator/CMakeFiles/emulator.dir/clean:
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator && $(CMAKE_COMMAND) -P CMakeFiles/emulator.dir/cmake_clean.cmake
.PHONY : src/emulator/CMakeFiles/emulator.dir/clean

src/emulator/CMakeFiles/emulator.dir/depend:
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/unusualegg/prg/cpp/sls-8bit-cpu /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator /home/unusualegg/prg/cpp/sls-8bit-cpu /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator /home/unusualegg/prg/cpp/sls-8bit-cpu/src/emulator/CMakeFiles/emulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/emulator/CMakeFiles/emulator.dir/depend
