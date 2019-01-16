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
CMAKE_SOURCE_DIR = /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/jetsonbot_ws/build/libuvc_camera

# Include any dependencies generated for this target.
include CMakeFiles/camera_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/camera_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/camera_node.dir/flags.make

CMakeFiles/camera_node.dir/src/main.cpp.o: CMakeFiles/camera_node.dir/flags.make
CMakeFiles/camera_node.dir/src/main.cpp.o: /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/jetsonbot_ws/build/libuvc_camera/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/camera_node.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_node.dir/src/main.cpp.o -c /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/main.cpp

CMakeFiles/camera_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_node.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/main.cpp > CMakeFiles/camera_node.dir/src/main.cpp.i

CMakeFiles/camera_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_node.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/main.cpp -o CMakeFiles/camera_node.dir/src/main.cpp.s

CMakeFiles/camera_node.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/camera_node.dir/src/main.cpp.o.requires

CMakeFiles/camera_node.dir/src/main.cpp.o.provides: CMakeFiles/camera_node.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/camera_node.dir/build.make CMakeFiles/camera_node.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/camera_node.dir/src/main.cpp.o.provides

CMakeFiles/camera_node.dir/src/main.cpp.o.provides.build: CMakeFiles/camera_node.dir/src/main.cpp.o


CMakeFiles/camera_node.dir/src/camera_driver.cpp.o: CMakeFiles/camera_node.dir/flags.make
CMakeFiles/camera_node.dir/src/camera_driver.cpp.o: /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/camera_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/jetsonbot_ws/build/libuvc_camera/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/camera_node.dir/src/camera_driver.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_node.dir/src/camera_driver.cpp.o -c /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/camera_driver.cpp

CMakeFiles/camera_node.dir/src/camera_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_node.dir/src/camera_driver.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/camera_driver.cpp > CMakeFiles/camera_node.dir/src/camera_driver.cpp.i

CMakeFiles/camera_node.dir/src/camera_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_node.dir/src/camera_driver.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera/src/camera_driver.cpp -o CMakeFiles/camera_node.dir/src/camera_driver.cpp.s

CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires:

.PHONY : CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires

CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides: CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires
	$(MAKE) -f CMakeFiles/camera_node.dir/build.make CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides.build
.PHONY : CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides

CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides.build: CMakeFiles/camera_node.dir/src/camera_driver.cpp.o


# Object files for target camera_node
camera_node_OBJECTS = \
"CMakeFiles/camera_node.dir/src/main.cpp.o" \
"CMakeFiles/camera_node.dir/src/camera_driver.cpp.o"

# External object files for target camera_node
camera_node_EXTERNAL_OBJECTS =

/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: CMakeFiles/camera_node.dir/src/main.cpp.o
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: CMakeFiles/camera_node.dir/src/camera_driver.cpp.o
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: CMakeFiles/camera_node.dir/build.make
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/aarch64-linux-gnu/libuvc.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libcamera_info_manager.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libcamera_calibration_parsers.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libimage_transport.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libmessage_filters.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libnodeletlib.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libuuid.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libbondcpp.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libclass_loader.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/libPocoFoundation.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libdl.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libroslib.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librospack.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libtinyxml.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libroscpp.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librosconsole.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librostime.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libcpp_common.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libcamera_info_manager.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libcamera_calibration_parsers.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libimage_transport.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libmessage_filters.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libnodeletlib.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libuuid.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libbondcpp.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libclass_loader.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/libPocoFoundation.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libdl.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libroslib.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librospack.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libtinyxml.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libroscpp.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librosconsole.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/librostime.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /opt/ros/kinetic/lib/libcpp_common.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so
/home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node: CMakeFiles/camera_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/jetsonbot_ws/build/libuvc_camera/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/camera_node.dir/build: /home/nvidia/jetsonbot_ws/devel/.private/libuvc_camera/lib/libuvc_camera/camera_node

.PHONY : CMakeFiles/camera_node.dir/build

CMakeFiles/camera_node.dir/requires: CMakeFiles/camera_node.dir/src/main.cpp.o.requires
CMakeFiles/camera_node.dir/requires: CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires

.PHONY : CMakeFiles/camera_node.dir/requires

CMakeFiles/camera_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/camera_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/camera_node.dir/clean

CMakeFiles/camera_node.dir/depend:
	cd /home/nvidia/jetsonbot_ws/build/libuvc_camera && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera /home/nvidia/jetsonbot_ws/src/libuvc_ros/libuvc_camera /home/nvidia/jetsonbot_ws/build/libuvc_camera /home/nvidia/jetsonbot_ws/build/libuvc_camera /home/nvidia/jetsonbot_ws/build/libuvc_camera/CMakeFiles/camera_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/camera_node.dir/depend

