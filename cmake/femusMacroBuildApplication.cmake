#
#  femusMacroBuildApplication.cmake
#
#  Created by Simone Bnà 
#
#

MACRO(femusMacroBuildApplication mainname appname)

# Build the executable
ADD_EXECUTABLE(${appname} ${PROJECT_SOURCE_DIR}/${mainname}.cpp)

# Link the executable to the petsc anf femttu libs
TARGET_LINK_LIBRARIES(${appname} ${FEMUS_LIBRARIES})

FILE(MAKE_DIRECTORY ${PROJECT_BINARY_DIR}/output/)
FILE(MAKE_DIRECTORY ${PROJECT_BINARY_DIR}/input/)
FILE(MAKE_DIRECTORY ${PROJECT_BINARY_DIR}/save/)
FILE(COPY           ${PROJECT_SOURCE_DIR}/input/ DESTINATION ${PROJECT_BINARY_DIR}/input/)
# TODO this file copy does not generate a dependency rule in the makefiles, maybe we should think of how to obtain that,
# to avoid re-running cmake when new input files are added in the applications

ENDMACRO(femusMacroBuildApplication)