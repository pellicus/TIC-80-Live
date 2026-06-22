# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/pellicus/Studio/TIC-80-Live/vendor/mruby")
  file(MAKE_DIRECTORY "/Users/pellicus/Studio/TIC-80-Live/vendor/mruby")
endif()
file(MAKE_DIRECTORY
  "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/src/mruby_vendor-build"
  "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix"
  "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/tmp"
  "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/src/mruby_vendor-stamp"
  "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/src"
  "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/src/mruby_vendor-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/src/mruby_vendor-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/pellicus/Studio/TIC-80-Live/build-release-macos-arm64-static/mruby_vendor-prefix/src/mruby_vendor-stamp${cfgdir}") # cfgdir has leading slash
endif()
