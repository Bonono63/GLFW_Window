# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/bon/GLFW_Window

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bon/GLFW_Window

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/bon/GLFW_Window/CMakeFiles /home/bon/GLFW_Window//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/bon/GLFW_Window/CMakeFiles 0
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
# Target rules for targets named Ass

# Build rule for target.
Ass: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Ass
.PHONY : Ass

# fast build rule for target.
Ass/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/build
.PHONY : Ass/fast

#=============================================================================
# Target rules for targets named update_mappings

# Build rule for target.
update_mappings: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 update_mappings
.PHONY : update_mappings

# fast build rule for target.
update_mappings/fast:
	$(MAKE) $(MAKESILENT) -f glfw-3.3.8/src/CMakeFiles/update_mappings.dir/build.make glfw-3.3.8/src/CMakeFiles/update_mappings.dir/build
.PHONY : update_mappings/fast

#=============================================================================
# Target rules for targets named glfw

# Build rule for target.
glfw: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 glfw
.PHONY : glfw

# fast build rule for target.
glfw/fast:
	$(MAKE) $(MAKESILENT) -f glfw-3.3.8/src/CMakeFiles/glfw.dir/build.make glfw-3.3.8/src/CMakeFiles/glfw.dir/build
.PHONY : glfw/fast

glfw-3.3.8/deps/glad_gl.o: glfw-3.3.8/deps/glad_gl.c.o
.PHONY : glfw-3.3.8/deps/glad_gl.o

# target to build an object file
glfw-3.3.8/deps/glad_gl.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/glfw-3.3.8/deps/glad_gl.c.o
.PHONY : glfw-3.3.8/deps/glad_gl.c.o

glfw-3.3.8/deps/glad_gl.i: glfw-3.3.8/deps/glad_gl.c.i
.PHONY : glfw-3.3.8/deps/glad_gl.i

# target to preprocess a source file
glfw-3.3.8/deps/glad_gl.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/glfw-3.3.8/deps/glad_gl.c.i
.PHONY : glfw-3.3.8/deps/glad_gl.c.i

glfw-3.3.8/deps/glad_gl.s: glfw-3.3.8/deps/glad_gl.c.s
.PHONY : glfw-3.3.8/deps/glad_gl.s

# target to generate assembly for a file
glfw-3.3.8/deps/glad_gl.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/glfw-3.3.8/deps/glad_gl.c.s
.PHONY : glfw-3.3.8/deps/glad_gl.c.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Ass.dir/build.make CMakeFiles/Ass.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... update_mappings"
	@echo "... Ass"
	@echo "... glfw"
	@echo "... glfw-3.3.8/deps/glad_gl.o"
	@echo "... glfw-3.3.8/deps/glad_gl.i"
	@echo "... glfw-3.3.8/deps/glad_gl.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

