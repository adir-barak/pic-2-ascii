# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/adirb/CLionProjects/pic2ascii

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile

# Include any dependencies generated for this target.
include CMakeFiles/pic2ascii.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pic2ascii.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pic2ascii.dir/flags.make

CMakeFiles/pic2ascii.dir/main.cpp.o: CMakeFiles/pic2ascii.dir/flags.make
CMakeFiles/pic2ascii.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pic2ascii.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pic2ascii.dir/main.cpp.o -c /mnt/c/Users/adirb/CLionProjects/pic2ascii/main.cpp

CMakeFiles/pic2ascii.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pic2ascii.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/adirb/CLionProjects/pic2ascii/main.cpp > CMakeFiles/pic2ascii.dir/main.cpp.i

CMakeFiles/pic2ascii.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pic2ascii.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/adirb/CLionProjects/pic2ascii/main.cpp -o CMakeFiles/pic2ascii.dir/main.cpp.s

# Object files for target pic2ascii
pic2ascii_OBJECTS = \
"CMakeFiles/pic2ascii.dir/main.cpp.o"

# External object files for target pic2ascii
pic2ascii_EXTERNAL_OBJECTS =

pic2ascii: CMakeFiles/pic2ascii.dir/main.cpp.o
pic2ascii: CMakeFiles/pic2ascii.dir/build.make
pic2ascii: CMakeFiles/pic2ascii.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pic2ascii"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pic2ascii.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pic2ascii.dir/build: pic2ascii

.PHONY : CMakeFiles/pic2ascii.dir/build

CMakeFiles/pic2ascii.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pic2ascii.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pic2ascii.dir/clean

CMakeFiles/pic2ascii.dir/depend:
	cd /mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/adirb/CLionProjects/pic2ascii /mnt/c/Users/adirb/CLionProjects/pic2ascii /mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile /mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile /mnt/c/Users/adirb/CLionProjects/pic2ascii/cmake-build-wsl_profile/CMakeFiles/pic2ascii.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pic2ascii.dir/depend

