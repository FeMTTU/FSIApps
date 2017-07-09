CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

PROJECT(csm1_beam_turek_benchmark_bdc)

SET(bdc_src 
csm1_beam_turek_benchmark_bdc.cpp)

ADD_LIBRARY(${PROJECT_NAME} SHARED ${bdc_src})
