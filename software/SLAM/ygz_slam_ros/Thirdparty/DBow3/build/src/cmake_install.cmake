# Install script for directory: /home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "main")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libDBoW3.so.0.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libDBoW3.so.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libDBoW3.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build/src/libDBoW3.so.0.0.1"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build/src/libDBoW3.so.0.0"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/build/src/libDBoW3.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libDBoW3.so.0.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libDBoW3.so.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libDBoW3.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/opt/ros/kinetic/lib/x86_64-linux-gnu:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "main")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/DBoW3" TYPE FILE FILES
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/DException.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/DBoW3.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/BRIEF.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/Random.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/Database.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/Timestamp.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/DescManip.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/QueryResults.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/ScoringObject.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/FeatureVector.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/DUtils.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/quicklz.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/config.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/BowVector.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/timers.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/DVision.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/Vocabulary.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/LoopClosingManager.h"
    "/home/gishr/software/GAAS/software/SLAM/ygz_slam_ros/Thirdparty/DBow3/src/exports.h"
    )
endif()

