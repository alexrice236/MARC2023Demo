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
CMAKE_SOURCE_DIR = /home/ar/Downloads/lcm-1.4.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ar/MARC2023Demo

# Include any dependencies generated for this target.
include test/c/CMakeFiles/test-c-eventlog_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/c/CMakeFiles/test-c-eventlog_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/c/CMakeFiles/test-c-eventlog_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/c/CMakeFiles/test-c-eventlog_test.dir/flags.make

test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o: test/c/CMakeFiles/test-c-eventlog_test.dir/flags.make
test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o: /home/ar/Downloads/lcm-1.4.0/test/c/eventlog_test.cpp
test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o: test/c/CMakeFiles/test-c-eventlog_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ar/MARC2023Demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o"
	cd /home/ar/MARC2023Demo/test/c && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o -MF CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o.d -o CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o -c /home/ar/Downloads/lcm-1.4.0/test/c/eventlog_test.cpp

test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.i"
	cd /home/ar/MARC2023Demo/test/c && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ar/Downloads/lcm-1.4.0/test/c/eventlog_test.cpp > CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.i

test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.s"
	cd /home/ar/MARC2023Demo/test/c && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ar/Downloads/lcm-1.4.0/test/c/eventlog_test.cpp -o CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.s

test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.o: test/c/CMakeFiles/test-c-eventlog_test.dir/flags.make
test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.o: /home/ar/Downloads/lcm-1.4.0/test/c/common.c
test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.o: test/c/CMakeFiles/test-c-eventlog_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ar/MARC2023Demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.o"
	cd /home/ar/MARC2023Demo/test/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.o -MF CMakeFiles/test-c-eventlog_test.dir/common.c.o.d -o CMakeFiles/test-c-eventlog_test.dir/common.c.o -c /home/ar/Downloads/lcm-1.4.0/test/c/common.c

test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-c-eventlog_test.dir/common.c.i"
	cd /home/ar/MARC2023Demo/test/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ar/Downloads/lcm-1.4.0/test/c/common.c > CMakeFiles/test-c-eventlog_test.dir/common.c.i

test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-c-eventlog_test.dir/common.c.s"
	cd /home/ar/MARC2023Demo/test/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ar/Downloads/lcm-1.4.0/test/c/common.c -o CMakeFiles/test-c-eventlog_test.dir/common.c.s

# Object files for target test-c-eventlog_test
test__c__eventlog_test_OBJECTS = \
"CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o" \
"CMakeFiles/test-c-eventlog_test.dir/common.c.o"

# External object files for target test-c-eventlog_test
test__c__eventlog_test_EXTERNAL_OBJECTS =

test/c/test-c-eventlog_test: test/c/CMakeFiles/test-c-eventlog_test.dir/eventlog_test.cpp.o
test/c/test-c-eventlog_test: test/c/CMakeFiles/test-c-eventlog_test.dir/common.c.o
test/c/test-c-eventlog_test: test/c/CMakeFiles/test-c-eventlog_test.dir/build.make
test/c/test-c-eventlog_test: test/types/liblcm-test-types.so
test/c/test-c-eventlog_test: lcm/liblcm.so.1.4.0
test/c/test-c-eventlog_test: test/gtest/libgtest_main.so
test/c/test-c-eventlog_test: test/gtest/libgtest.so
test/c/test-c-eventlog_test: test/c/CMakeFiles/test-c-eventlog_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ar/MARC2023Demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test-c-eventlog_test"
	cd /home/ar/MARC2023Demo/test/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-c-eventlog_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/c/CMakeFiles/test-c-eventlog_test.dir/build: test/c/test-c-eventlog_test
.PHONY : test/c/CMakeFiles/test-c-eventlog_test.dir/build

test/c/CMakeFiles/test-c-eventlog_test.dir/clean:
	cd /home/ar/MARC2023Demo/test/c && $(CMAKE_COMMAND) -P CMakeFiles/test-c-eventlog_test.dir/cmake_clean.cmake
.PHONY : test/c/CMakeFiles/test-c-eventlog_test.dir/clean

test/c/CMakeFiles/test-c-eventlog_test.dir/depend:
	cd /home/ar/MARC2023Demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ar/Downloads/lcm-1.4.0 /home/ar/Downloads/lcm-1.4.0/test/c /home/ar/MARC2023Demo /home/ar/MARC2023Demo/test/c /home/ar/MARC2023Demo/test/c/CMakeFiles/test-c-eventlog_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/c/CMakeFiles/test-c-eventlog_test.dir/depend

