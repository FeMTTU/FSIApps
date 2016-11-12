# - Try to find Femus
# Once done this will define
#
# FEMUS_BUILD_DIR
#
#  Usage:
#  find_package(Femus)                 
#
# Setting these changes the behavior of the search
#  FEMUS_BUILD_DIR - directory in which Femus build resides
#

FIND_PATH (FEMUS_BUILD_DIR UseFemus.CMake
  HINTS ENV FEMUS_BUILD_DIR
  PATHS
  # Linux Path
  $ENV{HOME}/software/femusbinaryopt
  DOC "Femus Directory")

  
IF(EXISTS "${FEMUS_BUILD_DIR}/UseFemus.CMake")
  INCLUDE(${FEMUS_BUILD_DIR}/UseFemus.CMake)
  INCLUDE_DIRECTORIES(${FEMUS_INCLUDES})
ELSE()
  MESSAGE(SEND_ERROR "FEMUS_BUILD_DIR can not be used, ${FEMUS_BUILD_DIR}/UseFemus.CMake does not exist")
ENDIF() 
  
