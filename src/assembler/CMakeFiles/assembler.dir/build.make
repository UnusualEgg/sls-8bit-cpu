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
include src/assembler/CMakeFiles/assembler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/assembler/CMakeFiles/assembler.dir/compiler_depend.make

# Include the progress variables for this target.
include src/assembler/CMakeFiles/assembler.dir/progress.make

# Include the compile flags for this target's objects.
include src/assembler/CMakeFiles/assembler.dir/flags.make

src/assembler/CMakeFiles/assembler.dir/assembler.cpp.o: src/assembler/CMakeFiles/assembler.dir/flags.make
src/assembler/CMakeFiles/assembler.dir/assembler.cpp.o: src/assembler/assembler.cpp
src/assembler/CMakeFiles/assembler.dir/assembler.cpp.o: src/assembler/CMakeFiles/assembler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/assembler/CMakeFiles/assembler.dir/assembler.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/assembler/CMakeFiles/assembler.dir/assembler.cpp.o -MF CMakeFiles/assembler.dir/assembler.cpp.o.d -o CMakeFiles/assembler.dir/assembler.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/assembler.cpp

src/assembler/CMakeFiles/assembler.dir/assembler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assembler.dir/assembler.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/assembler.cpp > CMakeFiles/assembler.dir/assembler.cpp.i

src/assembler/CMakeFiles/assembler.dir/assembler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assembler.dir/assembler.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/assembler.cpp -o CMakeFiles/assembler.dir/assembler.cpp.s

src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.o: src/assembler/CMakeFiles/assembler.dir/flags.make
src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.o: src/assembler/tokenizer.cpp
src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.o: src/assembler/CMakeFiles/assembler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.o -MF CMakeFiles/assembler.dir/tokenizer.cpp.o.d -o CMakeFiles/assembler.dir/tokenizer.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/tokenizer.cpp

src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assembler.dir/tokenizer.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/tokenizer.cpp > CMakeFiles/assembler.dir/tokenizer.cpp.i

src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assembler.dir/tokenizer.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/tokenizer.cpp -o CMakeFiles/assembler.dir/tokenizer.cpp.s

src/assembler/CMakeFiles/assembler.dir/define_table.cpp.o: src/assembler/CMakeFiles/assembler.dir/flags.make
src/assembler/CMakeFiles/assembler.dir/define_table.cpp.o: src/assembler/define_table.cpp
src/assembler/CMakeFiles/assembler.dir/define_table.cpp.o: src/assembler/CMakeFiles/assembler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/assembler/CMakeFiles/assembler.dir/define_table.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/assembler/CMakeFiles/assembler.dir/define_table.cpp.o -MF CMakeFiles/assembler.dir/define_table.cpp.o.d -o CMakeFiles/assembler.dir/define_table.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/define_table.cpp

src/assembler/CMakeFiles/assembler.dir/define_table.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assembler.dir/define_table.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/define_table.cpp > CMakeFiles/assembler.dir/define_table.cpp.i

src/assembler/CMakeFiles/assembler.dir/define_table.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assembler.dir/define_table.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/define_table.cpp -o CMakeFiles/assembler.dir/define_table.cpp.s

src/assembler/CMakeFiles/assembler.dir/label_table.cpp.o: src/assembler/CMakeFiles/assembler.dir/flags.make
src/assembler/CMakeFiles/assembler.dir/label_table.cpp.o: src/assembler/label_table.cpp
src/assembler/CMakeFiles/assembler.dir/label_table.cpp.o: src/assembler/CMakeFiles/assembler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/assembler/CMakeFiles/assembler.dir/label_table.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/assembler/CMakeFiles/assembler.dir/label_table.cpp.o -MF CMakeFiles/assembler.dir/label_table.cpp.o.d -o CMakeFiles/assembler.dir/label_table.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/label_table.cpp

src/assembler/CMakeFiles/assembler.dir/label_table.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assembler.dir/label_table.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/label_table.cpp > CMakeFiles/assembler.dir/label_table.cpp.i

src/assembler/CMakeFiles/assembler.dir/label_table.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assembler.dir/label_table.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/label_table.cpp -o CMakeFiles/assembler.dir/label_table.cpp.s

src/assembler/CMakeFiles/assembler.dir/macro.cpp.o: src/assembler/CMakeFiles/assembler.dir/flags.make
src/assembler/CMakeFiles/assembler.dir/macro.cpp.o: src/assembler/macro.cpp
src/assembler/CMakeFiles/assembler.dir/macro.cpp.o: src/assembler/CMakeFiles/assembler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/assembler/CMakeFiles/assembler.dir/macro.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/assembler/CMakeFiles/assembler.dir/macro.cpp.o -MF CMakeFiles/assembler.dir/macro.cpp.o.d -o CMakeFiles/assembler.dir/macro.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/macro.cpp

src/assembler/CMakeFiles/assembler.dir/macro.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assembler.dir/macro.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/macro.cpp > CMakeFiles/assembler.dir/macro.cpp.i

src/assembler/CMakeFiles/assembler.dir/macro.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assembler.dir/macro.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/macro.cpp -o CMakeFiles/assembler.dir/macro.cpp.s

src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.o: src/assembler/CMakeFiles/assembler.dir/flags.make
src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.o: src/assembler/macro_generator.cpp
src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.o: src/assembler/CMakeFiles/assembler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.o"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.o -MF CMakeFiles/assembler.dir/macro_generator.cpp.o.d -o CMakeFiles/assembler.dir/macro_generator.cpp.o -c /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/macro_generator.cpp

src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assembler.dir/macro_generator.cpp.i"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/macro_generator.cpp > CMakeFiles/assembler.dir/macro_generator.cpp.i

src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assembler.dir/macro_generator.cpp.s"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/macro_generator.cpp -o CMakeFiles/assembler.dir/macro_generator.cpp.s

# Object files for target assembler
assembler_OBJECTS = \
"CMakeFiles/assembler.dir/assembler.cpp.o" \
"CMakeFiles/assembler.dir/tokenizer.cpp.o" \
"CMakeFiles/assembler.dir/define_table.cpp.o" \
"CMakeFiles/assembler.dir/label_table.cpp.o" \
"CMakeFiles/assembler.dir/macro.cpp.o" \
"CMakeFiles/assembler.dir/macro_generator.cpp.o"

# External object files for target assembler
assembler_EXTERNAL_OBJECTS =

src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/assembler.cpp.o
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/tokenizer.cpp.o
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/define_table.cpp.o
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/label_table.cpp.o
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/macro.cpp.o
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/macro_generator.cpp.o
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/build.make
src/assembler/libassembler.a: src/assembler/CMakeFiles/assembler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/unusualegg/prg/cpp/sls-8bit-cpu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libassembler.a"
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && $(CMAKE_COMMAND) -P CMakeFiles/assembler.dir/cmake_clean_target.cmake
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assembler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/assembler/CMakeFiles/assembler.dir/build: src/assembler/libassembler.a
.PHONY : src/assembler/CMakeFiles/assembler.dir/build

src/assembler/CMakeFiles/assembler.dir/clean:
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler && $(CMAKE_COMMAND) -P CMakeFiles/assembler.dir/cmake_clean.cmake
.PHONY : src/assembler/CMakeFiles/assembler.dir/clean

src/assembler/CMakeFiles/assembler.dir/depend:
	cd /home/unusualegg/prg/cpp/sls-8bit-cpu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/unusualegg/prg/cpp/sls-8bit-cpu /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler /home/unusualegg/prg/cpp/sls-8bit-cpu /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler /home/unusualegg/prg/cpp/sls-8bit-cpu/src/assembler/CMakeFiles/assembler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/assembler/CMakeFiles/assembler.dir/depend

