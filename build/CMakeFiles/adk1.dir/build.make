# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/wxc/Documents/study-myself/MyArticles

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wxc/Documents/study-myself/MyArticles/build

# Include any dependencies generated for this target.
include CMakeFiles/adk1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/adk1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/adk1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/adk1.dir/flags.make

CMakeFiles/adk1.dir/adk.cpp.o: CMakeFiles/adk1.dir/flags.make
CMakeFiles/adk1.dir/adk.cpp.o: ../adk.cpp
CMakeFiles/adk1.dir/adk.cpp.o: CMakeFiles/adk1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wxc/Documents/study-myself/MyArticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/adk1.dir/adk.cpp.o"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/adk1.dir/adk.cpp.o -MF CMakeFiles/adk1.dir/adk.cpp.o.d -o CMakeFiles/adk1.dir/adk.cpp.o -c /home/wxc/Documents/study-myself/MyArticles/adk.cpp

CMakeFiles/adk1.dir/adk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adk1.dir/adk.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wxc/Documents/study-myself/MyArticles/adk.cpp > CMakeFiles/adk1.dir/adk.cpp.i

CMakeFiles/adk1.dir/adk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adk1.dir/adk.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wxc/Documents/study-myself/MyArticles/adk.cpp -o CMakeFiles/adk1.dir/adk.cpp.s

# Object files for target adk1
adk1_OBJECTS = \
"CMakeFiles/adk1.dir/adk.cpp.o"

# External object files for target adk1
adk1_EXTERNAL_OBJECTS =

libadk1.a: CMakeFiles/adk1.dir/adk.cpp.o
libadk1.a: CMakeFiles/adk1.dir/build.make
libadk1.a: CMakeFiles/adk1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wxc/Documents/study-myself/MyArticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libadk1.a"
	$(CMAKE_COMMAND) -P CMakeFiles/adk1.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/adk1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/adk1.dir/build: libadk1.a
.PHONY : CMakeFiles/adk1.dir/build

CMakeFiles/adk1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/adk1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/adk1.dir/clean

CMakeFiles/adk1.dir/depend:
	cd /home/wxc/Documents/study-myself/MyArticles/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wxc/Documents/study-myself/MyArticles /home/wxc/Documents/study-myself/MyArticles /home/wxc/Documents/study-myself/MyArticles/build /home/wxc/Documents/study-myself/MyArticles/build /home/wxc/Documents/study-myself/MyArticles/build/CMakeFiles/adk1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/adk1.dir/depend

