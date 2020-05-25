# The CMake modules shipped with OpenCV do not contain targets.
find_package(PkgConfig)

pkg_check_modules(OPENCV opencv)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(OpenCV
  REQUIRED_VARS OPENCV_LIBRARIES
)

add_library(OpenCV::OpenCV INTERFACE IMPORTED)
set_target_properties(OpenCV::OpenCV PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${OPENCV_INCLUDE_DIRS}"
  INTERFACE_LINK_LIBRARIES "${OPENCV_LIBRARIES}"
)
