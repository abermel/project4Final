# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amandabermel/Desktop/project4Final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amandabermel/Desktop/project4Final/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/project4Final.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/project4Final.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project4Final.dir/flags.make

CMakeFiles/project4Final.dir/main.cpp.o: CMakeFiles/project4Final.dir/flags.make
CMakeFiles/project4Final.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amandabermel/Desktop/project4Final/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project4Final.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project4Final.dir/main.cpp.o -c /Users/amandabermel/Desktop/project4Final/main.cpp

CMakeFiles/project4Final.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project4Final.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amandabermel/Desktop/project4Final/main.cpp > CMakeFiles/project4Final.dir/main.cpp.i

CMakeFiles/project4Final.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project4Final.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amandabermel/Desktop/project4Final/main.cpp -o CMakeFiles/project4Final.dir/main.cpp.s

CMakeFiles/project4Final.dir/runCode.cpp.o: CMakeFiles/project4Final.dir/flags.make
CMakeFiles/project4Final.dir/runCode.cpp.o: ../runCode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amandabermel/Desktop/project4Final/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/project4Final.dir/runCode.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project4Final.dir/runCode.cpp.o -c /Users/amandabermel/Desktop/project4Final/runCode.cpp

CMakeFiles/project4Final.dir/runCode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project4Final.dir/runCode.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amandabermel/Desktop/project4Final/runCode.cpp > CMakeFiles/project4Final.dir/runCode.cpp.i

CMakeFiles/project4Final.dir/runCode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project4Final.dir/runCode.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amandabermel/Desktop/project4Final/runCode.cpp -o CMakeFiles/project4Final.dir/runCode.cpp.s

# Object files for target project4Final
project4Final_OBJECTS = \
"CMakeFiles/project4Final.dir/main.cpp.o" \
"CMakeFiles/project4Final.dir/runCode.cpp.o"

# External object files for target project4Final
project4Final_EXTERNAL_OBJECTS =

project4Final: CMakeFiles/project4Final.dir/main.cpp.o
project4Final: CMakeFiles/project4Final.dir/runCode.cpp.o
project4Final: CMakeFiles/project4Final.dir/build.make
project4Final: CMakeFiles/project4Final.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amandabermel/Desktop/project4Final/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable project4Final"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project4Final.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project4Final.dir/build: project4Final

.PHONY : CMakeFiles/project4Final.dir/build

CMakeFiles/project4Final.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project4Final.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project4Final.dir/clean

CMakeFiles/project4Final.dir/depend:
	cd /Users/amandabermel/Desktop/project4Final/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amandabermel/Desktop/project4Final /Users/amandabermel/Desktop/project4Final /Users/amandabermel/Desktop/project4Final/cmake-build-debug /Users/amandabermel/Desktop/project4Final/cmake-build-debug /Users/amandabermel/Desktop/project4Final/cmake-build-debug/CMakeFiles/project4Final.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project4Final.dir/depend

