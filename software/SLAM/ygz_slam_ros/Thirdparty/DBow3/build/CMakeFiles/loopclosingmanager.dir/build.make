# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build

# Include any dependencies generated for this target.
include CMakeFiles/loopclosingmanager.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/loopclosingmanager.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/loopclosingmanager.dir/flags.make

CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o: CMakeFiles/loopclosingmanager.dir/flags.make
CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o: ../src/LoopClosingManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o -c /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/LoopClosingManager.cpp

CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/LoopClosingManager.cpp > CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.i

CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/LoopClosingManager.cpp -o CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.s

CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.requires:

.PHONY : CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.requires

CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.provides: CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/loopclosingmanager.dir/build.make CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.provides.build
.PHONY : CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.provides

CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.provides.build: CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o


# Object files for target loopclosingmanager
loopclosingmanager_OBJECTS = \
"CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o"

# External object files for target loopclosingmanager
loopclosingmanager_EXTERNAL_OBJECTS =

libloopclosingmanager.so: CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o
libloopclosingmanager.so: CMakeFiles/loopclosingmanager.dir/build.make
libloopclosingmanager.so: src/libDBoW3.so.0.0.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
libloopclosingmanager.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
libloopclosingmanager.so: CMakeFiles/loopclosingmanager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libloopclosingmanager.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/loopclosingmanager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/loopclosingmanager.dir/build: libloopclosingmanager.so

.PHONY : CMakeFiles/loopclosingmanager.dir/build

CMakeFiles/loopclosingmanager.dir/requires: CMakeFiles/loopclosingmanager.dir/src/LoopClosingManager.cpp.o.requires

.PHONY : CMakeFiles/loopclosingmanager.dir/requires

CMakeFiles/loopclosingmanager.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/loopclosingmanager.dir/cmake_clean.cmake
.PHONY : CMakeFiles/loopclosingmanager.dir/clean

CMakeFiles/loopclosingmanager.dir/depend:
	cd /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3 /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3 /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build/CMakeFiles/loopclosingmanager.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/loopclosingmanager.dir/depend

