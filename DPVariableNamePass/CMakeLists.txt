include_directories(
  ../share/include
)

add_llvm_library(LLVMDPVariableNamePass MODULE
  DPVariableNamePass.cpp
  )