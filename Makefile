# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/Gaia/github-classroom/birc-gsa-2022/project-4-c-o-no

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/Gaia/github-classroom/birc-gsa-2022/project-4-c-o-no

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	"C:/Program Files/CMake/bin/ctest.exe" --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	"C:/Program Files/CMake/bin/cmake-gui.exe" -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	"C:/Program Files/CMake/bin/cmake.exe" --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start C:/Users/Gaia/github-classroom/birc-gsa-2022/project-4-c-o-no/CMakeFiles C:/Users/Gaia/github-classroom/birc-gsa-2022/project-4-c-o-no//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start C:/Users/Gaia/github-classroom/birc-gsa-2022/project-4-c-o-no/CMakeFiles 0
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
# Target rules for targets named fm

# Build rule for target.
fm: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 fm
.PHONY : fm

# fast build rule for target.
fm/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/build
.PHONY : fm/fast

#=============================================================================
# Target rules for targets named testing1

# Build rule for target.
testing1: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 testing1
.PHONY : testing1

# fast build rule for target.
testing1/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/build
.PHONY : testing1/fast

#=============================================================================
# Target rules for targets named testing2

# Build rule for target.
testing2: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 testing2
.PHONY : testing2

# fast build rule for target.
testing2/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/build
.PHONY : testing2/fast

#=============================================================================
# Target rules for targets named testRotate

# Build rule for target.
testRotate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 testRotate
.PHONY : testRotate

# fast build rule for target.
testRotate/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/build
.PHONY : testRotate/fast

#=============================================================================
# Target rules for targets named time

# Build rule for target.
time: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 time
.PHONY : time

# fast build rule for target.
time/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/build
.PHONY : time/fast

src/fm.obj: src/fm.c.obj
.PHONY : src/fm.obj

# target to build an object file
src/fm.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/fm.c.obj
.PHONY : src/fm.c.obj

src/fm.i: src/fm.c.i
.PHONY : src/fm.i

# target to preprocess a source file
src/fm.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/fm.c.i
.PHONY : src/fm.c.i

src/fm.s: src/fm.c.s
.PHONY : src/fm.s

# target to generate assembly for a file
src/fm.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/fm.c.s
.PHONY : src/fm.c.s

src/helper.obj: src/helper.c.obj
.PHONY : src/helper.obj

# target to build an object file
src/helper.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/helper.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/helper.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/helper.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/helper.c.obj
.PHONY : src/helper.c.obj

src/helper.i: src/helper.c.i
.PHONY : src/helper.i

# target to preprocess a source file
src/helper.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/helper.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/helper.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/helper.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/helper.c.i
.PHONY : src/helper.c.i

src/helper.s: src/helper.c.s
.PHONY : src/helper.s

# target to generate assembly for a file
src/helper.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/helper.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/helper.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/helper.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/helper.c.s
.PHONY : src/helper.c.s

src/parsers/simple-fasta-parser.obj: src/parsers/simple-fasta-parser.c.obj
.PHONY : src/parsers/simple-fasta-parser.obj

# target to build an object file
src/parsers/simple-fasta-parser.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/parsers/simple-fasta-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/parsers/simple-fasta-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/parsers/simple-fasta-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/parsers/simple-fasta-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/parsers/simple-fasta-parser.c.obj
.PHONY : src/parsers/simple-fasta-parser.c.obj

src/parsers/simple-fasta-parser.i: src/parsers/simple-fasta-parser.c.i
.PHONY : src/parsers/simple-fasta-parser.i

# target to preprocess a source file
src/parsers/simple-fasta-parser.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/parsers/simple-fasta-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/parsers/simple-fasta-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/parsers/simple-fasta-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/parsers/simple-fasta-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/parsers/simple-fasta-parser.c.i
.PHONY : src/parsers/simple-fasta-parser.c.i

src/parsers/simple-fasta-parser.s: src/parsers/simple-fasta-parser.c.s
.PHONY : src/parsers/simple-fasta-parser.s

# target to generate assembly for a file
src/parsers/simple-fasta-parser.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/parsers/simple-fasta-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/parsers/simple-fasta-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/parsers/simple-fasta-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/parsers/simple-fasta-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/parsers/simple-fasta-parser.c.s
.PHONY : src/parsers/simple-fasta-parser.c.s

src/parsers/simple-fastq-parser.obj: src/parsers/simple-fastq-parser.c.obj
.PHONY : src/parsers/simple-fastq-parser.obj

# target to build an object file
src/parsers/simple-fastq-parser.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/parsers/simple-fastq-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/parsers/simple-fastq-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/parsers/simple-fastq-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/parsers/simple-fastq-parser.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/parsers/simple-fastq-parser.c.obj
.PHONY : src/parsers/simple-fastq-parser.c.obj

src/parsers/simple-fastq-parser.i: src/parsers/simple-fastq-parser.c.i
.PHONY : src/parsers/simple-fastq-parser.i

# target to preprocess a source file
src/parsers/simple-fastq-parser.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/parsers/simple-fastq-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/parsers/simple-fastq-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/parsers/simple-fastq-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/parsers/simple-fastq-parser.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/parsers/simple-fastq-parser.c.i
.PHONY : src/parsers/simple-fastq-parser.c.i

src/parsers/simple-fastq-parser.s: src/parsers/simple-fastq-parser.c.s
.PHONY : src/parsers/simple-fastq-parser.s

# target to generate assembly for a file
src/parsers/simple-fastq-parser.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/parsers/simple-fastq-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/parsers/simple-fastq-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/parsers/simple-fastq-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/parsers/simple-fastq-parser.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/parsers/simple-fastq-parser.c.s
.PHONY : src/parsers/simple-fastq-parser.c.s

src/rotater.obj: src/rotater.c.obj
.PHONY : src/rotater.obj

# target to build an object file
src/rotater.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/rotater.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/rotater.c.obj
.PHONY : src/rotater.c.obj

src/rotater.i: src/rotater.c.i
.PHONY : src/rotater.i

# target to preprocess a source file
src/rotater.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/rotater.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/rotater.c.i
.PHONY : src/rotater.c.i

src/rotater.s: src/rotater.c.s
.PHONY : src/rotater.s

# target to generate assembly for a file
src/rotater.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/rotater.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/src/rotater.c.s
.PHONY : src/rotater.c.s

src/sa.obj: src/sa.c.obj
.PHONY : src/sa.obj

# target to build an object file
src/sa.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/sa.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/sa.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/sa.c.obj
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/sa.c.obj
.PHONY : src/sa.c.obj

src/sa.i: src/sa.c.i
.PHONY : src/sa.i

# target to preprocess a source file
src/sa.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/sa.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/sa.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/sa.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/sa.c.i
.PHONY : src/sa.c.i

src/sa.s: src/sa.c.s
.PHONY : src/sa.s

# target to generate assembly for a file
src/sa.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/fm.dir/build.make CMakeFiles/fm.dir/src/sa.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/src/sa.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/src/sa.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/src/sa.c.s
.PHONY : src/sa.c.s

test/testRotation.obj: test/testRotation.c.obj
.PHONY : test/testRotation.obj

# target to build an object file
test/testRotation.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/test/testRotation.c.obj
.PHONY : test/testRotation.c.obj

test/testRotation.i: test/testRotation.c.i
.PHONY : test/testRotation.i

# target to preprocess a source file
test/testRotation.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/test/testRotation.c.i
.PHONY : test/testRotation.c.i

test/testRotation.s: test/testRotation.c.s
.PHONY : test/testRotation.s

# target to generate assembly for a file
test/testRotation.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testRotate.dir/build.make CMakeFiles/testRotate.dir/test/testRotation.c.s
.PHONY : test/testRotation.c.s

test/testSearch.obj: test/testSearch.c.obj
.PHONY : test/testSearch.obj

# target to build an object file
test/testSearch.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/test/testSearch.c.obj
.PHONY : test/testSearch.c.obj

test/testSearch.i: test/testSearch.c.i
.PHONY : test/testSearch.i

# target to preprocess a source file
test/testSearch.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/test/testSearch.c.i
.PHONY : test/testSearch.c.i

test/testSearch.s: test/testSearch.c.s
.PHONY : test/testSearch.s

# target to generate assembly for a file
test/testSearch.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing2.dir/build.make CMakeFiles/testing2.dir/test/testSearch.c.s
.PHONY : test/testSearch.c.s

test/tests.obj: test/tests.c.obj
.PHONY : test/tests.obj

# target to build an object file
test/tests.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/test/tests.c.obj
.PHONY : test/tests.c.obj

test/tests.i: test/tests.c.i
.PHONY : test/tests.i

# target to preprocess a source file
test/tests.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/test/tests.c.i
.PHONY : test/tests.c.i

test/tests.s: test/tests.c.s
.PHONY : test/tests.s

# target to generate assembly for a file
test/tests.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testing1.dir/build.make CMakeFiles/testing1.dir/test/tests.c.s
.PHONY : test/tests.c.s

test/time.obj: test/time.c.obj
.PHONY : test/time.obj

# target to build an object file
test/time.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/test/time.c.obj
.PHONY : test/time.c.obj

test/time.i: test/time.c.i
.PHONY : test/time.i

# target to preprocess a source file
test/time.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/test/time.c.i
.PHONY : test/time.c.i

test/time.s: test/time.c.s
.PHONY : test/time.s

# target to generate assembly for a file
test/time.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/time.dir/build.make CMakeFiles/time.dir/test/time.c.s
.PHONY : test/time.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... fm"
	@echo "... testRotate"
	@echo "... testing1"
	@echo "... testing2"
	@echo "... time"
	@echo "... src/fm.obj"
	@echo "... src/fm.i"
	@echo "... src/fm.s"
	@echo "... src/helper.obj"
	@echo "... src/helper.i"
	@echo "... src/helper.s"
	@echo "... src/parsers/simple-fasta-parser.obj"
	@echo "... src/parsers/simple-fasta-parser.i"
	@echo "... src/parsers/simple-fasta-parser.s"
	@echo "... src/parsers/simple-fastq-parser.obj"
	@echo "... src/parsers/simple-fastq-parser.i"
	@echo "... src/parsers/simple-fastq-parser.s"
	@echo "... src/rotater.obj"
	@echo "... src/rotater.i"
	@echo "... src/rotater.s"
	@echo "... src/sa.obj"
	@echo "... src/sa.i"
	@echo "... src/sa.s"
	@echo "... test/testRotation.obj"
	@echo "... test/testRotation.i"
	@echo "... test/testRotation.s"
	@echo "... test/testSearch.obj"
	@echo "... test/testSearch.i"
	@echo "... test/testSearch.s"
	@echo "... test/tests.obj"
	@echo "... test/tests.i"
	@echo "... test/tests.s"
	@echo "... test/time.obj"
	@echo "... test/time.i"
	@echo "... test/time.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

