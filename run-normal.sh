/home/raynardwidjaja/discopop/scripts/dp-fmap

#CU Generation
clang-8 -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/raynardwidjaja/discopop/build/libi/LLVMCUGeneration.so -mllvm -fm-path -mllvm ./FileMapping.txt -c test.c

#Dependence Profiling
clang-8 -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/raynardwidjaja/discopop/build/libi/LLVMDPInstrumentation.so -mllvm -fm-path -mllvm ./FileMapping.txt -c test.c -o test.o
clang++-8 test.o -L /home/raynardwidjaja/discopop/build/rtlib -lDiscoPoP_RT -lpthread

mv a.out test
./test

#Reduction
clang++-8 -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/raynardwidjaja/discopop/build/libi/LLVMDPReduction.so -mllvm -fm-path -mllvm ./FileMapping.txt -c test.c -o out.o
clang++-8 test.o -L /home/raynardwidjaja/discopop/build/rtlib -lDiscoPoP_RT -lpthread

mv a.out test
./test 

mv test_dep.txt dp_run_dep.txt