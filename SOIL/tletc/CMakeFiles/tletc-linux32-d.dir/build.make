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
CMAKE_SOURCE_DIR = /home/kev/Documents/dev/tletc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kev/Documents/dev/tletc

# Include any dependencies generated for this target.
include CMakeFiles/tletc-linux32-d.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tletc-linux32-d.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tletc-linux32-d.dir/flags.make

CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.o: src/linuxmain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.o -c /home/kev/Documents/dev/tletc/src/linuxmain.cpp

CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/linuxmain.cpp > CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/linuxmain.cpp -o CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.o: src/TLETC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.o -c /home/kev/Documents/dev/tletc/src/TLETC.cpp

CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/TLETC.cpp > CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/TLETC.cpp -o CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.o: src/utils/FileIO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.o -c /home/kev/Documents/dev/tletc/src/utils/FileIO.cpp

CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/utils/FileIO.cpp > CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/utils/FileIO.cpp -o CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.o: src/graphics/BetterGL2DRenderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/BetterGL2DRenderer.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/BetterGL2DRenderer.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/BetterGL2DRenderer.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.o: src/graphics/ShaderArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/ShaderArray.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/ShaderArray.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/ShaderArray.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.o: src/graphics/TextureArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/TextureArray.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/TextureArray.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/TextureArray.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.o: src/graphics/ShaderProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/ShaderProgram.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/ShaderProgram.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/ShaderProgram.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.o: src/graphics/TextureProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/TextureProgram.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/TextureProgram.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/TextureProgram.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.o: src/graphics/layers/Layer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/layers/Layer.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/layers/Layer.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/layers/Layer.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.o: src/graphics/layers/Group.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/layers/Group.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/layers/Group.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/layers/Group.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.o: src/graphics/layers/TileLayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/layers/TileLayer.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/layers/TileLayer.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/layers/TileLayer.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.o: src/graphics/renderables/StaticSprite2D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/renderables/StaticSprite2D.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/renderables/StaticSprite2D.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/renderables/StaticSprite2D.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.o: src/graphics/renderables/Sprite2D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/renderables/Sprite2D.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/renderables/Sprite2D.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/renderables/Sprite2D.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.o: src/graphics/buffers/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/buffers/Buffer.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/buffers/Buffer.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/buffers/Buffer.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.o: src/graphics/buffers/IndexBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/buffers/IndexBuffer.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/buffers/IndexBuffer.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/buffers/IndexBuffer.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.o: src/graphics/buffers/VertexArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.o -c /home/kev/Documents/dev/tletc/src/graphics/buffers/VertexArray.cpp

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/graphics/buffers/VertexArray.cpp > CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/graphics/buffers/VertexArray.cpp -o CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.o: src/math/vec2u.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.o -c /home/kev/Documents/dev/tletc/src/math/vec2u.cpp

CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/math/vec2u.cpp > CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/math/vec2u.cpp -o CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.o: src/math/vec2f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.o -c /home/kev/Documents/dev/tletc/src/math/vec2f.cpp

CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/math/vec2f.cpp > CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/math/vec2f.cpp -o CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.o: src/math/vec3f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.o -c /home/kev/Documents/dev/tletc/src/math/vec3f.cpp

CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/math/vec3f.cpp > CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/math/vec3f.cpp -o CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.o: src/math/vec4f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.o -c /home/kev/Documents/dev/tletc/src/math/vec4f.cpp

CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/math/vec4f.cpp > CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/math/vec4f.cpp -o CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.o: src/math/mat2f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.o -c /home/kev/Documents/dev/tletc/src/math/mat2f.cpp

CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/math/mat2f.cpp > CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/math/mat2f.cpp -o CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.s

CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.o: CMakeFiles/tletc-linux32-d.dir/flags.make
CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.o: src/math/mat4f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building CXX object CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.o -c /home/kev/Documents/dev/tletc/src/math/mat4f.cpp

CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kev/Documents/dev/tletc/src/math/mat4f.cpp > CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.i

CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kev/Documents/dev/tletc/src/math/mat4f.cpp -o CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.s

# Object files for target tletc-linux32-d
tletc__linux32__d_OBJECTS = \
"CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.o" \
"CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.o"

# External object files for target tletc-linux32-d
tletc__linux32__d_EXTERNAL_OBJECTS =

tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/linuxmain.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/TLETC.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/utils/FileIO.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/BetterGL2DRenderer.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderArray.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureArray.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/ShaderProgram.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/TextureProgram.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Layer.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/Group.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/layers/TileLayer.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/StaticSprite2D.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/renderables/Sprite2D.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/Buffer.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/IndexBuffer.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/graphics/buffers/VertexArray.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/math/vec2u.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/math/vec2f.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/math/vec3f.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/math/vec4f.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/math/mat2f.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/src/math/mat4f.cpp.o
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/build.make
tletc-linux32-d: CMakeFiles/tletc-linux32-d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kev/Documents/dev/tletc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Linking CXX executable tletc-linux32-d"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tletc-linux32-d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tletc-linux32-d.dir/build: tletc-linux32-d

.PHONY : CMakeFiles/tletc-linux32-d.dir/build

CMakeFiles/tletc-linux32-d.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tletc-linux32-d.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tletc-linux32-d.dir/clean

CMakeFiles/tletc-linux32-d.dir/depend:
	cd /home/kev/Documents/dev/tletc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kev/Documents/dev/tletc /home/kev/Documents/dev/tletc /home/kev/Documents/dev/tletc /home/kev/Documents/dev/tletc /home/kev/Documents/dev/tletc/CMakeFiles/tletc-linux32-d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tletc-linux32-d.dir/depend

