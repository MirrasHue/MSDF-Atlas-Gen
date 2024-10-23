# Set the path to the libpng source directory and include directories
set(PNG_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/libpng")
set(PNG_SOURCE_DIR "${CMAKE_SOURCE_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/libpng")
set(PNG_BINARY_DIR "${CMAKE_BINARY_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/libpng")

# Set the include directories variable for consumers of find_package
set(PNG_INCLUDE_DIRS ${PNG_INCLUDE_DIR} ${PNG_BINARY_DIR})

# Create an interface target for libpng
add_library(PNG::PNG INTERFACE IMPORTED)

set_target_properties(PNG::PNG PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${PNG_INCLUDE_DIRS}"
)

# Declare that libpng has been found
set(PNG_FOUND TRUE)
