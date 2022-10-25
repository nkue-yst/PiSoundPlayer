# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yoshi/source/PiSoundPlayer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yoshi/source/PiSoundPlayer/build

# Include any dependencies generated for this target.
include CMakeFiles/PiSoundPlayer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PiSoundPlayer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PiSoundPlayer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PiSoundPlayer.dir/flags.make

CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o: CMakeFiles/PiSoundPlayer.dir/flags.make
CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o: ../src/OscReceiver.cpp
CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o: CMakeFiles/PiSoundPlayer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoshi/source/PiSoundPlayer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o -MF CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o.d -o CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o -c /home/yoshi/source/PiSoundPlayer/src/OscReceiver.cpp

CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoshi/source/PiSoundPlayer/src/OscReceiver.cpp > CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.i

CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoshi/source/PiSoundPlayer/src/OscReceiver.cpp -o CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.s

CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o: CMakeFiles/PiSoundPlayer.dir/flags.make
CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o: CMakeFiles/PiSoundPlayer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoshi/source/PiSoundPlayer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o -MF CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o.d -o CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o -c /home/yoshi/source/PiSoundPlayer/src/main.cpp

CMakeFiles/PiSoundPlayer.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiSoundPlayer.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoshi/source/PiSoundPlayer/src/main.cpp > CMakeFiles/PiSoundPlayer.dir/src/main.cpp.i

CMakeFiles/PiSoundPlayer.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiSoundPlayer.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoshi/source/PiSoundPlayer/src/main.cpp -o CMakeFiles/PiSoundPlayer.dir/src/main.cpp.s

# Object files for target PiSoundPlayer
PiSoundPlayer_OBJECTS = \
"CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o" \
"CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o"

# External object files for target PiSoundPlayer
PiSoundPlayer_EXTERNAL_OBJECTS =

PiSoundPlayer: CMakeFiles/PiSoundPlayer.dir/src/OscReceiver.cpp.o
PiSoundPlayer: CMakeFiles/PiSoundPlayer.dir/src/main.cpp.o
PiSoundPlayer: CMakeFiles/PiSoundPlayer.dir/build.make
PiSoundPlayer: /usr/lib/x86_64-linux-gnu/libSDL2_mixer.so
PiSoundPlayer: liboscpack.a
PiSoundPlayer: /usr/lib/x86_64-linux-gnu/libSDL2main.a
PiSoundPlayer: /usr/lib/x86_64-linux-gnu/libSDL2.so
PiSoundPlayer: CMakeFiles/PiSoundPlayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yoshi/source/PiSoundPlayer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable PiSoundPlayer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PiSoundPlayer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PiSoundPlayer.dir/build: PiSoundPlayer
.PHONY : CMakeFiles/PiSoundPlayer.dir/build

CMakeFiles/PiSoundPlayer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PiSoundPlayer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PiSoundPlayer.dir/clean

CMakeFiles/PiSoundPlayer.dir/depend:
	cd /home/yoshi/source/PiSoundPlayer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yoshi/source/PiSoundPlayer /home/yoshi/source/PiSoundPlayer /home/yoshi/source/PiSoundPlayer/build /home/yoshi/source/PiSoundPlayer/build /home/yoshi/source/PiSoundPlayer/build/CMakeFiles/PiSoundPlayer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PiSoundPlayer.dir/depend

