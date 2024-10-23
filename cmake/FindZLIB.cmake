# Set the path to the zlib source directory and include directories
set(ZLIB_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/zlib")
set(ZLIB_SOURCE_DIR "${CMAKE_SOURCE_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/zlib")

# Set the include directories variable for consumers of find_package
set(ZLIB_INCLUDE_DIRS ${ZLIB_INCLUDE_DIR})

# Create an interface target for zlib
add_library(ZLIB::ZLIB INTERFACE IMPORTED)

set_target_properties(ZLIB::ZLIB PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${ZLIB_INCLUDE_DIRS}"
)

# Declare that zlib has been found
set(ZLIB_FOUND TRUE)
