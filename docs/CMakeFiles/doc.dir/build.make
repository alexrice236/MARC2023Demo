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

# Utility rule file for doc.

# Include any custom commands dependencies for this target.
include docs/CMakeFiles/doc.dir/compiler_depend.make

# Include the progress variables for this target.
include docs/CMakeFiles/doc.dir/progress.make

doc: docs/CMakeFiles/doc.dir/build.make
.PHONY : doc

# Rule to build all files generated by this target.
docs/CMakeFiles/doc.dir/build: doc
.PHONY : docs/CMakeFiles/doc.dir/build

docs/CMakeFiles/doc.dir/clean:
	cd /home/ar/MARC2023Demo/docs && $(CMAKE_COMMAND) -P CMakeFiles/doc.dir/cmake_clean.cmake
.PHONY : docs/CMakeFiles/doc.dir/clean

docs/CMakeFiles/doc.dir/depend:
	cd /home/ar/MARC2023Demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ar/Downloads/lcm-1.4.0 /home/ar/Downloads/lcm-1.4.0/docs /home/ar/MARC2023Demo /home/ar/MARC2023Demo/docs /home/ar/MARC2023Demo/docs/CMakeFiles/doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : docs/CMakeFiles/doc.dir/depend

