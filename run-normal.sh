/home/raynardwidjaja/discopop/scripts/dp-fmap

#CU Generation
clang -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/raynardwidjaja/discopop/build/libi/LLVMCUGeneration.so -mllvm -fm-path -mllvm ./FileMapping.txt -c test.c

#Dependence Profiling
clang -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/raynardwidjaja/discopop/build/libi/LLVMDPInstrumentation.so -mllvm -fm-path -mllvm ./FileMapping.txt -c test.c -o test.o
clang++ test.o -L /home/raynardwidjaja/discopop/build/rtlib -lDiscoPoP_RT -lpthread

./test

#Reduction
clang++ -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/raynardwidjaja/discopop/build/libi/LLVMDPReduction.so -mllvm -fm-path -mllvm ./FileMapping.txt -c test.c -o out.o
clang++ test.o -L /home/raynardwidjaja/discopop/build/rtlib -lDiscoPoP_RT -lpthread

./test
