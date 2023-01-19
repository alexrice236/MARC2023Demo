# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package
.PHONY : package/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/bin/cpack --config ./CPackSourceConfig.cmake /home/ar/MARC2023Demo/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source
.PHONY : package_source/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ar/MARC2023Demo/CMakeFiles /home/ar/MARC2023Demo//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ar/MARC2023Demo/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named lcm_use_file

# Build rule for target.
lcm_use_file: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm_use_file
.PHONY : lcm_use_file

# fast build rule for target.
lcm_use_file/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lcm_use_file.dir/build.make CMakeFiles/lcm_use_file.dir/build
.PHONY : lcm_use_file/fast

#=============================================================================
# Target rules for targets named dist

# Build rule for target.
dist: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 dist
.PHONY : dist

# fast build rule for target.
dist/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dist.dir/build.make CMakeFiles/dist.dir/build
.PHONY : dist/fast

#=============================================================================
# Target rules for targets named lcm-static

# Build rule for target.
lcm-static: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-static
.PHONY : lcm-static

# fast build rule for target.
lcm-static/fast:
	$(MAKE) $(MAKESILENT) -f lcm/CMakeFiles/lcm-static.dir/build.make lcm/CMakeFiles/lcm-static.dir/build
.PHONY : lcm-static/fast

#=============================================================================
# Target rules for targets named lcm

# Build rule for target.
lcm: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm
.PHONY : lcm

# fast build rule for target.
lcm/fast:
	$(MAKE) $(MAKESILENT) -f lcm/CMakeFiles/lcm.dir/build.make lcm/CMakeFiles/lcm.dir/build
.PHONY : lcm/fast

#=============================================================================
# Target rules for targets named lcm-gen

# Build rule for target.
lcm-gen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-gen
.PHONY : lcm-gen

# fast build rule for target.
lcm-gen/fast:
	$(MAKE) $(MAKESILENT) -f lcmgen/CMakeFiles/lcm-gen.dir/build.make lcmgen/CMakeFiles/lcm-gen.dir/build
.PHONY : lcm-gen/fast

#=============================================================================
# Target rules for targets named lcm-logger

# Build rule for target.
lcm-logger: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-logger
.PHONY : lcm-logger

# fast build rule for target.
lcm-logger/fast:
	$(MAKE) $(MAKESILENT) -f lcm-logger/CMakeFiles/lcm-logger.dir/build.make lcm-logger/CMakeFiles/lcm-logger.dir/build
.PHONY : lcm-logger/fast

#=============================================================================
# Target rules for targets named lcm-logplayer

# Build rule for target.
lcm-logplayer: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-logplayer
.PHONY : lcm-logplayer

# fast build rule for target.
lcm-logplayer/fast:
	$(MAKE) $(MAKESILENT) -f lcm-logger/CMakeFiles/lcm-logplayer.dir/build.make lcm-logger/CMakeFiles/lcm-logplayer.dir/build
.PHONY : lcm-logplayer/fast

#=============================================================================
# Target rules for targets named lcm-sink

# Build rule for target.
lcm-sink: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-sink
.PHONY : lcm-sink

# fast build rule for target.
lcm-sink/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-sink.dir/build.make liblcm-test/CMakeFiles/lcm-sink.dir/build
.PHONY : lcm-sink/fast

#=============================================================================
# Target rules for targets named lcm-source

# Build rule for target.
lcm-source: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-source
.PHONY : lcm-source

# fast build rule for target.
lcm-source/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-source.dir/build.make liblcm-test/CMakeFiles/lcm-source.dir/build
.PHONY : lcm-source/fast

#=============================================================================
# Target rules for targets named lcm-tester

# Build rule for target.
lcm-tester: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-tester
.PHONY : lcm-tester

# fast build rule for target.
lcm-tester/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-tester.dir/build.make liblcm-test/CMakeFiles/lcm-tester.dir/build
.PHONY : lcm-tester/fast

#=============================================================================
# Target rules for targets named lcm-example

# Build rule for target.
lcm-example: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-example
.PHONY : lcm-example

# fast build rule for target.
lcm-example/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-example.dir/build.make liblcm-test/CMakeFiles/lcm-example.dir/build
.PHONY : lcm-example/fast

#=============================================================================
# Target rules for targets named lcm-logfilter

# Build rule for target.
lcm-logfilter: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-logfilter
.PHONY : lcm-logfilter

# fast build rule for target.
lcm-logfilter/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-logfilter.dir/build.make liblcm-test/CMakeFiles/lcm-logfilter.dir/build
.PHONY : lcm-logfilter/fast

#=============================================================================
# Target rules for targets named lcm-buftest-receiver

# Build rule for target.
lcm-buftest-receiver: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-buftest-receiver
.PHONY : lcm-buftest-receiver

# fast build rule for target.
lcm-buftest-receiver/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/build.make liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/build
.PHONY : lcm-buftest-receiver/fast

#=============================================================================
# Target rules for targets named lcm-buftest-sender

# Build rule for target.
lcm-buftest-sender: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-buftest-sender
.PHONY : lcm-buftest-sender

# fast build rule for target.
lcm-buftest-sender/fast:
	$(MAKE) $(MAKESILENT) -f liblcm-test/CMakeFiles/lcm-buftest-sender.dir/build.make liblcm-test/CMakeFiles/lcm-buftest-sender.dir/build
.PHONY : lcm-buftest-sender/fast

#=============================================================================
# Target rules for targets named doc

# Build rule for target.
doc: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 doc
.PHONY : doc

# fast build rule for target.
doc/fast:
	$(MAKE) $(MAKESILENT) -f docs/CMakeFiles/doc.dir/build.make docs/CMakeFiles/doc.dir/build
.PHONY : doc/fast

#=============================================================================
# Target rules for targets named gtest

# Build rule for target.
gtest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest
.PHONY : gtest

# fast build rule for target.
gtest/fast:
	$(MAKE) $(MAKESILENT) -f test/gtest/CMakeFiles/gtest.dir/build.make test/gtest/CMakeFiles/gtest.dir/build
.PHONY : gtest/fast

#=============================================================================
# Target rules for targets named gtest_main

# Build rule for target.
gtest_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest_main
.PHONY : gtest_main

# fast build rule for target.
gtest_main/fast:
	$(MAKE) $(MAKESILENT) -f test/gtest/CMakeFiles/gtest_main.dir/build.make test/gtest/CMakeFiles/gtest_main.dir/build
.PHONY : gtest_main/fast

#=============================================================================
# Target rules for targets named lcm-test-types-c.sources

# Build rule for target.
lcm-test-types-c.sources: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-test-types-c.sources
.PHONY : lcm-test-types-c.sources

# fast build rule for target.
lcm-test-types-c.sources/fast:
	$(MAKE) $(MAKESILENT) -f test/types/CMakeFiles/lcm-test-types-c.sources.dir/build.make test/types/CMakeFiles/lcm-test-types-c.sources.dir/build
.PHONY : lcm-test-types-c.sources/fast

#=============================================================================
# Target rules for targets named lcm-test-types-c

# Build rule for target.
lcm-test-types-c: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-test-types-c
.PHONY : lcm-test-types-c

# fast build rule for target.
lcm-test-types-c/fast:
	$(MAKE) $(MAKESILENT) -f test/types/CMakeFiles/lcm-test-types-c.dir/build.make test/types/CMakeFiles/lcm-test-types-c.dir/build
.PHONY : lcm-test-types-c/fast

#=============================================================================
# Target rules for targets named lcm-test-types-cpp.sources

# Build rule for target.
lcm-test-types-cpp.sources: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lcm-test-types-cpp.sources
.PHONY : lcm-test-types-cpp.sources

# fast build rule for target.
lcm-test-types-cpp.sources/fast:
	$(MAKE) $(MAKESILENT) -f test/types/CMakeFiles/lcm-test-types-cpp.sources.dir/build.make test/types/CMakeFiles/lcm-test-types-cpp.sources.dir/build
.PHONY : lcm-test-types-cpp.sources/fast

#=============================================================================
# Target rules for targets named test-c-server

# Build rule for target.
test-c-server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-c-server
.PHONY : test-c-server

# fast build rule for target.
test-c-server/fast:
	$(MAKE) $(MAKESILENT) -f test/c/CMakeFiles/test-c-server.dir/build.make test/c/CMakeFiles/test-c-server.dir/build
.PHONY : test-c-server/fast

#=============================================================================
# Target rules for targets named test-c-client

# Build rule for target.
test-c-client: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-c-client
.PHONY : test-c-client

# fast build rule for target.
test-c-client/fast:
	$(MAKE) $(MAKESILENT) -f test/c/CMakeFiles/test-c-client.dir/build.make test/c/CMakeFiles/test-c-client.dir/build
.PHONY : test-c-client/fast

#=============================================================================
# Target rules for targets named test-c-memq_test

# Build rule for target.
test-c-memq_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-c-memq_test
.PHONY : test-c-memq_test

# fast build rule for target.
test-c-memq_test/fast:
	$(MAKE) $(MAKESILENT) -f test/c/CMakeFiles/test-c-memq_test.dir/build.make test/c/CMakeFiles/test-c-memq_test.dir/build
.PHONY : test-c-memq_test/fast

#=============================================================================
# Target rules for targets named test-c-eventlog_test

# Build rule for target.
test-c-eventlog_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-c-eventlog_test
.PHONY : test-c-eventlog_test

# fast build rule for target.
test-c-eventlog_test/fast:
	$(MAKE) $(MAKESILENT) -f test/c/CMakeFiles/test-c-eventlog_test.dir/build.make test/c/CMakeFiles/test-c-eventlog_test.dir/build
.PHONY : test-c-eventlog_test/fast

#=============================================================================
# Target rules for targets named test-c-udpm_test

# Build rule for target.
test-c-udpm_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-c-udpm_test
.PHONY : test-c-udpm_test

# fast build rule for target.
test-c-udpm_test/fast:
	$(MAKE) $(MAKESILENT) -f test/c/CMakeFiles/test-c-udpm_test.dir/build.make test/c/CMakeFiles/test-c-udpm_test.dir/build
.PHONY : test-c-udpm_test/fast

#=============================================================================
# Target rules for targets named test-cpp-client

# Build rule for target.
test-cpp-client: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-cpp-client
.PHONY : test-cpp-client

# fast build rule for target.
test-cpp-client/fast:
	$(MAKE) $(MAKESILENT) -f test/cpp/CMakeFiles/test-cpp-client.dir/build.make test/cpp/CMakeFiles/test-cpp-client.dir/build
.PHONY : test-cpp-client/fast

#=============================================================================
# Target rules for targets named test-cpp-memq_test

# Build rule for target.
test-cpp-memq_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test-cpp-memq_test
.PHONY : test-cpp-memq_test

# fast build rule for target.
test-cpp-memq_test/fast:
	$(MAKE) $(MAKESILENT) -f test/cpp/CMakeFiles/test-cpp-memq_test.dir/build.make test/cpp/CMakeFiles/test-cpp-memq_test.dir/build
.PHONY : test-cpp-memq_test/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... package"
	@echo "... package_source"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... dist"
	@echo "... doc"
	@echo "... lcm-test-types-c.sources"
	@echo "... lcm-test-types-cpp.sources"
	@echo "... lcm_use_file"
	@echo "... gtest"
	@echo "... gtest_main"
	@echo "... lcm"
	@echo "... lcm-buftest-receiver"
	@echo "... lcm-buftest-sender"
	@echo "... lcm-example"
	@echo "... lcm-gen"
	@echo "... lcm-logfilter"
	@echo "... lcm-logger"
	@echo "... lcm-logplayer"
	@echo "... lcm-sink"
	@echo "... lcm-source"
	@echo "... lcm-static"
	@echo "... lcm-test-types-c"
	@echo "... lcm-tester"
	@echo "... test-c-client"
	@echo "... test-c-eventlog_test"
	@echo "... test-c-memq_test"
	@echo "... test-c-server"
	@echo "... test-c-udpm_test"
	@echo "... test-cpp-client"
	@echo "... test-cpp-memq_test"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

