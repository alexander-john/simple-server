# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Shawn\Desktop\small projects\simple-server"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Shawn\Desktop\small projects\simple-server\build"

# Include any dependencies generated for this target.
include client/CMakeFiles/client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include client/CMakeFiles/client.dir/compiler_depend.make

# Include the progress variables for this target.
include client/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include client/CMakeFiles/client.dir/flags.make

client/CMakeFiles/client.dir/client.cpp.obj: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/client.cpp.obj: C:/Users/Shawn/Desktop/small\ projects/simple-server/client/client.cpp
client/CMakeFiles/client.dir/client.cpp.obj: client/CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Shawn\Desktop\small projects\simple-server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object client/CMakeFiles/client.dir/client.cpp.obj"
	cd /d C:\Users\Shawn\Desktop\SMALLP~1\SIMPLE~1\build\client && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT client/CMakeFiles/client.dir/client.cpp.obj -MF CMakeFiles\client.dir\client.cpp.obj.d -o CMakeFiles\client.dir\client.cpp.obj -c "C:\Users\Shawn\Desktop\small projects\simple-server\client\client.cpp"

client/CMakeFiles/client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/client.cpp.i"
	cd /d C:\Users\Shawn\Desktop\SMALLP~1\SIMPLE~1\build\client && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Shawn\Desktop\small projects\simple-server\client\client.cpp" > CMakeFiles\client.dir\client.cpp.i

client/CMakeFiles/client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/client.cpp.s"
	cd /d C:\Users\Shawn\Desktop\SMALLP~1\SIMPLE~1\build\client && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Shawn\Desktop\small projects\simple-server\client\client.cpp" -o CMakeFiles\client.dir\client.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/client.cpp.obj"

# External object files for target client
client_EXTERNAL_OBJECTS =

client/client.exe: client/CMakeFiles/client.dir/client.cpp.obj
client/client.exe: client/CMakeFiles/client.dir/build.make
client/client.exe: client/CMakeFiles/client.dir/linkLibs.rsp
client/client.exe: client/CMakeFiles/client.dir/objects1.rsp
client/client.exe: client/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\Shawn\Desktop\small projects\simple-server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable client.exe"
	cd /d C:\Users\Shawn\Desktop\SMALLP~1\SIMPLE~1\build\client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client/CMakeFiles/client.dir/build: client/client.exe
.PHONY : client/CMakeFiles/client.dir/build

client/CMakeFiles/client.dir/clean:
	cd /d C:\Users\Shawn\Desktop\SMALLP~1\SIMPLE~1\build\client && $(CMAKE_COMMAND) -P CMakeFiles\client.dir\cmake_clean.cmake
.PHONY : client/CMakeFiles/client.dir/clean

client/CMakeFiles/client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Shawn\Desktop\small projects\simple-server" "C:\Users\Shawn\Desktop\small projects\simple-server\client" "C:\Users\Shawn\Desktop\small projects\simple-server\build" "C:\Users\Shawn\Desktop\small projects\simple-server\build\client" "C:\Users\Shawn\Desktop\small projects\simple-server\build\client\CMakeFiles\client.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : client/CMakeFiles/client.dir/depend

