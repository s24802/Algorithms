# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Clion\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Clion\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\tiger\huffman

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\tiger\huffman\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/huffman.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/huffman.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/huffman.dir/flags.make

CMakeFiles/huffman.dir/main.cpp.obj: CMakeFiles/huffman.dir/flags.make
CMakeFiles/huffman.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tiger\huffman\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/huffman.dir/main.cpp.obj"
	C:\PROGRA~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\huffman.dir\main.cpp.obj -c C:\Users\tiger\huffman\main.cpp

CMakeFiles/huffman.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/huffman.dir/main.cpp.i"
	C:\PROGRA~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tiger\huffman\main.cpp > CMakeFiles\huffman.dir\main.cpp.i

CMakeFiles/huffman.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/huffman.dir/main.cpp.s"
	C:\PROGRA~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tiger\huffman\main.cpp -o CMakeFiles\huffman.dir\main.cpp.s

# Object files for target huffman
huffman_OBJECTS = \
"CMakeFiles/huffman.dir/main.cpp.obj"

# External object files for target huffman
huffman_EXTERNAL_OBJECTS =

huffman.exe: CMakeFiles/huffman.dir/main.cpp.obj
huffman.exe: CMakeFiles/huffman.dir/build.make
huffman.exe: CMakeFiles/huffman.dir/linklibs.rsp
huffman.exe: CMakeFiles/huffman.dir/objects1.rsp
huffman.exe: CMakeFiles/huffman.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\tiger\huffman\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable huffman.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\huffman.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/huffman.dir/build: huffman.exe
.PHONY : CMakeFiles/huffman.dir/build

CMakeFiles/huffman.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\huffman.dir\cmake_clean.cmake
.PHONY : CMakeFiles/huffman.dir/clean

CMakeFiles/huffman.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\tiger\huffman C:\Users\tiger\huffman C:\Users\tiger\huffman\cmake-build-debug C:\Users\tiger\huffman\cmake-build-debug C:\Users\tiger\huffman\cmake-build-debug\CMakeFiles\huffman.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/huffman.dir/depend

