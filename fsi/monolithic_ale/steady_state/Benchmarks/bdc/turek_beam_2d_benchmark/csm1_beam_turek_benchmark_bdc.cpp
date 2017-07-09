#include <vector>
#include <cmath>
#include <cstring>
#include <iostream>

// double InitalValueU(const std::vector < double >& x);

extern "C" double InitalValueU(const std::vector < double >& x) {
  return 0.;
}

//---------------------------------------------------------------------------------------------------------------------

// facename 1: clamped portion of the beam
// facename 2: the free portion

extern "C" bool BdcFunction(const std::vector < double >& x,const char name[], double &value, const int facename, const double time) {
  bool test=1; //dirichlet
  value=0.;
  if(!strcmp(name,"U")) {
    if(1==facename){
      test=1;
      value=0.;

    }
    else if(2==facename){
      test=0;
      value=0.;
    }
  }
  else if(!strcmp(name,"V")){
    if(1==facename){
      test=1;
      value=0.;
    }
    else if(2==facename){
      test=0;
      value=0.;
    }
  }
  else if(!strcmp(name,"P")){
    if(1==facename){
      test=0;
      value=0.;
    }
    else if(2==facename ){
      test=0;
      value=0.;
    }
  }
  else if(!strcmp(name,"DX")){
    if(1==facename){
      test=1;
      value=0.;
    }
    else if(2==facename ){
      test=0;
      value=0.;
    }
  }
  else if(!strcmp(name,"DY")){
    if(1==facename){
      test=1;
      value=0.;
    }
    else if(2==facename ){
      test=0;
      value=0.;
    }
  }
  return test;
}
