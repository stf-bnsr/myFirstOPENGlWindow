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
CMAKE_SOURCE_DIR = /home/stof/openGL/proj2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stof/openGL/proj2/build

# Include any dependencies generated for this target.
include CMakeFiles/proj2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/proj2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/proj2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/proj2.dir/flags.make

CMakeFiles/proj2.dir/src/glad.c.o: CMakeFiles/proj2.dir/flags.make
CMakeFiles/proj2.dir/src/glad.c.o: ../src/glad.c
CMakeFiles/proj2.dir/src/glad.c.o: CMakeFiles/proj2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stof/openGL/proj2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/proj2.dir/src/glad.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/proj2.dir/src/glad.c.o -MF CMakeFiles/proj2.dir/src/glad.c.o.d -o CMakeFiles/proj2.dir/src/glad.c.o -c /home/stof/openGL/proj2/src/glad.c

CMakeFiles/proj2.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/proj2.dir/src/glad.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stof/openGL/proj2/src/glad.c > CMakeFiles/proj2.dir/src/glad.c.i

CMakeFiles/proj2.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/proj2.dir/src/glad.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stof/openGL/proj2/src/glad.c -o CMakeFiles/proj2.dir/src/glad.c.s

CMakeFiles/proj2.dir/src/tt.cpp.o: CMakeFiles/proj2.dir/flags.make
CMakeFiles/proj2.dir/src/tt.cpp.o: ../src/tt.cpp
CMakeFiles/proj2.dir/src/tt.cpp.o: CMakeFiles/proj2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stof/openGL/proj2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/proj2.dir/src/tt.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/proj2.dir/src/tt.cpp.o -MF CMakeFiles/proj2.dir/src/tt.cpp.o.d -o CMakeFiles/proj2.dir/src/tt.cpp.o -c /home/stof/openGL/proj2/src/tt.cpp

CMakeFiles/proj2.dir/src/tt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proj2.dir/src/tt.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stof/openGL/proj2/src/tt.cpp > CMakeFiles/proj2.dir/src/tt.cpp.i

CMakeFiles/proj2.dir/src/tt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proj2.dir/src/tt.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stof/openGL/proj2/src/tt.cpp -o CMakeFiles/proj2.dir/src/tt.cpp.s

# Object files for target proj2
proj2_OBJECTS = \
"CMakeFiles/proj2.dir/src/glad.c.o" \
"CMakeFiles/proj2.dir/src/tt.cpp.o"

# External object files for target proj2
proj2_EXTERNAL_OBJECTS =

proj2: CMakeFiles/proj2.dir/src/glad.c.o
proj2: CMakeFiles/proj2.dir/src/tt.cpp.o
proj2: CMakeFiles/proj2.dir/build.make
proj2: /usr/lib/x86_64-linux-gnu/libGL.so
proj2: /usr/lib/x86_64-linux-gnu/libGLU.so
proj2: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
proj2: CMakeFiles/proj2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stof/openGL/proj2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable proj2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proj2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/proj2.dir/build: proj2
.PHONY : CMakeFiles/proj2.dir/build

CMakeFiles/proj2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/proj2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/proj2.dir/clean

CMakeFiles/proj2.dir/depend:
	cd /home/stof/openGL/proj2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stof/openGL/proj2 /home/stof/openGL/proj2 /home/stof/openGL/proj2/build /home/stof/openGL/proj2/build /home/stof/openGL/proj2/build/CMakeFiles/proj2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/proj2.dir/depend

