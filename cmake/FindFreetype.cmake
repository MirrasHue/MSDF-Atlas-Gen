# Set the path to the FreeType source directory and include directories
set(FREETYPE_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/freetype/include")
set(FREETYPE_SOURCE_DIR "${CMAKE_SOURCE_DIR}/MirrasENGINE/3rdParty/MSDF-Atlas-Gen/dependencies/freetype/src")

# Set the include directories variable for consumers of find_package
set(FREETYPE_INCLUDE_DIRS ${FREETYPE_INCLUDE_DIR})

# Create an interface target for FreeType
add_library(Freetype::Freetype INTERFACE IMPORTED)

set_target_properties(Freetype::Freetype PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${FREETYPE_INCLUDE_DIRS}"
)

# Declare that FreeType has been found
set(FREETYPE_FOUND TRUE)