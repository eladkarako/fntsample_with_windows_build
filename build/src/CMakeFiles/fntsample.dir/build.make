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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Elad/fntsample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Elad/fntsample/build

# Include any dependencies generated for this target.
include src/CMakeFiles/fntsample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/fntsample.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/fntsample.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/fntsample.dir/flags.make

src/static_unicode_blocks.c: /home/Elad/Blocks.txt
src/static_unicode_blocks.c: src/gen-unicode-blocks.exe
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/Elad/fntsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating static_unicode_blocks.c"
	cd /home/Elad/fntsample/build/src && ./gen-unicode-blocks.exe /home/Elad/Blocks.txt static_unicode_blocks.c

src/CMakeFiles/fntsample.dir/fntsample.c.o: src/CMakeFiles/fntsample.dir/flags.make
src/CMakeFiles/fntsample.dir/fntsample.c.o: ../src/fntsample.c
src/CMakeFiles/fntsample.dir/fntsample.c.o: src/CMakeFiles/fntsample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/Elad/fntsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/fntsample.dir/fntsample.c.o"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/fntsample.dir/fntsample.c.o -MF CMakeFiles/fntsample.dir/fntsample.c.o.d -o CMakeFiles/fntsample.dir/fntsample.c.o -c /home/Elad/fntsample/src/fntsample.c

src/CMakeFiles/fntsample.dir/fntsample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fntsample.dir/fntsample.c.i"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Elad/fntsample/src/fntsample.c > CMakeFiles/fntsample.dir/fntsample.c.i

src/CMakeFiles/fntsample.dir/fntsample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fntsample.dir/fntsample.c.s"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Elad/fntsample/src/fntsample.c -o CMakeFiles/fntsample.dir/fntsample.c.s

src/CMakeFiles/fntsample.dir/read_blocks.c.o: src/CMakeFiles/fntsample.dir/flags.make
src/CMakeFiles/fntsample.dir/read_blocks.c.o: ../src/read_blocks.c
src/CMakeFiles/fntsample.dir/read_blocks.c.o: src/CMakeFiles/fntsample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/Elad/fntsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/fntsample.dir/read_blocks.c.o"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/fntsample.dir/read_blocks.c.o -MF CMakeFiles/fntsample.dir/read_blocks.c.o.d -o CMakeFiles/fntsample.dir/read_blocks.c.o -c /home/Elad/fntsample/src/read_blocks.c

src/CMakeFiles/fntsample.dir/read_blocks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fntsample.dir/read_blocks.c.i"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Elad/fntsample/src/read_blocks.c > CMakeFiles/fntsample.dir/read_blocks.c.i

src/CMakeFiles/fntsample.dir/read_blocks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fntsample.dir/read_blocks.c.s"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Elad/fntsample/src/read_blocks.c -o CMakeFiles/fntsample.dir/read_blocks.c.s

src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.o: src/CMakeFiles/fntsample.dir/flags.make
src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.o: src/static_unicode_blocks.c
src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.o: src/CMakeFiles/fntsample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/Elad/fntsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.o"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.o -MF CMakeFiles/fntsample.dir/static_unicode_blocks.c.o.d -o CMakeFiles/fntsample.dir/static_unicode_blocks.c.o -c /home/Elad/fntsample/build/src/static_unicode_blocks.c

src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fntsample.dir/static_unicode_blocks.c.i"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Elad/fntsample/build/src/static_unicode_blocks.c > CMakeFiles/fntsample.dir/static_unicode_blocks.c.i

src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fntsample.dir/static_unicode_blocks.c.s"
	cd /home/Elad/fntsample/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Elad/fntsample/build/src/static_unicode_blocks.c -o CMakeFiles/fntsample.dir/static_unicode_blocks.c.s

# Object files for target fntsample
fntsample_OBJECTS = \
"CMakeFiles/fntsample.dir/fntsample.c.o" \
"CMakeFiles/fntsample.dir/read_blocks.c.o" \
"CMakeFiles/fntsample.dir/static_unicode_blocks.c.o"

# External object files for target fntsample
fntsample_EXTERNAL_OBJECTS =

src/fntsample.exe: src/CMakeFiles/fntsample.dir/fntsample.c.o
src/fntsample.exe: src/CMakeFiles/fntsample.dir/read_blocks.c.o
src/fntsample.exe: src/CMakeFiles/fntsample.dir/static_unicode_blocks.c.o
src/fntsample.exe: src/CMakeFiles/fntsample.dir/build.make
src/fntsample.exe: /usr/lib/libm.a
src/fntsample.exe: /usr/lib/libpangoft2-1.0.dll.a
src/fntsample.exe: /usr/lib/libpango-1.0.dll.a
src/fntsample.exe: /usr/lib/libglib-2.0.dll.a
src/fntsample.exe: /usr/lib/libintl.dll.a
src/fntsample.exe: /usr/lib/libgobject-2.0.dll.a
src/fntsample.exe: /usr/lib/libfreetype.dll.a
src/fntsample.exe: /usr/lib/libfontconfig.dll.a
src/fntsample.exe: /usr/lib/libpangocairo-1.0.dll.a
src/fntsample.exe: /usr/lib/libcairo.dll.a
src/fntsample.exe: src/CMakeFiles/fntsample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/Elad/fntsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable fntsample.exe"
	cd /home/Elad/fntsample/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fntsample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/fntsample.dir/build: src/fntsample.exe
.PHONY : src/CMakeFiles/fntsample.dir/build

src/CMakeFiles/fntsample.dir/clean:
	cd /home/Elad/fntsample/build/src && $(CMAKE_COMMAND) -P CMakeFiles/fntsample.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/fntsample.dir/clean

src/CMakeFiles/fntsample.dir/depend: src/static_unicode_blocks.c
	cd /home/Elad/fntsample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Elad/fntsample /home/Elad/fntsample/src /home/Elad/fntsample/build /home/Elad/fntsample/build/src /home/Elad/fntsample/build/src/CMakeFiles/fntsample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/fntsample.dir/depend

