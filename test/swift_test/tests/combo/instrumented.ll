simonschmalfuss@gpu-server:~/discopop/examples+tests/tests/swift$ cat instrumented.ll 
; ModuleID = 'instrumented_reduction.ll'
source_filename = "reduction.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ %Ts28__ContiguousArrayStorageBaseC* }>
%Ts28__ContiguousArrayStorageBaseC = type opaque
%Ts16IndexingIteratorVySNySiGG = type <{ %TSNySiG, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G }>
%TSNySiG = type <{ %TSi, %TSi }>
%TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G = type <{ [8 x i8], [1 x i8] }>
%TSiSg = type <{ [8 x i8], [1 x i8] }>
%swift.refcounted = type { %swift.type*, i64 }
%swift.type = type { i64 }

@"$s9reduction10iterationsSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !0
@"$s9reduction2aGSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !8
@"$s9reduction2bGSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !10
@"$s9reduction2cGSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !12
@"$s9reduction8localResSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !14
@"$s9reduction6arrSumSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !16
@"$s9reduction6arrMulSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !18
@"$s9reduction1NSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !20
@"$s9reduction9globalArrSaySiGvp" = hidden global %TSa zeroinitializer, align 8, !dbg !22
@0 = private unnamed_addr constant [46 x i8] c"Can't form Range with upperBound < lowerBound\00"
@1 = private unnamed_addr constant [118 x i8] c"/home/buildnode/jenkins/workspace/oss-swift-5.1-package-linux-ubuntu-18_04/swift/stdlib/public/core/ClosedRange.swift\00"
@2 = private unnamed_addr constant [12 x i8] c"Fatal error\00"
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_swift1_autolink_entries = private constant [37 x i8] c"-lswiftSwiftOnoneSupport\00-lswiftCore\00", section ".swift1_autolink_entries", align 8
@llvm.used = appending global [2 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_swift1_autolink_entries, i32 0, i32 0)], section "llvm.metadata", align 8
@.str = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"aG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bG\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cG\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"localRes\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"arrSum\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"arrMul\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"globalArr\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"$i$generator\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"localArr\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"$i$generator11\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"$i$generator25\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"$i$generator41\00", align 1

define protected i32 @main(i32, i8**) #0 !dbg !42 {
entry:
  call void @__dp_func_entry(i32 16385, i32 1)
  %access-scratch = alloca [24 x i8], align 8
  %2 = bitcast i8** %1 to i8*
  %3 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16385, i64 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i64 10000, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !47
  %4 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2aGSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16386, i64 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2aGSivp", i32 0, i32 0), align 8, !dbg !49
  %5 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16386, i64 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0), align 8, !dbg !51
  %6 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16387, i64 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !52
  %7 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16388, i64 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0), align 8, !dbg !54
  %8 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction6arrSumSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16389, i64 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction6arrSumSivp", i32 0, i32 0), align 8, !dbg !56
  %9 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction6arrMulSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16389, i64 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction6arrMulSivp", i32 0, i32 0), align 8, !dbg !58
  %10 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction1NSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16392, i64 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store i64 25, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction1NSivp", i32 0, i32 0), align 8, !dbg !59
  %11 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !61
  call void @__dp_call(i32 16403), !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %11), !dbg !61
  call void @__dp_call(i32 16403), !dbg !61
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #2, !dbg !61
  %12 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16403, i64 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %13 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !61
  call void @__dp_call(i32 16403), !dbg !61
  call void @swift_endAccess([24 x i8]* %access-scratch) #2, !dbg !61
  %14 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !61
  call void @__dp_call(i32 16403), !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %14), !dbg !61
  call void @__dp_call(i32 16403), !dbg !63
  %15 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64 %13), !dbg !63
  %16 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_write(i32 16403, i64 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store %Ts28__ContiguousArrayStorageBaseC* %15, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !63
  call void @__dp_finalize(i32 16403), !dbg !63
  ret i32 0, !dbg !63
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @swift_beginAccess(i8*, [24 x i8]*, i64, i8*) #2

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: nounwind
declare void @swift_endAccess([24 x i8]*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

define hidden swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64) #0 !dbg !64 {
entry:
  call void @__dp_func_entry(i32 16395, i32 0)
  %iterations.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %iterations.debug, metadata !67, metadata !DIExpression()), !dbg !68
  %1 = bitcast i64* %iterations.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %arr = alloca %TSa, align 8
  call void @llvm.dbg.declare(metadata %TSa* %arr, metadata !69, metadata !DIExpression()), !dbg !71
  %2 = bitcast %TSa* %arr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %"$i$generator" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %3 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 25, i1 false)
  %4 = alloca %TSNySiG, align 8
  %5 = alloca %TSi, align 8
  %6 = alloca %TSi, align 8
  %7 = alloca %TSNySiG, align 8
  %8 = alloca %TSiSg, align 8
  %i.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug, metadata !72, metadata !DIExpression()), !dbg !74
  %9 = bitcast i64* %i.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = alloca %TSi, align 8
  store i64 %0, i64* %iterations.debug, align 8, !dbg !75
  %11 = bitcast %TSa* %arr to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11), !dbg !76
  call void @__dp_call(i32 16396), !dbg !79
  %12 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$sS2ayxGycfCSi_Tg5"(), !dbg !79
  %arr._buffer = getelementptr inbounds %TSa, %TSa* %arr, i32 0, i32 0, !dbg !79
  %arr._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %arr._buffer, i32 0, i32 0, !dbg !79
  %13 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** %arr._buffer._storage to i64
  call void @__dp_write(i32 16396, i64 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  store %Ts28__ContiguousArrayStorageBaseC* %12, %Ts28__ContiguousArrayStorageBaseC** %arr._buffer._storage, align 8, !dbg !79
  %14 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %14), !dbg !80
  %15 = bitcast %TSNySiG* %4 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %15), !dbg !80
  br label %16, !dbg !82

; <label>:16:                                     ; preds = %entry
  %17 = icmp slt i64 %0, 0, !dbg !82
  %18 = xor i1 %17, true, !dbg !82
  call void @__dp_call(i32 16397), !dbg !82
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 true), !dbg !82
  br i1 %19, label %20, label %62, !dbg !82

; <label>:20:                                     ; preds = %16
  %21 = bitcast %TSi* %5 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21), !dbg !80
  %._value = getelementptr inbounds %TSi, %TSi* %5, i32 0, i32 0, !dbg !82
  %22 = ptrtoint i64* %._value to i64
  call void @__dp_write(i32 16397, i64 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value, align 8, !dbg !82
  %23 = bitcast %TSi* %6 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23), !dbg !80
  %._value1 = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !82
  %24 = ptrtoint i64* %._value1 to i64
  call void @__dp_write(i32 16397, i64 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %0, i64* %._value1, align 8, !dbg !82
  %._value2 = getelementptr inbounds %TSi, %TSi* %5, i32 0, i32 0, !dbg !82
  %25 = ptrtoint i64* %._value2 to i64
  call void @__dp_read(i32 16397, i64 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %26 = load i64, i64* %._value2, align 8, !dbg !82
  %._value3 = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !82
  %27 = ptrtoint i64* %._value3 to i64
  call void @__dp_read(i32 16397, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %28 = load i64, i64* %._value3, align 8, !dbg !82
  call void @__dp_call(i32 16397), !dbg !82
  %29 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %26, i64 %28), !dbg !82
  %30 = extractvalue { i64, i64 } %29, 0, !dbg !82
  %31 = extractvalue { i64, i64 } %29, 1, !dbg !82
  %.lowerBound = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 0, !dbg !82
  %.lowerBound._value = getelementptr inbounds %TSi, %TSi* %.lowerBound, i32 0, i32 0, !dbg !82
  %32 = ptrtoint i64* %.lowerBound._value to i64
  call void @__dp_write(i32 16397, i64 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %30, i64* %.lowerBound._value, align 8, !dbg !82
  %.upperBound = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 1, !dbg !82
  %.upperBound._value = getelementptr inbounds %TSi, %TSi* %.upperBound, i32 0, i32 0, !dbg !82
  %33 = ptrtoint i64* %.upperBound._value to i64
  call void @__dp_write(i32 16397, i64 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %31, i64* %.upperBound._value, align 8, !dbg !82
  %34 = bitcast %TSi* %6 to i8*, !dbg !82
  call void @__dp_call(i32 16397), !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34), !dbg !82
  %35 = bitcast %TSi* %5 to i8*, !dbg !82
  call void @__dp_call(i32 16397), !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35), !dbg !82
  %.lowerBound4 = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 0, !dbg !82
  %.lowerBound4._value = getelementptr inbounds %TSi, %TSi* %.lowerBound4, i32 0, i32 0, !dbg !82
  %36 = ptrtoint i64* %.lowerBound4._value to i64
  call void @__dp_read(i32 16397, i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %37 = load i64, i64* %.lowerBound4._value, align 8, !dbg !82
  %.upperBound5 = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 1, !dbg !82
  %.upperBound5._value = getelementptr inbounds %TSi, %TSi* %.upperBound5, i32 0, i32 0, !dbg !82
  %38 = ptrtoint i64* %.upperBound5._value to i64
  call void @__dp_read(i32 16397, i64 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %39 = load i64, i64* %.upperBound5._value, align 8, !dbg !82
  %40 = bitcast %TSNySiG* %7 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %40), !dbg !80
  %.lowerBound6 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 0, !dbg !82
  %.lowerBound6._value = getelementptr inbounds %TSi, %TSi* %.lowerBound6, i32 0, i32 0, !dbg !82
  %41 = ptrtoint i64* %.lowerBound6._value to i64
  call void @__dp_write(i32 16397, i64 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %37, i64* %.lowerBound6._value, align 8, !dbg !82
  %.upperBound7 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 1, !dbg !82
  %.upperBound7._value = getelementptr inbounds %TSi, %TSi* %.upperBound7, i32 0, i32 0, !dbg !82
  %42 = ptrtoint i64* %.upperBound7._value to i64
  call void @__dp_write(i32 16397, i64 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %39, i64* %.upperBound7._value, align 8, !dbg !82
  %.lowerBound8 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 0, !dbg !83
  %.lowerBound8._value = getelementptr inbounds %TSi, %TSi* %.lowerBound8, i32 0, i32 0, !dbg !83
  %43 = ptrtoint i64* %.lowerBound8._value to i64
  call void @__dp_read(i32 16397, i64 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %44 = load i64, i64* %.lowerBound8._value, align 8, !dbg !83
  %.upperBound9 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 1, !dbg !83
  %.upperBound9._value = getelementptr inbounds %TSi, %TSi* %.upperBound9, i32 0, i32 0, !dbg !83
  %45 = ptrtoint i64* %.upperBound9._value to i64
  call void @__dp_read(i32 16397, i64 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %46 = load i64, i64* %.upperBound9._value, align 8, !dbg !83
  call void @__dp_call(i32 16397), !dbg !83
  %47 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %44, i64 %46), !dbg !83
  %48 = extractvalue { i64, i64, i64, i8 } %47, 0, !dbg !83
  %49 = extractvalue { i64, i64, i64, i8 } %47, 1, !dbg !83
  %50 = extractvalue { i64, i64, i64, i8 } %47, 2, !dbg !83
  %51 = extractvalue { i64, i64, i64, i8 } %47, 3, !dbg !83
  %52 = trunc i8 %51 to i1, !dbg !83
  %"$i$generator._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 0, !dbg !83
  %"$i$generator._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 0, !dbg !83
  %"$i$generator._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.lowerBound", i32 0, i32 0, !dbg !83
  %53 = ptrtoint i64* %"$i$generator._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16397, i64 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i64 %48, i64* %"$i$generator._elements.lowerBound._value", align 8, !dbg !83
  %"$i$generator._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 1, !dbg !83
  %"$i$generator._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.upperBound", i32 0, i32 0, !dbg !83
  %54 = ptrtoint i64* %"$i$generator._elements.upperBound._value" to i64
  call void @__dp_write(i32 16397, i64 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i64 %49, i64* %"$i$generator._elements.upperBound._value", align 8, !dbg !83
  %"$i$generator._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 1, !dbg !83
  %55 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position" to i64*, !dbg !83
  %56 = ptrtoint i64* %55 to i64
  call void @__dp_write(i32 16397, i64 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %50, i64* %55, align 8, !dbg !83
  %57 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position", i32 0, i32 1, !dbg !83
  %58 = bitcast [1 x i8]* %57 to i1*, !dbg !83
  %59 = ptrtoint i1* %58 to i64
  call void @__dp_write(i32 16397, i64 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %52, i1* %58, align 8, !dbg !83
  %60 = bitcast %TSNySiG* %7 to i8*, !dbg !84
  call void @__dp_call(i32 16397), !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %60), !dbg !84
  %61 = bitcast %TSNySiG* %4 to i8*, !dbg !84
  call void @__dp_call(i32 16397), !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %61), !dbg !84
  br label %63, !dbg !84

; <label>:62:                                     ; preds = %16
  call void @__dp_call(i32 16397), !dbg !82
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !82
  unreachable, !dbg !80

; <label>:63:                                     ; preds = %83, %20
  %64 = bitcast %TSiSg* %8 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %64), !dbg !80
  call void @__dp_loop_entry(i32 16397, i32 0)
  call void @__dp_call(i32 16397), !dbg !85
  %65 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator"), !dbg !85
  %66 = extractvalue { i64, i8 } %65, 0, !dbg !85
  %67 = extractvalue { i64, i8 } %65, 1, !dbg !85
  %68 = trunc i8 %67 to i1, !dbg !85
  %69 = bitcast %TSiSg* %8 to i64*, !dbg !85
  %70 = ptrtoint i64* %69 to i64
  call void @__dp_write(i32 16397, i64 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %66, i64* %69, align 8, !dbg !85
  %71 = getelementptr inbounds %TSiSg, %TSiSg* %8, i32 0, i32 1, !dbg !85
  %72 = bitcast [1 x i8]* %71 to i1*, !dbg !85
  %73 = ptrtoint i1* %72 to i64
  call void @__dp_write(i32 16397, i64 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %68, i1* %72, align 8, !dbg !85
  %74 = bitcast %TSiSg* %8 to i64*, !dbg !85
  %75 = ptrtoint i64* %74 to i64
  call void @__dp_read(i32 16397, i64 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %76 = load i64, i64* %74, align 8, !dbg !85
  %77 = getelementptr inbounds %TSiSg, %TSiSg* %8, i32 0, i32 1, !dbg !85
  %78 = bitcast [1 x i8]* %77 to i1*, !dbg !85
  %79 = ptrtoint i1* %78 to i64
  call void @__dp_read(i32 16397, i64 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %80 = load i1, i1* %78, align 8, !dbg !85
  %81 = bitcast %TSiSg* %8 to i8*, !dbg !84
  call void @__dp_call(i32 16397), !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %81), !dbg !84
  br i1 %80, label %90, label %82, !dbg !84

; <label>:82:                                     ; preds = %63
  br label %83, !dbg !84

; <label>:83:                                     ; preds = %82
  %84 = phi i64 [ %76, %82 ], !dbg !80
  store i64 %84, i64* %i.debug, align 8, !dbg !86
  %85 = bitcast %TSi* %10 to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85), !dbg !87
  %._value11 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !90
  %86 = ptrtoint i64* %._value11 to i64
  call void @__dp_write(i32 16398, i64 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %84, i64* %._value11, align 8, !dbg !90
  %._value12 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !91
  %87 = ptrtoint i64* %._value12 to i64
  call void @__dp_read(i32 16398, i64 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %88 = load i64, i64* %._value12, align 8, !dbg !91
  call void @__dp_call(i32 16398), !dbg !91
  call swiftcc void @"$sSa6appendyyxnFSi_Tg5"(i64 %88, %TSa* nocapture swiftself dereferenceable(8) %arr), !dbg !91
  %89 = bitcast %TSi* %10 to i8*, !dbg !92
  call void @__dp_call(i32 16399), !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89), !dbg !92
  br label %63, !dbg !92

; <label>:90:                                     ; preds = %63
  call void @__dp_loop_exit(i32 16400, i32 0)
  %91 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %91), !dbg !76
  %arr._buffer10 = getelementptr inbounds %TSa, %TSa* %arr, i32 0, i32 0, !dbg !93
  %arr._buffer10._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %arr._buffer10, i32 0, i32 0, !dbg !93
  %92 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** %arr._buffer10._storage to i64
  call void @__dp_read(i32 16400, i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %93 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %arr._buffer10._storage, align 8, !dbg !93
  %94 = bitcast %Ts28__ContiguousArrayStorageBaseC* %93 to %swift.refcounted*, !dbg !93
  call void @__dp_call(i32 16400), !dbg !93
  %95 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %94) #2, !dbg !93
  call void @__dp_call(i32 16400), !dbg !94
  %96 = call %TSa* @"$sSaySiGWOh"(%TSa* %arr), !dbg !94
  %97 = bitcast %TSa* %arr to i8*, !dbg !94
  call void @__dp_call(i32 16400), !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97), !dbg !94
  call void @__dp_func_exit(i32 16400, i32 0), !dbg !94
  ret %Ts28__ContiguousArrayStorageBaseC* %93, !dbg !94
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

declare swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$sS2ayxGycfCSi_Tg5"() #0

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: noinline
declare swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64, i64, i8, i64, i64, i8, i64, i64, i8, i64, i32) #6

declare swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64, i64) #0

declare swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64, i64) #0

declare swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25)) #0

; Function Attrs: nounwind
declare %swift.refcounted* @swift_retain(%swift.refcounted* returned) #2

; Function Attrs: noinline nounwind
define linkonce_odr hidden %TSa* @"$sSaySiGWOh"(%TSa*) #7 !dbg !95 {
entry:
  %._buffer = getelementptr inbounds %TSa, %TSa* %0, i32 0, i32 0, !dbg !97
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %._buffer, i32 0, i32 0, !dbg !97
  %toDestroy = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %._buffer._storage, align 8, !dbg !97
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%Ts28__ContiguousArrayStorageBaseC*)*)(%Ts28__ContiguousArrayStorageBaseC* %toDestroy) #2, !dbg !97
  ret %TSa* %0, !dbg !97
}

; Function Attrs: nounwind
declare void @swift_release(%swift.refcounted*) #2

declare swiftcc void @"$sSa6appendyyxnFSi_Tg5"(i64, %TSa* nocapture swiftself dereferenceable(8)) #0

define hidden swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64) #0 !dbg !98 {
entry:
  call void @__dp_func_entry(i32 16408, i32 0)
  %n.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.debug, metadata !101, metadata !DIExpression()), !dbg !102
  %1 = bitcast i64* %n.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %fn = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %fn, metadata !103, metadata !DIExpression()), !dbg !105
  %2 = bitcast %TSi* %fn to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  store i64 %0, i64* %n.debug, align 8, !dbg !106
  %3 = bitcast %TSi* %fn to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3), !dbg !107
  %fn._value = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !109
  %4 = ptrtoint i64* %fn._value to i64
  call void @__dp_write(i32 16413, i64 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  store i64 0, i64* %fn._value, align 8, !dbg !109
  %5 = icmp eq i64 %0, 0, !dbg !110
  br i1 %5, label %6, label %7, !dbg !112

; <label>:6:                                      ; preds = %entry
  br label %9, !dbg !112

; <label>:7:                                      ; preds = %entry
  %8 = icmp eq i64 %0, 1, !dbg !112
  br label %9, !dbg !112

; <label>:9:                                      ; preds = %7, %6
  %10 = phi i1 [ %8, %7 ], [ true, %6 ], !dbg !112
  br i1 %10, label %11, label %13, !dbg !112

; <label>:11:                                     ; preds = %9
  %fn._value3 = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !113
  %12 = ptrtoint i64* %fn._value3 to i64
  call void @__dp_write(i32 16416, i64 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  store i64 %0, i64* %fn._value3, align 8, !dbg !113
  br label %29, !dbg !115

; <label>:13:                                     ; preds = %9
  call void @__dp_call(i32 16418), !dbg !116
  %14 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %0, i64 1), !dbg !116
  %15 = extractvalue { i64, i1 } %14, 0, !dbg !116
  %16 = extractvalue { i64, i1 } %14, 1, !dbg !116
  br i1 %16, label %33, label %17, !dbg !116

; <label>:17:                                     ; preds = %13
  call void @__dp_call(i32 16418), !dbg !118
  %18 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 %15), !dbg !118
  call void @__dp_call(i32 16418), !dbg !119
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %0, i64 2), !dbg !119
  %20 = extractvalue { i64, i1 } %19, 0, !dbg !119
  %21 = extractvalue { i64, i1 } %19, 1, !dbg !119
  br i1 %21, label %34, label %22, !dbg !119

; <label>:22:                                     ; preds = %17
  call void @__dp_call(i32 16418), !dbg !120
  %23 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 %20), !dbg !120
  call void @__dp_call(i32 16418), !dbg !121
  %24 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %18, i64 %23), !dbg !121
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !121
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !121
  br i1 %26, label %35, label %27, !dbg !121

; <label>:27:                                     ; preds = %22
  %fn._value1 = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !122
  %28 = ptrtoint i64* %fn._value1 to i64
  call void @__dp_write(i32 16418, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  store i64 %25, i64* %fn._value1, align 8, !dbg !122
  br label %29, !dbg !123

; <label>:29:                                     ; preds = %27, %11
  %fn._value2 = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !124
  %30 = ptrtoint i64* %fn._value2 to i64
  call void @__dp_read(i32 16421, i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64, i64* %fn._value2, align 8, !dbg !124
  %32 = bitcast %TSi* %fn to i8*, !dbg !125
  call void @__dp_call(i32 16421), !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32), !dbg !125
  call void @__dp_func_exit(i32 16421, i32 0), !dbg !125
  ret i64 %31, !dbg !125

; <label>:33:                                     ; preds = %13
  call void @__dp_finalize(i32 16418), !dbg !116
  call void @llvm.trap(), !dbg !116
  unreachable, !dbg !116

; <label>:34:                                     ; preds = %17
  call void @__dp_finalize(i32 16418), !dbg !119
  call void @llvm.trap(), !dbg !119
  unreachable, !dbg !119

; <label>:35:                                     ; preds = %22
  call void @__dp_finalize(i32 16418), !dbg !121
  call void @llvm.trap(), !dbg !121
  unreachable, !dbg !121
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

define hidden swiftcc void @"$s9reductionAAyyF"() #0 !dbg !126 {
entry:
  call void @__dp_func_entry(i32 16433, i32 0)
  %a = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %a, metadata !130, metadata !DIExpression()), !dbg !132
  %0 = bitcast %TSi* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %b = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %b, metadata !133, metadata !DIExpression()), !dbg !134
  %1 = bitcast %TSi* %b to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %c = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %c, metadata !135, metadata !DIExpression()), !dbg !136
  %2 = bitcast %TSi* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %localArr = alloca %TSa, align 8
  call void @llvm.dbg.declare(metadata %TSa* %localArr, metadata !137, metadata !DIExpression()), !dbg !138
  %3 = bitcast %TSa* %localArr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %access-scratch = alloca [24 x i8], align 8
  %"$i$generator" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %4 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 25, i1 false)
  %5 = alloca %TSNySiG, align 8
  %access-scratch1 = alloca [24 x i8], align 8
  %6 = alloca %TSi, align 8
  %7 = alloca %TSi, align 8
  %8 = alloca %TSNySiG, align 8
  %9 = alloca %TSiSg, align 8
  %"$i$generator11" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %10 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 25, i1 false)
  %11 = alloca %TSNySiG, align 8
  %access-scratch12 = alloca [24 x i8], align 8
  %12 = alloca %TSi, align 8
  %13 = alloca %TSi, align 8
  %14 = alloca %TSNySiG, align 8
  %15 = alloca %TSiSg, align 8
  %arrSum = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %arrSum, metadata !139, metadata !DIExpression()), !dbg !140
  %16 = bitcast %TSi* %arrSum to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %arrMul = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %arrMul, metadata !141, metadata !DIExpression()), !dbg !142
  %17 = bitcast %TSi* %arrMul to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %"$i$generator25" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %18 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator25" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 25, i1 false)
  %19 = alloca %TSNySiG, align 8
  %access-scratch26 = alloca [24 x i8], align 8
  %20 = alloca %TSi, align 8
  %21 = alloca %TSi, align 8
  %22 = alloca %TSNySiG, align 8
  %23 = alloca %TSiSg, align 8
  %access-scratch39 = alloca [24 x i8], align 8
  %"$i$generator41" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %24 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator41" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 25, i1 false)
  %25 = alloca %TSNySiG, align 8
  %26 = alloca %TSi, align 8
  %27 = alloca %TSi, align 8
  %28 = alloca %TSNySiG, align 8
  %29 = alloca %TSiSg, align 8
  %i.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug, metadata !143, metadata !DIExpression()), !dbg !145
  %30 = bitcast i64* %i.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %access-scratch56 = alloca [24 x i8], align 8
  %access-scratch57 = alloca [24 x i8], align 8
  %i.debug58 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug58, metadata !146, metadata !DIExpression()), !dbg !148
  %31 = bitcast i64* %i.debug58 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = alloca %TSi, align 8
  %access-scratch64 = alloca [24 x i8], align 8
  %33 = alloca %TSi, align 8
  %i.debug68 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug68, metadata !149, metadata !DIExpression()), !dbg !151
  %34 = bitcast i64* %i.debug68 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  %access-scratch69 = alloca [24 x i8], align 8
  %access-scratch70 = alloca [24 x i8], align 8
  %35 = alloca %TSi, align 8
  %access-scratch75 = alloca [24 x i8], align 8
  %access-scratch76 = alloca [24 x i8], align 8
  %i.debug79 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug79, metadata !152, metadata !DIExpression()), !dbg !154
  %36 = bitcast i64* %i.debug79 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 8, i1 false)
  %37 = bitcast %TSi* %a to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %37), !dbg !155
  %a._value = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !157
  %38 = ptrtoint i64* %a._value to i64
  call void @__dp_write(i32 16433, i64 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i64 0, i64* %a._value, align 8, !dbg !157
  %39 = bitcast %TSi* %b to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %39), !dbg !155
  %b._value = getelementptr inbounds %TSi, %TSi* %b, i32 0, i32 0, !dbg !158
  %40 = ptrtoint i64* %b._value to i64
  call void @__dp_write(i32 16433, i64 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store i64 0, i64* %b._value, align 8, !dbg !158
  %41 = bitcast %TSi* %c to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41), !dbg !155
  %c._value = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !159
  %42 = ptrtoint i64* %c._value to i64
  call void @__dp_write(i32 16433, i64 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i64 0, i64* %c._value, align 8, !dbg !159
  %43 = bitcast %TSa* %localArr to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43), !dbg !155
  %44 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !160
  call void @__dp_call(i32 16434), !dbg !160
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %44), !dbg !160
  call void @__dp_call(i32 16434), !dbg !160
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #2, !dbg !160
  %45 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16434, i64 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %46 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !160
  call void @__dp_call(i32 16434), !dbg !160
  call void @swift_endAccess([24 x i8]* %access-scratch) #2, !dbg !160
  %47 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !160
  call void @__dp_call(i32 16434), !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %47), !dbg !160
  call void @__dp_call(i32 16434), !dbg !161
  %48 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64 %46), !dbg !161
  %localArr._buffer = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !161
  %localArr._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer, i32 0, i32 0, !dbg !161
  %49 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer._storage to i64
  call void @__dp_write(i32 16434, i64 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  store %Ts28__ContiguousArrayStorageBaseC* %48, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer._storage, align 8, !dbg !161
  %50 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %50), !dbg !162
  %51 = bitcast %TSNySiG* %5 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %51), !dbg !162
  %52 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !164
  call void @__dp_call(i32 16437), !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %52), !dbg !164
  call void @__dp_call(i32 16437), !dbg !164
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch1, i64 32, i8* null) #2, !dbg !164
  %53 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16437, i64 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %54 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !164
  call void @__dp_call(i32 16437), !dbg !164
  call void @swift_endAccess([24 x i8]* %access-scratch1) #2, !dbg !164
  %55 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !164
  call void @__dp_call(i32 16437), !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %55), !dbg !164
  br label %56, !dbg !165

; <label>:56:                                     ; preds = %entry
  %57 = icmp slt i64 %54, 0, !dbg !165
  %58 = xor i1 %57, true, !dbg !165
  call void @__dp_call(i32 16437), !dbg !165
  %59 = call i1 @llvm.expect.i1(i1 %58, i1 true), !dbg !165
  br i1 %59, label %60, label %102, !dbg !165

; <label>:60:                                     ; preds = %56
  %61 = bitcast %TSi* %6 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %61), !dbg !162
  %._value = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !165
  %62 = ptrtoint i64* %._value to i64
  call void @__dp_write(i32 16437, i64 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value, align 8, !dbg !165
  %63 = bitcast %TSi* %7 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %63), !dbg !162
  %._value2 = getelementptr inbounds %TSi, %TSi* %7, i32 0, i32 0, !dbg !165
  %64 = ptrtoint i64* %._value2 to i64
  call void @__dp_write(i32 16437, i64 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %54, i64* %._value2, align 8, !dbg !165
  %._value3 = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !165
  %65 = ptrtoint i64* %._value3 to i64
  call void @__dp_read(i32 16437, i64 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %66 = load i64, i64* %._value3, align 8, !dbg !165
  %._value4 = getelementptr inbounds %TSi, %TSi* %7, i32 0, i32 0, !dbg !165
  %67 = ptrtoint i64* %._value4 to i64
  call void @__dp_read(i32 16437, i64 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %68 = load i64, i64* %._value4, align 8, !dbg !165
  call void @__dp_call(i32 16437), !dbg !165
  %69 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %66, i64 %68), !dbg !165
  %70 = extractvalue { i64, i64 } %69, 0, !dbg !165
  %71 = extractvalue { i64, i64 } %69, 1, !dbg !165
  %.lowerBound = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !165
  %.lowerBound._value = getelementptr inbounds %TSi, %TSi* %.lowerBound, i32 0, i32 0, !dbg !165
  %72 = ptrtoint i64* %.lowerBound._value to i64
  call void @__dp_write(i32 16437, i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %70, i64* %.lowerBound._value, align 8, !dbg !165
  %.upperBound = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !165
  %.upperBound._value = getelementptr inbounds %TSi, %TSi* %.upperBound, i32 0, i32 0, !dbg !165
  %73 = ptrtoint i64* %.upperBound._value to i64
  call void @__dp_write(i32 16437, i64 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %71, i64* %.upperBound._value, align 8, !dbg !165
  %74 = bitcast %TSi* %7 to i8*, !dbg !165
  call void @__dp_call(i32 16437), !dbg !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74), !dbg !165
  %75 = bitcast %TSi* %6 to i8*, !dbg !165
  call void @__dp_call(i32 16437), !dbg !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75), !dbg !165
  %.lowerBound5 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !165
  %.lowerBound5._value = getelementptr inbounds %TSi, %TSi* %.lowerBound5, i32 0, i32 0, !dbg !165
  %76 = ptrtoint i64* %.lowerBound5._value to i64
  call void @__dp_read(i32 16437, i64 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %77 = load i64, i64* %.lowerBound5._value, align 8, !dbg !165
  %.upperBound6 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !165
  %.upperBound6._value = getelementptr inbounds %TSi, %TSi* %.upperBound6, i32 0, i32 0, !dbg !165
  %78 = ptrtoint i64* %.upperBound6._value to i64
  call void @__dp_read(i32 16437, i64 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %79 = load i64, i64* %.upperBound6._value, align 8, !dbg !165
  %80 = bitcast %TSNySiG* %8 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %80), !dbg !162
  %.lowerBound7 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !165
  %.lowerBound7._value = getelementptr inbounds %TSi, %TSi* %.lowerBound7, i32 0, i32 0, !dbg !165
  %81 = ptrtoint i64* %.lowerBound7._value to i64
  call void @__dp_write(i32 16437, i64 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %77, i64* %.lowerBound7._value, align 8, !dbg !165
  %.upperBound8 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !165
  %.upperBound8._value = getelementptr inbounds %TSi, %TSi* %.upperBound8, i32 0, i32 0, !dbg !165
  %82 = ptrtoint i64* %.upperBound8._value to i64
  call void @__dp_write(i32 16437, i64 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %79, i64* %.upperBound8._value, align 8, !dbg !165
  %.lowerBound9 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !166
  %.lowerBound9._value = getelementptr inbounds %TSi, %TSi* %.lowerBound9, i32 0, i32 0, !dbg !166
  %83 = ptrtoint i64* %.lowerBound9._value to i64
  call void @__dp_read(i32 16437, i64 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %84 = load i64, i64* %.lowerBound9._value, align 8, !dbg !166
  %.upperBound10 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !166
  %.upperBound10._value = getelementptr inbounds %TSi, %TSi* %.upperBound10, i32 0, i32 0, !dbg !166
  %85 = ptrtoint i64* %.upperBound10._value to i64
  call void @__dp_read(i32 16437, i64 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %86 = load i64, i64* %.upperBound10._value, align 8, !dbg !166
  call void @__dp_call(i32 16437), !dbg !166
  %87 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %84, i64 %86), !dbg !166
  %88 = extractvalue { i64, i64, i64, i8 } %87, 0, !dbg !166
  %89 = extractvalue { i64, i64, i64, i8 } %87, 1, !dbg !166
  %90 = extractvalue { i64, i64, i64, i8 } %87, 2, !dbg !166
  %91 = extractvalue { i64, i64, i64, i8 } %87, 3, !dbg !166
  %92 = trunc i8 %91 to i1, !dbg !166
  %"$i$generator._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 0, !dbg !166
  %"$i$generator._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 0, !dbg !166
  %"$i$generator._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.lowerBound", i32 0, i32 0, !dbg !166
  %93 = ptrtoint i64* %"$i$generator._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16437, i64 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i64 %88, i64* %"$i$generator._elements.lowerBound._value", align 8, !dbg !166
  %"$i$generator._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 1, !dbg !166
  %"$i$generator._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.upperBound", i32 0, i32 0, !dbg !166
  %94 = ptrtoint i64* %"$i$generator._elements.upperBound._value" to i64
  call void @__dp_write(i32 16437, i64 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i64 %89, i64* %"$i$generator._elements.upperBound._value", align 8, !dbg !166
  %"$i$generator._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 1, !dbg !166
  %95 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position" to i64*, !dbg !166
  %96 = ptrtoint i64* %95 to i64
  call void @__dp_write(i32 16437, i64 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %90, i64* %95, align 8, !dbg !166
  %97 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position", i32 0, i32 1, !dbg !166
  %98 = bitcast [1 x i8]* %97 to i1*, !dbg !166
  %99 = ptrtoint i1* %98 to i64
  call void @__dp_write(i32 16437, i64 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %92, i1* %98, align 8, !dbg !166
  %100 = bitcast %TSNySiG* %8 to i8*, !dbg !167
  call void @__dp_call(i32 16437), !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %100), !dbg !167
  %101 = bitcast %TSNySiG* %5 to i8*, !dbg !167
  call void @__dp_call(i32 16437), !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %101), !dbg !167
  br label %103, !dbg !167

; <label>:102:                                    ; preds = %56
  call void @__dp_call(i32 16437), !dbg !165
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !165
  unreachable, !dbg !162

; <label>:103:                                    ; preds = %144, %60
  %104 = bitcast %TSiSg* %9 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %104), !dbg !162
  call void @__dp_loop_entry(i32 16437, i32 1)
  call void @__dp_call(i32 16437), !dbg !168
  %105 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator"), !dbg !168
  %106 = extractvalue { i64, i8 } %105, 0, !dbg !168
  %107 = extractvalue { i64, i8 } %105, 1, !dbg !168
  %108 = trunc i8 %107 to i1, !dbg !168
  %109 = bitcast %TSiSg* %9 to i64*, !dbg !168
  %110 = ptrtoint i64* %109 to i64
  call void @__dp_write(i32 16437, i64 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %106, i64* %109, align 8, !dbg !168
  %111 = getelementptr inbounds %TSiSg, %TSiSg* %9, i32 0, i32 1, !dbg !168
  %112 = bitcast [1 x i8]* %111 to i1*, !dbg !168
  %113 = ptrtoint i1* %112 to i64
  call void @__dp_write(i32 16437, i64 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %108, i1* %112, align 8, !dbg !168
  %114 = bitcast %TSiSg* %9 to i64*, !dbg !168
  %115 = ptrtoint i64* %114 to i64
  call void @__dp_read(i32 16437, i64 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %116 = load i64, i64* %114, align 8, !dbg !168
  %117 = getelementptr inbounds %TSiSg, %TSiSg* %9, i32 0, i32 1, !dbg !168
  %118 = bitcast [1 x i8]* %117 to i1*, !dbg !168
  %119 = ptrtoint i1* %118 to i64
  call void @__dp_read(i32 16437, i64 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %120 = load i1, i1* %118, align 8, !dbg !168
  %121 = bitcast %TSiSg* %9 to i8*, !dbg !167
  call void @__dp_call(i32 16437), !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %121), !dbg !167
  br i1 %120, label %146, label %122, !dbg !167

; <label>:122:                                    ; preds = %103
  br label %123, !dbg !167

; <label>:123:                                    ; preds = %122
  %124 = phi i64 [ %116, %122 ], !dbg !162
  store i64 %124, i64* %i.debug79, align 8, !dbg !169
  %a._value80 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !170
  %125 = ptrtoint i64* %a._value80 to i64
  call void @__dp_read(i32 16438, i64 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %126 = load i64, i64* %a._value80, align 8, !dbg !170
  call void @__dp_call(i32 16438), !dbg !172
  %127 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %126, i64 1), !dbg !172
  %128 = extractvalue { i64, i1 } %127, 0, !dbg !172
  %129 = extractvalue { i64, i1 } %127, 1, !dbg !172
  br i1 %129, label %493, label %130, !dbg !172

; <label>:130:                                    ; preds = %123
  %a._value81 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !173
  %131 = ptrtoint i64* %a._value81 to i64
  call void @__dp_write(i32 16438, i64 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i64 %128, i64* %a._value81, align 8, !dbg !173
  %b._value82 = getelementptr inbounds %TSi, %TSi* %b, i32 0, i32 0, !dbg !174
  %132 = ptrtoint i64* %b._value82 to i64
  call void @__dp_read(i32 16439, i64 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %133 = load i64, i64* %b._value82, align 8, !dbg !174
  call void @__dp_call(i32 16439), !dbg !175
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %133, i64 5), !dbg !175
  %135 = extractvalue { i64, i1 } %134, 0, !dbg !175
  %136 = extractvalue { i64, i1 } %134, 1, !dbg !175
  br i1 %136, label %494, label %137, !dbg !175

; <label>:137:                                    ; preds = %130
  %b._value83 = getelementptr inbounds %TSi, %TSi* %b, i32 0, i32 0, !dbg !176
  %138 = ptrtoint i64* %b._value83 to i64
  call void @__dp_write(i32 16439, i64 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store i64 %135, i64* %b._value83, align 8, !dbg !176
  %c._value84 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !177
  %139 = ptrtoint i64* %c._value84 to i64
  call void @__dp_read(i32 16440, i64 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %140 = load i64, i64* %c._value84, align 8, !dbg !177
  call void @__dp_call(i32 16440), !dbg !178
  %141 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %140, i64 2), !dbg !178
  %142 = extractvalue { i64, i1 } %141, 0, !dbg !178
  %143 = extractvalue { i64, i1 } %141, 1, !dbg !178
  br i1 %143, label %495, label %144, !dbg !178

; <label>:144:                                    ; preds = %137
  %c._value85 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !179
  %145 = ptrtoint i64* %c._value85 to i64
  call void @__dp_write(i32 16440, i64 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i64 %142, i64* %c._value85, align 8, !dbg !179
  br label %103, !dbg !180

; <label>:146:                                    ; preds = %103
  call void @__dp_loop_exit(i32 16447, i32 1)
  %147 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !155
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %147), !dbg !155
  %148 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %148), !dbg !181
  %149 = bitcast %TSNySiG* %11 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %149), !dbg !181
  %150 = bitcast [24 x i8]* %access-scratch12 to i8*, !dbg !183
  call void @__dp_call(i32 16447), !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %150), !dbg !183
  call void @__dp_call(i32 16447), !dbg !183
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch12, i64 32, i8* null) #2, !dbg !183
  %151 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16447, i64 %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %152 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !183
  call void @__dp_call(i32 16447), !dbg !183
  call void @swift_endAccess([24 x i8]* %access-scratch12) #2, !dbg !183
  %153 = bitcast [24 x i8]* %access-scratch12 to i8*, !dbg !183
  call void @__dp_call(i32 16447), !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %153), !dbg !183
  br label %154, !dbg !184

; <label>:154:                                    ; preds = %146
  %155 = icmp slt i64 %152, 0, !dbg !184
  %156 = xor i1 %155, true, !dbg !184
  call void @__dp_call(i32 16447), !dbg !184
  %157 = call i1 @llvm.expect.i1(i1 %156, i1 true), !dbg !184
  br i1 %157, label %158, label %200, !dbg !184

; <label>:158:                                    ; preds = %154
  %159 = bitcast %TSi* %12 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %159), !dbg !181
  %._value13 = getelementptr inbounds %TSi, %TSi* %12, i32 0, i32 0, !dbg !184
  %160 = ptrtoint i64* %._value13 to i64
  call void @__dp_write(i32 16447, i64 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value13, align 8, !dbg !184
  %161 = bitcast %TSi* %13 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %161), !dbg !181
  %._value14 = getelementptr inbounds %TSi, %TSi* %13, i32 0, i32 0, !dbg !184
  %162 = ptrtoint i64* %._value14 to i64
  call void @__dp_write(i32 16447, i64 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %152, i64* %._value14, align 8, !dbg !184
  %._value15 = getelementptr inbounds %TSi, %TSi* %12, i32 0, i32 0, !dbg !184
  %163 = ptrtoint i64* %._value15 to i64
  call void @__dp_read(i32 16447, i64 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %164 = load i64, i64* %._value15, align 8, !dbg !184
  %._value16 = getelementptr inbounds %TSi, %TSi* %13, i32 0, i32 0, !dbg !184
  %165 = ptrtoint i64* %._value16 to i64
  call void @__dp_read(i32 16447, i64 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %166 = load i64, i64* %._value16, align 8, !dbg !184
  call void @__dp_call(i32 16447), !dbg !184
  %167 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %164, i64 %166), !dbg !184
  %168 = extractvalue { i64, i64 } %167, 0, !dbg !184
  %169 = extractvalue { i64, i64 } %167, 1, !dbg !184
  %.lowerBound17 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !184
  %.lowerBound17._value = getelementptr inbounds %TSi, %TSi* %.lowerBound17, i32 0, i32 0, !dbg !184
  %170 = ptrtoint i64* %.lowerBound17._value to i64
  call void @__dp_write(i32 16447, i64 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %168, i64* %.lowerBound17._value, align 8, !dbg !184
  %.upperBound18 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !184
  %.upperBound18._value = getelementptr inbounds %TSi, %TSi* %.upperBound18, i32 0, i32 0, !dbg !184
  %171 = ptrtoint i64* %.upperBound18._value to i64
  call void @__dp_write(i32 16447, i64 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %169, i64* %.upperBound18._value, align 8, !dbg !184
  %172 = bitcast %TSi* %13 to i8*, !dbg !184
  call void @__dp_call(i32 16447), !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %172), !dbg !184
  %173 = bitcast %TSi* %12 to i8*, !dbg !184
  call void @__dp_call(i32 16447), !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %173), !dbg !184
  %.lowerBound19 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !184
  %.lowerBound19._value = getelementptr inbounds %TSi, %TSi* %.lowerBound19, i32 0, i32 0, !dbg !184
  %174 = ptrtoint i64* %.lowerBound19._value to i64
  call void @__dp_read(i32 16447, i64 %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %175 = load i64, i64* %.lowerBound19._value, align 8, !dbg !184
  %.upperBound20 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !184
  %.upperBound20._value = getelementptr inbounds %TSi, %TSi* %.upperBound20, i32 0, i32 0, !dbg !184
  %176 = ptrtoint i64* %.upperBound20._value to i64
  call void @__dp_read(i32 16447, i64 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %177 = load i64, i64* %.upperBound20._value, align 8, !dbg !184
  %178 = bitcast %TSNySiG* %14 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %178), !dbg !181
  %.lowerBound21 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 0, !dbg !184
  %.lowerBound21._value = getelementptr inbounds %TSi, %TSi* %.lowerBound21, i32 0, i32 0, !dbg !184
  %179 = ptrtoint i64* %.lowerBound21._value to i64
  call void @__dp_write(i32 16447, i64 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %175, i64* %.lowerBound21._value, align 8, !dbg !184
  %.upperBound22 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 1, !dbg !184
  %.upperBound22._value = getelementptr inbounds %TSi, %TSi* %.upperBound22, i32 0, i32 0, !dbg !184
  %180 = ptrtoint i64* %.upperBound22._value to i64
  call void @__dp_write(i32 16447, i64 %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %177, i64* %.upperBound22._value, align 8, !dbg !184
  %.lowerBound23 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 0, !dbg !185
  %.lowerBound23._value = getelementptr inbounds %TSi, %TSi* %.lowerBound23, i32 0, i32 0, !dbg !185
  %181 = ptrtoint i64* %.lowerBound23._value to i64
  call void @__dp_read(i32 16447, i64 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %182 = load i64, i64* %.lowerBound23._value, align 8, !dbg !185
  %.upperBound24 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 1, !dbg !185
  %.upperBound24._value = getelementptr inbounds %TSi, %TSi* %.upperBound24, i32 0, i32 0, !dbg !185
  %183 = ptrtoint i64* %.upperBound24._value to i64
  call void @__dp_read(i32 16447, i64 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %184 = load i64, i64* %.upperBound24._value, align 8, !dbg !185
  call void @__dp_call(i32 16447), !dbg !185
  %185 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %182, i64 %184), !dbg !185
  %186 = extractvalue { i64, i64, i64, i8 } %185, 0, !dbg !185
  %187 = extractvalue { i64, i64, i64, i8 } %185, 1, !dbg !185
  %188 = extractvalue { i64, i64, i64, i8 } %185, 2, !dbg !185
  %189 = extractvalue { i64, i64, i64, i8 } %185, 3, !dbg !185
  %190 = trunc i8 %189 to i1, !dbg !185
  %"$i$generator11._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 0, !dbg !185
  %"$i$generator11._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 0, !dbg !185
  %"$i$generator11._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.lowerBound", i32 0, i32 0, !dbg !185
  %191 = ptrtoint i64* %"$i$generator11._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16447, i64 %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  store i64 %186, i64* %"$i$generator11._elements.lowerBound._value", align 8, !dbg !185
  %"$i$generator11._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 1, !dbg !185
  %"$i$generator11._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.upperBound", i32 0, i32 0, !dbg !185
  %192 = ptrtoint i64* %"$i$generator11._elements.upperBound._value" to i64
  call void @__dp_write(i32 16447, i64 %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  store i64 %187, i64* %"$i$generator11._elements.upperBound._value", align 8, !dbg !185
  %"$i$generator11._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 1, !dbg !185
  %193 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position" to i64*, !dbg !185
  %194 = ptrtoint i64* %193 to i64
  call void @__dp_write(i32 16447, i64 %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %188, i64* %193, align 8, !dbg !185
  %195 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position", i32 0, i32 1, !dbg !185
  %196 = bitcast [1 x i8]* %195 to i1*, !dbg !185
  %197 = ptrtoint i1* %196 to i64
  call void @__dp_write(i32 16447, i64 %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %190, i1* %196, align 8, !dbg !185
  %198 = bitcast %TSNySiG* %14 to i8*, !dbg !186
  call void @__dp_call(i32 16447), !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %198), !dbg !186
  %199 = bitcast %TSNySiG* %11 to i8*, !dbg !186
  call void @__dp_call(i32 16447), !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %199), !dbg !186
  br label %201, !dbg !186

; <label>:200:                                    ; preds = %154
  call void @__dp_call(i32 16447), !dbg !184
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !184
  unreachable, !dbg !181

; <label>:201:                                    ; preds = %268, %158
  %202 = bitcast %TSiSg* %15 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %202), !dbg !181
  call void @__dp_loop_entry(i32 16447, i32 2)
  call void @__dp_call(i32 16447), !dbg !187
  %203 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator11"), !dbg !187
  %204 = extractvalue { i64, i8 } %203, 0, !dbg !187
  %205 = extractvalue { i64, i8 } %203, 1, !dbg !187
  %206 = trunc i8 %205 to i1, !dbg !187
  %207 = bitcast %TSiSg* %15 to i64*, !dbg !187
  %208 = ptrtoint i64* %207 to i64
  call void @__dp_write(i32 16447, i64 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %204, i64* %207, align 8, !dbg !187
  %209 = getelementptr inbounds %TSiSg, %TSiSg* %15, i32 0, i32 1, !dbg !187
  %210 = bitcast [1 x i8]* %209 to i1*, !dbg !187
  %211 = ptrtoint i1* %210 to i64
  call void @__dp_write(i32 16447, i64 %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %206, i1* %210, align 8, !dbg !187
  %212 = bitcast %TSiSg* %15 to i64*, !dbg !187
  %213 = ptrtoint i64* %212 to i64
  call void @__dp_read(i32 16447, i64 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %214 = load i64, i64* %212, align 8, !dbg !187
  %215 = getelementptr inbounds %TSiSg, %TSiSg* %15, i32 0, i32 1, !dbg !187
  %216 = bitcast [1 x i8]* %215 to i1*, !dbg !187
  %217 = ptrtoint i1* %216 to i64
  call void @__dp_read(i32 16447, i64 %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %218 = load i1, i1* %216, align 8, !dbg !187
  %219 = bitcast %TSiSg* %15 to i8*, !dbg !186
  call void @__dp_call(i32 16447), !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %219), !dbg !186
  br i1 %218, label %270, label %220, !dbg !186

; <label>:220:                                    ; preds = %201
  br label %221, !dbg !186

; <label>:221:                                    ; preds = %220
  %222 = phi i64 [ %214, %220 ], !dbg !181
  store i64 %222, i64* %i.debug68, align 8, !dbg !188
  %223 = bitcast [24 x i8]* %access-scratch69 to i8*, !dbg !189
  call void @__dp_call(i32 16449), !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %223), !dbg !189
  call void @__dp_call(i32 16449), !dbg !189
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2bGSivp" to i8*), [24 x i8]* %access-scratch69, i64 32, i8* null) #2, !dbg !189
  %224 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16449, i64 %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %225 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0), align 8, !dbg !189
  call void @__dp_call(i32 16449), !dbg !189
  call void @swift_endAccess([24 x i8]* %access-scratch69) #2, !dbg !189
  %226 = bitcast [24 x i8]* %access-scratch69 to i8*, !dbg !189
  call void @__dp_call(i32 16449), !dbg !189
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %226), !dbg !189
  call void @__dp_call(i32 16449), !dbg !191
  %227 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %225, i64 5), !dbg !191
  %228 = extractvalue { i64, i1 } %227, 0, !dbg !191
  %229 = extractvalue { i64, i1 } %227, 1, !dbg !191
  br i1 %229, label %488, label %230, !dbg !191

; <label>:230:                                    ; preds = %221
  %231 = bitcast [24 x i8]* %access-scratch70 to i8*, !dbg !192
  call void @__dp_call(i32 16449), !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %231), !dbg !192
  call void @__dp_call(i32 16449), !dbg !192
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2bGSivp" to i8*), [24 x i8]* %access-scratch70, i64 33, i8* null) #2, !dbg !192
  %232 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16449, i64 %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i64 %228, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0), align 8, !dbg !192
  call void @__dp_call(i32 16449), !dbg !192
  call void @swift_endAccess([24 x i8]* %access-scratch70) #2, !dbg !192
  %233 = bitcast [24 x i8]* %access-scratch70 to i8*, !dbg !192
  call void @__dp_call(i32 16449), !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %233), !dbg !192
  %c._value71 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !193
  %234 = ptrtoint i64* %c._value71 to i64
  call void @__dp_read(i32 16450, i64 %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %235 = load i64, i64* %c._value71, align 8, !dbg !193
  call void @__dp_call(i32 16450), !dbg !194
  %236 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %235, i64 %222), !dbg !194
  %237 = extractvalue { i64, i1 } %236, 0, !dbg !194
  %238 = extractvalue { i64, i1 } %236, 1, !dbg !194
  br i1 %238, label %489, label %239, !dbg !194

; <label>:239:                                    ; preds = %230
  %c._value72 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !195
  %240 = ptrtoint i64* %c._value72 to i64
  call void @__dp_write(i32 16450, i64 %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i64 %237, i64* %c._value72, align 8, !dbg !195
  %241 = bitcast %TSi* %35 to i8*, !dbg !196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %241), !dbg !196
  %loadIdx = call { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* null, i64 %222, %TSa* %localArr)
  %unpackedIdx = extractvalue { i8*, %TSi* } %loadIdx, 1
  %242 = ptrtoint %TSi* %unpackedIdx to i64
  call void @__dp_read(i32 16451, i64 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  call void @__dp_call(i32 16451), !dbg !198
  %243 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %222, %Ts28__ContiguousArrayStorageBaseC* %48), !dbg !198
  %._value73 = getelementptr inbounds %TSi, %TSi* %35, i32 0, i32 0, !dbg !198
  %244 = ptrtoint i64* %._value73 to i64
  call void @__dp_write(i32 16451, i64 %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %243, i64* %._value73, align 8, !dbg !198
  %._value74 = getelementptr inbounds %TSi, %TSi* %35, i32 0, i32 0, !dbg !198
  %245 = ptrtoint i64* %._value74 to i64
  call void @__dp_read(i32 16451, i64 %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %246 = load i64, i64* %._value74, align 8, !dbg !198
  call void @__dp_call(i32 16451), !dbg !199
  %247 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 3), !dbg !199
  %248 = extractvalue { i64, i1 } %247, 0, !dbg !199
  %249 = extractvalue { i64, i1 } %247, 1, !dbg !199
  br i1 %249, label %490, label %250, !dbg !199

; <label>:250:                                    ; preds = %239
  %251 = bitcast %TSi* %35 to i8*, !dbg !199
  call void @__dp_call(i32 16451), !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %251), !dbg !199
  %252 = bitcast [24 x i8]* %access-scratch75 to i8*, !dbg !200
  call void @__dp_call(i32 16451), !dbg !200
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %252), !dbg !200
  call void @__dp_call(i32 16451), !dbg !200
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction8localResSivp" to i8*), [24 x i8]* %access-scratch75, i64 32, i8* null) #2, !dbg !200
  %253 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16451, i64 %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %254 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0), align 8, !dbg !200
  call void @__dp_call(i32 16451), !dbg !200
  call void @swift_endAccess([24 x i8]* %access-scratch75) #2, !dbg !200
  %255 = bitcast [24 x i8]* %access-scratch75 to i8*, !dbg !200
  call void @__dp_call(i32 16451), !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %255), !dbg !200
  call void @__dp_call(i32 16451), !dbg !201
  %256 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %248, i64 %254), !dbg !201
  %257 = extractvalue { i64, i1 } %256, 0, !dbg !201
  %258 = extractvalue { i64, i1 } %256, 1, !dbg !201
  br i1 %258, label %491, label %259, !dbg !201

; <label>:259:                                    ; preds = %250
  %260 = bitcast [24 x i8]* %access-scratch76 to i8*, !dbg !202
  call void @__dp_call(i32 16451), !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %260), !dbg !202
  call void @__dp_call(i32 16451), !dbg !202
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction8localResSivp" to i8*), [24 x i8]* %access-scratch76, i64 33, i8* null) #2, !dbg !202
  %261 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16451, i64 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  store i64 %257, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0), align 8, !dbg !202
  call void @__dp_call(i32 16451), !dbg !202
  call void @swift_endAccess([24 x i8]* %access-scratch76) #2, !dbg !202
  %262 = bitcast [24 x i8]* %access-scratch76 to i8*, !dbg !202
  call void @__dp_call(i32 16451), !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %262), !dbg !202
  %a._value77 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !203
  %263 = ptrtoint i64* %a._value77 to i64
  call void @__dp_read(i32 16453, i64 %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %264 = load i64, i64* %a._value77, align 8, !dbg !203
  call void asm sideeffect "", "r"(i64 %264), !dbg !196
  call void @__dp_call(i32 16453), !dbg !204
  call void @llvm.dbg.value(metadata i64 %264, metadata !205, metadata !DIExpression()), !dbg !204
  call void @__dp_call(i32 16454), !dbg !206
  %265 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %264, i64 %222), !dbg !206
  %266 = extractvalue { i64, i1 } %265, 0, !dbg !206
  %267 = extractvalue { i64, i1 } %265, 1, !dbg !206
  br i1 %267, label %492, label %268, !dbg !206

; <label>:268:                                    ; preds = %259
  call void @__dp_call(i32 16453), !dbg !204
  call void @llvm.dbg.value(metadata i64 %264, metadata !205, metadata !DIExpression()), !dbg !204
  %a._value78 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !207
  %269 = ptrtoint i64* %a._value78 to i64
  call void @__dp_write(i32 16454, i64 %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i64 %266, i64* %a._value78, align 8, !dbg !207
  call void @__dp_call(i32 16456), !dbg !208
  call void asm sideeffect "", "r"(i64 %264), !dbg !208
  br label %201, !dbg !208

; <label>:270:                                    ; preds = %201
  call void @__dp_loop_exit(i32 16463, i32 2)
  %271 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !155
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %271), !dbg !155
  %272 = bitcast %TSi* %arrSum to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %272), !dbg !155
  %arrSum._value = getelementptr inbounds %TSi, %TSi* %arrSum, i32 0, i32 0, !dbg !209
  %273 = ptrtoint i64* %arrSum._value to i64
  call void @__dp_write(i32 16463, i64 %273, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  store i64 0, i64* %arrSum._value, align 8, !dbg !209
  %274 = bitcast %TSi* %arrMul to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %274), !dbg !155
  %arrMul._value = getelementptr inbounds %TSi, %TSi* %arrMul, i32 0, i32 0, !dbg !210
  %275 = ptrtoint i64* %arrMul._value to i64
  call void @__dp_write(i32 16463, i64 %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i64 0, i64* %arrMul._value, align 8, !dbg !210
  %276 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator25" to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %276), !dbg !211
  %277 = bitcast %TSNySiG* %19 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %277), !dbg !211
  %278 = bitcast [24 x i8]* %access-scratch26 to i8*, !dbg !213
  call void @__dp_call(i32 16465), !dbg !213
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %278), !dbg !213
  call void @__dp_call(i32 16465), !dbg !213
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch26, i64 32, i8* null) #2, !dbg !213
  %279 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16465, i64 %279, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %280 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !213
  call void @__dp_call(i32 16465), !dbg !213
  call void @swift_endAccess([24 x i8]* %access-scratch26) #2, !dbg !213
  %281 = bitcast [24 x i8]* %access-scratch26 to i8*, !dbg !213
  call void @__dp_call(i32 16465), !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %281), !dbg !213
  br label %282, !dbg !214

; <label>:282:                                    ; preds = %270
  %283 = icmp slt i64 %280, 0, !dbg !214
  %284 = xor i1 %283, true, !dbg !214
  call void @__dp_call(i32 16465), !dbg !214
  %285 = call i1 @llvm.expect.i1(i1 %284, i1 true), !dbg !214
  br i1 %285, label %286, label %328, !dbg !214

; <label>:286:                                    ; preds = %282
  %287 = bitcast %TSi* %20 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %287), !dbg !211
  %._value27 = getelementptr inbounds %TSi, %TSi* %20, i32 0, i32 0, !dbg !214
  %288 = ptrtoint i64* %._value27 to i64
  call void @__dp_write(i32 16465, i64 %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value27, align 8, !dbg !214
  %289 = bitcast %TSi* %21 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %289), !dbg !211
  %._value28 = getelementptr inbounds %TSi, %TSi* %21, i32 0, i32 0, !dbg !214
  %290 = ptrtoint i64* %._value28 to i64
  call void @__dp_write(i32 16465, i64 %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %280, i64* %._value28, align 8, !dbg !214
  %._value29 = getelementptr inbounds %TSi, %TSi* %20, i32 0, i32 0, !dbg !214
  %291 = ptrtoint i64* %._value29 to i64
  call void @__dp_read(i32 16465, i64 %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %292 = load i64, i64* %._value29, align 8, !dbg !214
  %._value30 = getelementptr inbounds %TSi, %TSi* %21, i32 0, i32 0, !dbg !214
  %293 = ptrtoint i64* %._value30 to i64
  call void @__dp_read(i32 16465, i64 %293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %294 = load i64, i64* %._value30, align 8, !dbg !214
  call void @__dp_call(i32 16465), !dbg !214
  %295 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %292, i64 %294), !dbg !214
  %296 = extractvalue { i64, i64 } %295, 0, !dbg !214
  %297 = extractvalue { i64, i64 } %295, 1, !dbg !214
  %.lowerBound31 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 0, !dbg !214
  %.lowerBound31._value = getelementptr inbounds %TSi, %TSi* %.lowerBound31, i32 0, i32 0, !dbg !214
  %298 = ptrtoint i64* %.lowerBound31._value to i64
  call void @__dp_write(i32 16465, i64 %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %296, i64* %.lowerBound31._value, align 8, !dbg !214
  %.upperBound32 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 1, !dbg !214
  %.upperBound32._value = getelementptr inbounds %TSi, %TSi* %.upperBound32, i32 0, i32 0, !dbg !214
  %299 = ptrtoint i64* %.upperBound32._value to i64
  call void @__dp_write(i32 16465, i64 %299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %297, i64* %.upperBound32._value, align 8, !dbg !214
  %300 = bitcast %TSi* %21 to i8*, !dbg !214
  call void @__dp_call(i32 16465), !dbg !214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %300), !dbg !214
  %301 = bitcast %TSi* %20 to i8*, !dbg !214
  call void @__dp_call(i32 16465), !dbg !214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %301), !dbg !214
  %.lowerBound33 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 0, !dbg !214
  %.lowerBound33._value = getelementptr inbounds %TSi, %TSi* %.lowerBound33, i32 0, i32 0, !dbg !214
  %302 = ptrtoint i64* %.lowerBound33._value to i64
  call void @__dp_read(i32 16465, i64 %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %303 = load i64, i64* %.lowerBound33._value, align 8, !dbg !214
  %.upperBound34 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 1, !dbg !214
  %.upperBound34._value = getelementptr inbounds %TSi, %TSi* %.upperBound34, i32 0, i32 0, !dbg !214
  %304 = ptrtoint i64* %.upperBound34._value to i64
  call void @__dp_read(i32 16465, i64 %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %305 = load i64, i64* %.upperBound34._value, align 8, !dbg !214
  %306 = bitcast %TSNySiG* %22 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %306), !dbg !211
  %.lowerBound35 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 0, !dbg !214
  %.lowerBound35._value = getelementptr inbounds %TSi, %TSi* %.lowerBound35, i32 0, i32 0, !dbg !214
  %307 = ptrtoint i64* %.lowerBound35._value to i64
  call void @__dp_write(i32 16465, i64 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %303, i64* %.lowerBound35._value, align 8, !dbg !214
  %.upperBound36 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 1, !dbg !214
  %.upperBound36._value = getelementptr inbounds %TSi, %TSi* %.upperBound36, i32 0, i32 0, !dbg !214
  %308 = ptrtoint i64* %.upperBound36._value to i64
  call void @__dp_write(i32 16465, i64 %308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %305, i64* %.upperBound36._value, align 8, !dbg !214
  %.lowerBound37 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 0, !dbg !215
  %.lowerBound37._value = getelementptr inbounds %TSi, %TSi* %.lowerBound37, i32 0, i32 0, !dbg !215
  %309 = ptrtoint i64* %.lowerBound37._value to i64
  call void @__dp_read(i32 16465, i64 %309, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %310 = load i64, i64* %.lowerBound37._value, align 8, !dbg !215
  %.upperBound38 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 1, !dbg !215
  %.upperBound38._value = getelementptr inbounds %TSi, %TSi* %.upperBound38, i32 0, i32 0, !dbg !215
  %311 = ptrtoint i64* %.upperBound38._value to i64
  call void @__dp_read(i32 16465, i64 %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %312 = load i64, i64* %.upperBound38._value, align 8, !dbg !215
  call void @__dp_call(i32 16465), !dbg !215
  %313 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %310, i64 %312), !dbg !215
  %314 = extractvalue { i64, i64, i64, i8 } %313, 0, !dbg !215
  %315 = extractvalue { i64, i64, i64, i8 } %313, 1, !dbg !215
  %316 = extractvalue { i64, i64, i64, i8 } %313, 2, !dbg !215
  %317 = extractvalue { i64, i64, i64, i8 } %313, 3, !dbg !215
  %318 = trunc i8 %317 to i1, !dbg !215
  %"$i$generator25._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator25", i32 0, i32 0, !dbg !215
  %"$i$generator25._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator25._elements", i32 0, i32 0, !dbg !215
  %"$i$generator25._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator25._elements.lowerBound", i32 0, i32 0, !dbg !215
  %319 = ptrtoint i64* %"$i$generator25._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16465, i64 %319, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  store i64 %314, i64* %"$i$generator25._elements.lowerBound._value", align 8, !dbg !215
  %"$i$generator25._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator25._elements", i32 0, i32 1, !dbg !215
  %"$i$generator25._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator25._elements.upperBound", i32 0, i32 0, !dbg !215
  %320 = ptrtoint i64* %"$i$generator25._elements.upperBound._value" to i64
  call void @__dp_write(i32 16465, i64 %320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  store i64 %315, i64* %"$i$generator25._elements.upperBound._value", align 8, !dbg !215
  %"$i$generator25._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator25", i32 0, i32 1, !dbg !215
  %321 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator25._position" to i64*, !dbg !215
  %322 = ptrtoint i64* %321 to i64
  call void @__dp_write(i32 16465, i64 %322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %316, i64* %321, align 8, !dbg !215
  %323 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator25._position", i32 0, i32 1, !dbg !215
  %324 = bitcast [1 x i8]* %323 to i1*, !dbg !215
  %325 = ptrtoint i1* %324 to i64
  call void @__dp_write(i32 16465, i64 %325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %318, i1* %324, align 8, !dbg !215
  %326 = bitcast %TSNySiG* %22 to i8*, !dbg !216
  call void @__dp_call(i32 16465), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %326), !dbg !216
  %327 = bitcast %TSNySiG* %19 to i8*, !dbg !216
  call void @__dp_call(i32 16465), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %327), !dbg !216
  br label %329, !dbg !216

; <label>:328:                                    ; preds = %282
  call void @__dp_call(i32 16465), !dbg !214
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !214
  unreachable, !dbg !211

; <label>:329:                                    ; preds = %379, %286
  %330 = bitcast %TSiSg* %23 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %330), !dbg !211
  call void @__dp_loop_entry(i32 16465, i32 3)
  call void @__dp_call(i32 16465), !dbg !217
  %331 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator25"), !dbg !217
  %332 = extractvalue { i64, i8 } %331, 0, !dbg !217
  %333 = extractvalue { i64, i8 } %331, 1, !dbg !217
  %334 = trunc i8 %333 to i1, !dbg !217
  %335 = bitcast %TSiSg* %23 to i64*, !dbg !217
  %336 = ptrtoint i64* %335 to i64
  call void @__dp_write(i32 16465, i64 %336, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %332, i64* %335, align 8, !dbg !217
  %337 = getelementptr inbounds %TSiSg, %TSiSg* %23, i32 0, i32 1, !dbg !217
  %338 = bitcast [1 x i8]* %337 to i1*, !dbg !217
  %339 = ptrtoint i1* %338 to i64
  call void @__dp_write(i32 16465, i64 %339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %334, i1* %338, align 8, !dbg !217
  %340 = bitcast %TSiSg* %23 to i64*, !dbg !217
  %341 = ptrtoint i64* %340 to i64
  call void @__dp_read(i32 16465, i64 %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %342 = load i64, i64* %340, align 8, !dbg !217
  %343 = getelementptr inbounds %TSiSg, %TSiSg* %23, i32 0, i32 1, !dbg !217
  %344 = bitcast [1 x i8]* %343 to i1*, !dbg !217
  %345 = ptrtoint i1* %344 to i64
  call void @__dp_read(i32 16465, i64 %345, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %346 = load i1, i1* %344, align 8, !dbg !217
  %347 = bitcast %TSiSg* %23 to i8*, !dbg !216
  call void @__dp_call(i32 16465), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %347), !dbg !216
  br i1 %346, label %382, label %348, !dbg !216

; <label>:348:                                    ; preds = %329
  br label %349, !dbg !216

; <label>:349:                                    ; preds = %348
  %350 = phi i64 [ %342, %348 ], !dbg !211
  store i64 %350, i64* %i.debug58, align 8, !dbg !218
  %arrSum._value59 = getelementptr inbounds %TSi, %TSi* %arrSum, i32 0, i32 0, !dbg !219
  %351 = ptrtoint i64* %arrSum._value59 to i64
  call void @__dp_read(i32 16466, i64 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %352 = load i64, i64* %arrSum._value59, align 8, !dbg !219
  %353 = bitcast %TSi* %32 to i8*, !dbg !221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %353), !dbg !221
  %loadIdx1 = call { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* null, i64 %350, %TSa* %localArr)
  %unpackedIdx2 = extractvalue { i8*, %TSi* } %loadIdx1, 1
  %354 = ptrtoint %TSi* %unpackedIdx2 to i64
  call void @__dp_read(i32 16466, i64 %354, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  call void @__dp_call(i32 16466), !dbg !223
  %355 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %350, %Ts28__ContiguousArrayStorageBaseC* %48), !dbg !223
  %._value60 = getelementptr inbounds %TSi, %TSi* %32, i32 0, i32 0, !dbg !223
  %356 = ptrtoint i64* %._value60 to i64
  call void @__dp_write(i32 16466, i64 %356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %355, i64* %._value60, align 8, !dbg !223
  %._value61 = getelementptr inbounds %TSi, %TSi* %32, i32 0, i32 0, !dbg !223
  %357 = ptrtoint i64* %._value61 to i64
  call void @__dp_read(i32 16466, i64 %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %358 = load i64, i64* %._value61, align 8, !dbg !223
  call void @__dp_call(i32 16466), !dbg !224
  %359 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %352, i64 %358), !dbg !224
  %360 = extractvalue { i64, i1 } %359, 0, !dbg !224
  %361 = extractvalue { i64, i1 } %359, 1, !dbg !224
  br i1 %361, label %486, label %362, !dbg !224

; <label>:362:                                    ; preds = %349
  %363 = bitcast %TSi* %32 to i8*, !dbg !224
  call void @__dp_call(i32 16466), !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %363), !dbg !224
  %arrSum._value62 = getelementptr inbounds %TSi, %TSi* %arrSum, i32 0, i32 0, !dbg !225
  %364 = ptrtoint i64* %arrSum._value62 to i64
  call void @__dp_write(i32 16466, i64 %364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  store i64 %360, i64* %arrSum._value62, align 8, !dbg !225
  %arrMul._value63 = getelementptr inbounds %TSi, %TSi* %arrMul, i32 0, i32 0, !dbg !226
  %365 = ptrtoint i64* %arrMul._value63 to i64
  call void @__dp_read(i32 16467, i64 %365, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %366 = load i64, i64* %arrMul._value63, align 8, !dbg !226
  %367 = bitcast [24 x i8]* %access-scratch64 to i8*, !dbg !227
  call void @__dp_call(i32 16467), !dbg !227
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %367), !dbg !227
  call void @__dp_call(i32 16467), !dbg !227
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch64, i64 32, i8* null) #2, !dbg !227
  %368 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_read(i32 16467, i64 %368, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %369 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !227
  %370 = bitcast %TSi* %33 to i8*, !dbg !221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %370), !dbg !221
  call void @__dp_call(i32 16467), !dbg !227
  %371 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %350, %Ts28__ContiguousArrayStorageBaseC* %369), !dbg !227
  %._value65 = getelementptr inbounds %TSi, %TSi* %33, i32 0, i32 0, !dbg !227
  %372 = ptrtoint i64* %._value65 to i64
  call void @__dp_write(i32 16467, i64 %372, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %371, i64* %._value65, align 8, !dbg !227
  %._value66 = getelementptr inbounds %TSi, %TSi* %33, i32 0, i32 0, !dbg !227
  %373 = ptrtoint i64* %._value66 to i64
  call void @__dp_read(i32 16467, i64 %373, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %374 = load i64, i64* %._value66, align 8, !dbg !227
  call void @__dp_call(i32 16467), !dbg !227
  call void @swift_endAccess([24 x i8]* %access-scratch64) #2, !dbg !227
  %375 = bitcast [24 x i8]* %access-scratch64 to i8*, !dbg !227
  call void @__dp_call(i32 16467), !dbg !227
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %375), !dbg !227
  call void @__dp_call(i32 16467), !dbg !228
  %376 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %366, i64 %374), !dbg !228
  %377 = extractvalue { i64, i1 } %376, 0, !dbg !228
  %378 = extractvalue { i64, i1 } %376, 1, !dbg !228
  br i1 %378, label %487, label %379, !dbg !228

; <label>:379:                                    ; preds = %362
  %380 = bitcast %TSi* %33 to i8*, !dbg !228
  call void @__dp_call(i32 16467), !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %380), !dbg !228
  %arrMul._value67 = getelementptr inbounds %TSi, %TSi* %arrMul, i32 0, i32 0, !dbg !229
  %381 = ptrtoint i64* %arrMul._value67 to i64
  call void @__dp_write(i32 16467, i64 %381, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i64 %377, i64* %arrMul._value67, align 8, !dbg !229
  br label %329, !dbg !230

; <label>:382:                                    ; preds = %329
  call void @__dp_loop_exit(i32 16475, i32 3)
  %383 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator25" to i8*, !dbg !155
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %383), !dbg !155
  %384 = bitcast [24 x i8]* %access-scratch39 to i8*, !dbg !231
  call void @__dp_call(i32 16475), !dbg !231
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %384), !dbg !231
  call void @__dp_call(i32 16475), !dbg !231
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2cGSivp" to i8*), [24 x i8]* %access-scratch39, i64 33, i8* null) #2, !dbg !231
  %385 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16475, i64 %385, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !231
  call void @__dp_call(i32 16475), !dbg !231
  call void @swift_endAccess([24 x i8]* %access-scratch39) #2, !dbg !231
  %386 = bitcast [24 x i8]* %access-scratch39 to i8*, !dbg !231
  call void @__dp_call(i32 16475), !dbg !231
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %386), !dbg !231
  %a._value40 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !232
  %387 = ptrtoint i64* %a._value40 to i64
  call void @__dp_write(i32 16476, i64 %387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i64 0, i64* %a._value40, align 8, !dbg !232
  %388 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator41" to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %388), !dbg !233
  %389 = bitcast %TSNySiG* %25 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %389), !dbg !233
  br label %390, !dbg !235

; <label>:390:                                    ; preds = %382
  br label %391, !dbg !235

; <label>:391:                                    ; preds = %390
  %392 = bitcast %TSi* %26 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %392), !dbg !233
  %._value42 = getelementptr inbounds %TSi, %TSi* %26, i32 0, i32 0, !dbg !235
  %393 = ptrtoint i64* %._value42 to i64
  call void @__dp_write(i32 16479, i64 %393, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value42, align 8, !dbg !235
  %394 = bitcast %TSi* %27 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %394), !dbg !233
  %._value43 = getelementptr inbounds %TSi, %TSi* %27, i32 0, i32 0, !dbg !235
  %395 = ptrtoint i64* %._value43 to i64
  call void @__dp_write(i32 16479, i64 %395, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 19, i64* %._value43, align 8, !dbg !235
  %._value44 = getelementptr inbounds %TSi, %TSi* %26, i32 0, i32 0, !dbg !235
  %396 = ptrtoint i64* %._value44 to i64
  call void @__dp_read(i32 16479, i64 %396, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %397 = load i64, i64* %._value44, align 8, !dbg !235
  %._value45 = getelementptr inbounds %TSi, %TSi* %27, i32 0, i32 0, !dbg !235
  %398 = ptrtoint i64* %._value45 to i64
  call void @__dp_read(i32 16479, i64 %398, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %399 = load i64, i64* %._value45, align 8, !dbg !235
  call void @__dp_call(i32 16479), !dbg !235
  %400 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %397, i64 %399), !dbg !235
  %401 = extractvalue { i64, i64 } %400, 0, !dbg !235
  %402 = extractvalue { i64, i64 } %400, 1, !dbg !235
  %.lowerBound46 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 0, !dbg !235
  %.lowerBound46._value = getelementptr inbounds %TSi, %TSi* %.lowerBound46, i32 0, i32 0, !dbg !235
  %403 = ptrtoint i64* %.lowerBound46._value to i64
  call void @__dp_write(i32 16479, i64 %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %401, i64* %.lowerBound46._value, align 8, !dbg !235
  %.upperBound47 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 1, !dbg !235
  %.upperBound47._value = getelementptr inbounds %TSi, %TSi* %.upperBound47, i32 0, i32 0, !dbg !235
  %404 = ptrtoint i64* %.upperBound47._value to i64
  call void @__dp_write(i32 16479, i64 %404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %402, i64* %.upperBound47._value, align 8, !dbg !235
  %405 = bitcast %TSi* %27 to i8*, !dbg !235
  call void @__dp_call(i32 16479), !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %405), !dbg !235
  %406 = bitcast %TSi* %26 to i8*, !dbg !235
  call void @__dp_call(i32 16479), !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %406), !dbg !235
  %.lowerBound48 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 0, !dbg !235
  %.lowerBound48._value = getelementptr inbounds %TSi, %TSi* %.lowerBound48, i32 0, i32 0, !dbg !235
  %407 = ptrtoint i64* %.lowerBound48._value to i64
  call void @__dp_read(i32 16479, i64 %407, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %408 = load i64, i64* %.lowerBound48._value, align 8, !dbg !235
  %.upperBound49 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 1, !dbg !235
  %.upperBound49._value = getelementptr inbounds %TSi, %TSi* %.upperBound49, i32 0, i32 0, !dbg !235
  %409 = ptrtoint i64* %.upperBound49._value to i64
  call void @__dp_read(i32 16479, i64 %409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %410 = load i64, i64* %.upperBound49._value, align 8, !dbg !235
  %411 = bitcast %TSNySiG* %28 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %411), !dbg !233
  %.lowerBound50 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 0, !dbg !235
  %.lowerBound50._value = getelementptr inbounds %TSi, %TSi* %.lowerBound50, i32 0, i32 0, !dbg !235
  %412 = ptrtoint i64* %.lowerBound50._value to i64
  call void @__dp_write(i32 16479, i64 %412, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %408, i64* %.lowerBound50._value, align 8, !dbg !235
  %.upperBound51 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 1, !dbg !235
  %.upperBound51._value = getelementptr inbounds %TSi, %TSi* %.upperBound51, i32 0, i32 0, !dbg !235
  %413 = ptrtoint i64* %.upperBound51._value to i64
  call void @__dp_write(i32 16479, i64 %413, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %410, i64* %.upperBound51._value, align 8, !dbg !235
  %.lowerBound52 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 0, !dbg !236
  %.lowerBound52._value = getelementptr inbounds %TSi, %TSi* %.lowerBound52, i32 0, i32 0, !dbg !236
  %414 = ptrtoint i64* %.lowerBound52._value to i64
  call void @__dp_read(i32 16479, i64 %414, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %415 = load i64, i64* %.lowerBound52._value, align 8, !dbg !236
  %.upperBound53 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 1, !dbg !236
  %.upperBound53._value = getelementptr inbounds %TSi, %TSi* %.upperBound53, i32 0, i32 0, !dbg !236
  %416 = ptrtoint i64* %.upperBound53._value to i64
  call void @__dp_read(i32 16479, i64 %416, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %417 = load i64, i64* %.upperBound53._value, align 8, !dbg !236
  call void @__dp_call(i32 16479), !dbg !236
  %418 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %415, i64 %417), !dbg !236
  %419 = extractvalue { i64, i64, i64, i8 } %418, 0, !dbg !236
  %420 = extractvalue { i64, i64, i64, i8 } %418, 1, !dbg !236
  %421 = extractvalue { i64, i64, i64, i8 } %418, 2, !dbg !236
  %422 = extractvalue { i64, i64, i64, i8 } %418, 3, !dbg !236
  %423 = trunc i8 %422 to i1, !dbg !236
  %"$i$generator41._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator41", i32 0, i32 0, !dbg !236
  %"$i$generator41._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator41._elements", i32 0, i32 0, !dbg !236
  %"$i$generator41._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator41._elements.lowerBound", i32 0, i32 0, !dbg !236
  %424 = ptrtoint i64* %"$i$generator41._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16479, i64 %424, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  store i64 %419, i64* %"$i$generator41._elements.lowerBound._value", align 8, !dbg !236
  %"$i$generator41._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator41._elements", i32 0, i32 1, !dbg !236
  %"$i$generator41._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator41._elements.upperBound", i32 0, i32 0, !dbg !236
  %425 = ptrtoint i64* %"$i$generator41._elements.upperBound._value" to i64
  call void @__dp_write(i32 16479, i64 %425, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  store i64 %420, i64* %"$i$generator41._elements.upperBound._value", align 8, !dbg !236
  %"$i$generator41._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator41", i32 0, i32 1, !dbg !236
  %426 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator41._position" to i64*, !dbg !236
  %427 = ptrtoint i64* %426 to i64
  call void @__dp_write(i32 16479, i64 %427, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %421, i64* %426, align 8, !dbg !236
  %428 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator41._position", i32 0, i32 1, !dbg !236
  %429 = bitcast [1 x i8]* %428 to i1*, !dbg !236
  %430 = ptrtoint i1* %429 to i64
  call void @__dp_write(i32 16479, i64 %430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %423, i1* %429, align 8, !dbg !236
  %431 = bitcast %TSNySiG* %28 to i8*, !dbg !237
  call void @__dp_call(i32 16479), !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %431), !dbg !237
  %432 = bitcast %TSNySiG* %25 to i8*, !dbg !237
  call void @__dp_call(i32 16479), !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %432), !dbg !237
  br label %433, !dbg !237

; <label>:433:                                    ; preds = %471, %391
  %434 = bitcast %TSiSg* %29 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %434), !dbg !233
  call void @__dp_loop_entry(i32 16479, i32 4)
  call void @__dp_call(i32 16479), !dbg !238
  %435 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator41"), !dbg !238
  %436 = extractvalue { i64, i8 } %435, 0, !dbg !238
  %437 = extractvalue { i64, i8 } %435, 1, !dbg !238
  %438 = trunc i8 %437 to i1, !dbg !238
  %439 = bitcast %TSiSg* %29 to i64*, !dbg !238
  %440 = ptrtoint i64* %439 to i64
  call void @__dp_write(i32 16479, i64 %440, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %436, i64* %439, align 8, !dbg !238
  %441 = getelementptr inbounds %TSiSg, %TSiSg* %29, i32 0, i32 1, !dbg !238
  %442 = bitcast [1 x i8]* %441 to i1*, !dbg !238
  %443 = ptrtoint i1* %442 to i64
  call void @__dp_write(i32 16479, i64 %443, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %438, i1* %442, align 8, !dbg !238
  %444 = bitcast %TSiSg* %29 to i64*, !dbg !238
  %445 = ptrtoint i64* %444 to i64
  call void @__dp_read(i32 16479, i64 %445, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %446 = load i64, i64* %444, align 8, !dbg !238
  %447 = getelementptr inbounds %TSiSg, %TSiSg* %29, i32 0, i32 1, !dbg !238
  %448 = bitcast [1 x i8]* %447 to i1*, !dbg !238
  %449 = ptrtoint i1* %448 to i64
  call void @__dp_read(i32 16479, i64 %449, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %450 = load i1, i1* %448, align 8, !dbg !238
  %451 = bitcast %TSiSg* %29 to i8*, !dbg !237
  call void @__dp_call(i32 16479), !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %451), !dbg !237
  br i1 %450, label %475, label %452, !dbg !237

; <label>:452:                                    ; preds = %433
  br label %453, !dbg !237

; <label>:453:                                    ; preds = %452
  %454 = phi i64 [ %446, %452 ], !dbg !233
  store i64 %454, i64* %i.debug, align 8, !dbg !239
  %a._value54 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !240
  %455 = ptrtoint i64* %a._value54 to i64
  call void @__dp_read(i32 16480, i64 %455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %456 = load i64, i64* %a._value54, align 8, !dbg !240
  call void @__dp_call(i32 16480), !dbg !242
  %457 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 30), !dbg !242
  call void @__dp_call(i32 16480), !dbg !243
  %458 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %456, i64 %457), !dbg !243
  %459 = extractvalue { i64, i1 } %458, 0, !dbg !243
  %460 = extractvalue { i64, i1 } %458, 1, !dbg !243
  br i1 %460, label %484, label %461, !dbg !243

; <label>:461:                                    ; preds = %453
  %a._value55 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !244
  %462 = ptrtoint i64* %a._value55 to i64
  call void @__dp_write(i32 16480, i64 %462, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i64 %459, i64* %a._value55, align 8, !dbg !244
  %463 = bitcast [24 x i8]* %access-scratch56 to i8*, !dbg !245
  call void @__dp_call(i32 16481), !dbg !245
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %463), !dbg !245
  call void @__dp_call(i32 16481), !dbg !245
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2cGSivp" to i8*), [24 x i8]* %access-scratch56, i64 32, i8* null) #2, !dbg !245
  %464 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16481, i64 %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %465 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !245
  call void @__dp_call(i32 16481), !dbg !245
  call void @swift_endAccess([24 x i8]* %access-scratch56) #2, !dbg !245
  %466 = bitcast [24 x i8]* %access-scratch56 to i8*, !dbg !245
  call void @__dp_call(i32 16481), !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %466), !dbg !245
  call void @__dp_call(i32 16481), !dbg !246
  %467 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 30), !dbg !246
  call void @__dp_call(i32 16481), !dbg !247
  %468 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %465, i64 %467), !dbg !247
  %469 = extractvalue { i64, i1 } %468, 0, !dbg !247
  %470 = extractvalue { i64, i1 } %468, 1, !dbg !247
  br i1 %470, label %485, label %471, !dbg !247

; <label>:471:                                    ; preds = %461
  %472 = bitcast [24 x i8]* %access-scratch57 to i8*, !dbg !248
  call void @__dp_call(i32 16481), !dbg !248
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %472), !dbg !248
  call void @__dp_call(i32 16481), !dbg !248
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2cGSivp" to i8*), [24 x i8]* %access-scratch57, i64 33, i8* null) #2, !dbg !248
  %473 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16481, i64 %473, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store i64 %469, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !248
  call void @__dp_call(i32 16481), !dbg !248
  call void @swift_endAccess([24 x i8]* %access-scratch57) #2, !dbg !248
  %474 = bitcast [24 x i8]* %access-scratch57 to i8*, !dbg !248
  call void @__dp_call(i32 16481), !dbg !248
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %474), !dbg !248
  br label %433, !dbg !249

; <label>:475:                                    ; preds = %433
  call void @__dp_loop_exit(i32 16485, i32 4)
  %476 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator41" to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %476), !dbg !250
  %477 = bitcast %TSi* %arrMul to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %477), !dbg !250
  %478 = bitcast %TSi* %arrSum to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %478), !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  %479 = call %TSa* @"$sSaySiGWOh"(%TSa* %localArr), !dbg !250
  %480 = bitcast %TSa* %localArr to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %480), !dbg !250
  %481 = bitcast %TSi* %c to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %481), !dbg !250
  %482 = bitcast %TSi* %b to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %482), !dbg !250
  %483 = bitcast %TSi* %a to i8*, !dbg !250
  call void @__dp_call(i32 16485), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %483), !dbg !250
  call void @__dp_func_exit(i32 16485, i32 0), !dbg !250
  ret void, !dbg !250

; <label>:484:                                    ; preds = %453
  call void @__dp_loop_exit(i32 16480, i32 4)
  call void @__dp_finalize(i32 16480), !dbg !243
  call void @llvm.trap(), !dbg !243
  unreachable, !dbg !243

; <label>:485:                                    ; preds = %461
  call void @__dp_loop_exit(i32 16481, i32 4)
  call void @__dp_finalize(i32 16481), !dbg !247
  call void @llvm.trap(), !dbg !247
  unreachable, !dbg !247

; <label>:486:                                    ; preds = %349
  call void @__dp_loop_exit(i32 16466, i32 3)
  call void @__dp_finalize(i32 16466), !dbg !224
  call void @llvm.trap(), !dbg !224
  unreachable, !dbg !224

; <label>:487:                                    ; preds = %362
  call void @__dp_loop_exit(i32 16467, i32 3)
  call void @__dp_finalize(i32 16467), !dbg !228
  call void @llvm.trap(), !dbg !228
  unreachable, !dbg !228

; <label>:488:                                    ; preds = %221
  call void @__dp_loop_exit(i32 16449, i32 2)
  call void @__dp_finalize(i32 16449), !dbg !191
  call void @llvm.trap(), !dbg !191
  unreachable, !dbg !191

; <label>:489:                                    ; preds = %230
  call void @__dp_loop_exit(i32 16450, i32 2)
  call void @__dp_finalize(i32 16450), !dbg !194
  call void @llvm.trap(), !dbg !194
  unreachable, !dbg !194

; <label>:490:                                    ; preds = %239
  call void @__dp_loop_exit(i32 16451, i32 2)
  call void @__dp_finalize(i32 16451), !dbg !199
  call void @llvm.trap(), !dbg !199
  unreachable, !dbg !199

; <label>:491:                                    ; preds = %250
  call void @__dp_loop_exit(i32 16451, i32 2)
  call void @__dp_finalize(i32 16451), !dbg !201
  call void @llvm.trap(), !dbg !201
  unreachable, !dbg !201

; <label>:492:                                    ; preds = %259
  call void @__dp_loop_exit(i32 16454, i32 2)
  call void @__dp_finalize(i32 16454), !dbg !206
  call void @llvm.trap(), !dbg !206
  unreachable, !dbg !206

; <label>:493:                                    ; preds = %123
  call void @__dp_loop_exit(i32 16438, i32 1)
  call void @__dp_finalize(i32 16438), !dbg !172
  call void @llvm.trap(), !dbg !172
  unreachable, !dbg !172

; <label>:494:                                    ; preds = %130
  call void @__dp_loop_exit(i32 16439, i32 1)
  call void @__dp_finalize(i32 16439), !dbg !175
  call void @llvm.trap(), !dbg !175
  unreachable, !dbg !175

; <label>:495:                                    ; preds = %137
  call void @__dp_loop_exit(i32 16440, i32 1)
  call void @__dp_finalize(i32 16440), !dbg !178
  call void @llvm.trap(), !dbg !178
  unreachable, !dbg !178
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

declare swiftcc i64 @"$sSayxSicigSi_Tg5"(i64, %Ts28__ContiguousArrayStorageBaseC*) #0

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

define hidden swiftcc void @"$s9reduction6do_allyyF"() #0 !dbg !251 {
entry:
  call void @__dp_func_entry(i32 16494, i32 0)
  %localArr = alloca %TSa, align 8
  call void @llvm.dbg.declare(metadata %TSa* %localArr, metadata !252, metadata !DIExpression()), !dbg !254
  %0 = bitcast %TSa* %localArr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %access-scratch = alloca [24 x i8], align 8
  %"$i$generator" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %1 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 25, i1 false)
  %2 = alloca %TSNySiG, align 8
  %access-scratch1 = alloca [24 x i8], align 8
  %3 = alloca %TSi, align 8
  %4 = alloca %TSi, align 8
  %5 = alloca %TSNySiG, align 8
  %6 = alloca %TSiSg, align 8
  %"$i$generator11" = alloca %Ts16IndexingIteratorVySNySiGG, align 8
  %7 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 25, i1 false)
  %8 = alloca %TSNySiG, align 8
  %9 = alloca %TSi, align 8
  %10 = alloca %TSi, align 8
  %11 = alloca %TSNySiG, align 8
  %12 = alloca %TSiSg, align 8
  %i.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug, metadata !255, metadata !DIExpression()), !dbg !257
  %13 = bitcast i64* %i.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = alloca %TSi, align 8
  %access-scratch28 = alloca [24 x i8], align 8
  %15 = alloca %TSi, align 8
  %16 = alloca [32 x i8], align 8
  %access-scratch32 = alloca [24 x i8], align 8
  %17 = alloca [32 x i8], align 8
  %i.debug34 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug34, metadata !258, metadata !DIExpression()), !dbg !260
  %18 = bitcast i64* %i.debug34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  %access-scratch35 = alloca [24 x i8], align 8
  %19 = alloca [32 x i8], align 8
  %20 = bitcast %TSa* %localArr to i8*, !dbg !261
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20), !dbg !261
  %21 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !263
  call void @__dp_call(i32 16494), !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %21), !dbg !263
  call void @__dp_call(i32 16494), !dbg !263
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #2, !dbg !263
  %22 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16494, i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %23 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !263
  call void @__dp_call(i32 16494), !dbg !263
  call void @swift_endAccess([24 x i8]* %access-scratch) #2, !dbg !263
  %24 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !263
  call void @__dp_call(i32 16494), !dbg !263
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %24), !dbg !263
  call void @__dp_call(i32 16494), !dbg !264
  %25 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64 %23), !dbg !264
  %localArr._buffer = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !264
  %localArr._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer, i32 0, i32 0, !dbg !264
  %26 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer._storage to i64
  call void @__dp_write(i32 16494, i64 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  store %Ts28__ContiguousArrayStorageBaseC* %25, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer._storage, align 8, !dbg !264
  %27 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %27), !dbg !265
  %28 = bitcast %TSNySiG* %2 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %28), !dbg !265
  %29 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !267
  call void @__dp_call(i32 16497), !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %29), !dbg !267
  call void @__dp_call(i32 16497), !dbg !267
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch1, i64 32, i8* null) #2, !dbg !267
  %30 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_read(i32 16497, i64 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %31 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !267
  %32 = bitcast %Ts28__ContiguousArrayStorageBaseC* %31 to %swift.refcounted*, !dbg !267
  call void @__dp_call(i32 16497), !dbg !267
  %33 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %32) #2, !dbg !267
  call void @__dp_call(i32 16497), !dbg !267
  call void @swift_endAccess([24 x i8]* %access-scratch1) #2, !dbg !267
  %34 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !267
  call void @__dp_call(i32 16497), !dbg !267
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %34), !dbg !267
  call void @__dp_call(i32 16497), !dbg !268
  %35 = call swiftcc i64 @"$sSa5countSivgSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC* %31), !dbg !268
  call void @__dp_call(i32 16497), !dbg !268
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%Ts28__ContiguousArrayStorageBaseC*)*)(%Ts28__ContiguousArrayStorageBaseC* %31) #2, !dbg !268
  call void @__dp_call(i32 16497), !dbg !269
  %36 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %35, i64 1), !dbg !269
  %37 = extractvalue { i64, i1 } %36, 0, !dbg !269
  %38 = extractvalue { i64, i1 } %36, 1, !dbg !269
  br i1 %38, label %235, label %39, !dbg !269

; <label>:39:                                     ; preds = %entry
  br label %40, !dbg !270

; <label>:40:                                     ; preds = %39
  %41 = icmp slt i64 %37, 0, !dbg !270
  %42 = xor i1 %41, true, !dbg !270
  call void @__dp_call(i32 16497), !dbg !270
  %43 = call i1 @llvm.expect.i1(i1 %42, i1 true), !dbg !270
  br i1 %43, label %44, label %86, !dbg !270

; <label>:44:                                     ; preds = %40
  %45 = bitcast %TSi* %3 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %45), !dbg !265
  %._value = getelementptr inbounds %TSi, %TSi* %3, i32 0, i32 0, !dbg !270
  %46 = ptrtoint i64* %._value to i64
  call void @__dp_write(i32 16497, i64 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value, align 8, !dbg !270
  %47 = bitcast %TSi* %4 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %47), !dbg !265
  %._value2 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0, !dbg !270
  %48 = ptrtoint i64* %._value2 to i64
  call void @__dp_write(i32 16497, i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %37, i64* %._value2, align 8, !dbg !270
  %._value3 = getelementptr inbounds %TSi, %TSi* %3, i32 0, i32 0, !dbg !270
  %49 = ptrtoint i64* %._value3 to i64
  call void @__dp_read(i32 16497, i64 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %50 = load i64, i64* %._value3, align 8, !dbg !270
  %._value4 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0, !dbg !270
  %51 = ptrtoint i64* %._value4 to i64
  call void @__dp_read(i32 16497, i64 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %52 = load i64, i64* %._value4, align 8, !dbg !270
  call void @__dp_call(i32 16497), !dbg !270
  %53 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %50, i64 %52), !dbg !270
  %54 = extractvalue { i64, i64 } %53, 0, !dbg !270
  %55 = extractvalue { i64, i64 } %53, 1, !dbg !270
  %.lowerBound = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 0, !dbg !270
  %.lowerBound._value = getelementptr inbounds %TSi, %TSi* %.lowerBound, i32 0, i32 0, !dbg !270
  %56 = ptrtoint i64* %.lowerBound._value to i64
  call void @__dp_write(i32 16497, i64 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %54, i64* %.lowerBound._value, align 8, !dbg !270
  %.upperBound = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 1, !dbg !270
  %.upperBound._value = getelementptr inbounds %TSi, %TSi* %.upperBound, i32 0, i32 0, !dbg !270
  %57 = ptrtoint i64* %.upperBound._value to i64
  call void @__dp_write(i32 16497, i64 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %55, i64* %.upperBound._value, align 8, !dbg !270
  %58 = bitcast %TSi* %4 to i8*, !dbg !270
  call void @__dp_call(i32 16497), !dbg !270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58), !dbg !270
  %59 = bitcast %TSi* %3 to i8*, !dbg !270
  call void @__dp_call(i32 16497), !dbg !270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59), !dbg !270
  %.lowerBound5 = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 0, !dbg !270
  %.lowerBound5._value = getelementptr inbounds %TSi, %TSi* %.lowerBound5, i32 0, i32 0, !dbg !270
  %60 = ptrtoint i64* %.lowerBound5._value to i64
  call void @__dp_read(i32 16497, i64 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %61 = load i64, i64* %.lowerBound5._value, align 8, !dbg !270
  %.upperBound6 = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 1, !dbg !270
  %.upperBound6._value = getelementptr inbounds %TSi, %TSi* %.upperBound6, i32 0, i32 0, !dbg !270
  %62 = ptrtoint i64* %.upperBound6._value to i64
  call void @__dp_read(i32 16497, i64 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %63 = load i64, i64* %.upperBound6._value, align 8, !dbg !270
  %64 = bitcast %TSNySiG* %5 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %64), !dbg !265
  %.lowerBound7 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !270
  %.lowerBound7._value = getelementptr inbounds %TSi, %TSi* %.lowerBound7, i32 0, i32 0, !dbg !270
  %65 = ptrtoint i64* %.lowerBound7._value to i64
  call void @__dp_write(i32 16497, i64 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %61, i64* %.lowerBound7._value, align 8, !dbg !270
  %.upperBound8 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !270
  %.upperBound8._value = getelementptr inbounds %TSi, %TSi* %.upperBound8, i32 0, i32 0, !dbg !270
  %66 = ptrtoint i64* %.upperBound8._value to i64
  call void @__dp_write(i32 16497, i64 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %63, i64* %.upperBound8._value, align 8, !dbg !270
  %.lowerBound9 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !271
  %.lowerBound9._value = getelementptr inbounds %TSi, %TSi* %.lowerBound9, i32 0, i32 0, !dbg !271
  %67 = ptrtoint i64* %.lowerBound9._value to i64
  call void @__dp_read(i32 16497, i64 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %68 = load i64, i64* %.lowerBound9._value, align 8, !dbg !271
  %.upperBound10 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !271
  %.upperBound10._value = getelementptr inbounds %TSi, %TSi* %.upperBound10, i32 0, i32 0, !dbg !271
  %69 = ptrtoint i64* %.upperBound10._value to i64
  call void @__dp_read(i32 16497, i64 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %70 = load i64, i64* %.upperBound10._value, align 8, !dbg !271
  call void @__dp_call(i32 16497), !dbg !271
  %71 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %68, i64 %70), !dbg !271
  %72 = extractvalue { i64, i64, i64, i8 } %71, 0, !dbg !271
  %73 = extractvalue { i64, i64, i64, i8 } %71, 1, !dbg !271
  %74 = extractvalue { i64, i64, i64, i8 } %71, 2, !dbg !271
  %75 = extractvalue { i64, i64, i64, i8 } %71, 3, !dbg !271
  %76 = trunc i8 %75 to i1, !dbg !271
  %"$i$generator._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 0, !dbg !271
  %"$i$generator._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 0, !dbg !271
  %"$i$generator._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.lowerBound", i32 0, i32 0, !dbg !271
  %77 = ptrtoint i64* %"$i$generator._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16497, i64 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i64 %72, i64* %"$i$generator._elements.lowerBound._value", align 8, !dbg !271
  %"$i$generator._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 1, !dbg !271
  %"$i$generator._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.upperBound", i32 0, i32 0, !dbg !271
  %78 = ptrtoint i64* %"$i$generator._elements.upperBound._value" to i64
  call void @__dp_write(i32 16497, i64 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i64 %73, i64* %"$i$generator._elements.upperBound._value", align 8, !dbg !271
  %"$i$generator._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 1, !dbg !271
  %79 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position" to i64*, !dbg !271
  %80 = ptrtoint i64* %79 to i64
  call void @__dp_write(i32 16497, i64 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %74, i64* %79, align 8, !dbg !271
  %81 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position", i32 0, i32 1, !dbg !271
  %82 = bitcast [1 x i8]* %81 to i1*, !dbg !271
  %83 = ptrtoint i1* %82 to i64
  call void @__dp_write(i32 16497, i64 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %76, i1* %82, align 8, !dbg !271
  %84 = bitcast %TSNySiG* %5 to i8*, !dbg !272
  call void @__dp_call(i32 16497), !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %84), !dbg !272
  %85 = bitcast %TSNySiG* %2 to i8*, !dbg !272
  call void @__dp_call(i32 16497), !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %85), !dbg !272
  br label %87, !dbg !272

; <label>:86:                                     ; preds = %40
  call void @__dp_call(i32 16497), !dbg !270
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !270
  unreachable, !dbg !265

; <label>:87:                                     ; preds = %107, %44
  %88 = bitcast %TSiSg* %6 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %88), !dbg !265
  call void @__dp_loop_entry(i32 16497, i32 5)
  call void @__dp_call(i32 16497), !dbg !273
  %89 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator"), !dbg !273
  %90 = extractvalue { i64, i8 } %89, 0, !dbg !273
  %91 = extractvalue { i64, i8 } %89, 1, !dbg !273
  %92 = trunc i8 %91 to i1, !dbg !273
  %93 = bitcast %TSiSg* %6 to i64*, !dbg !273
  %94 = ptrtoint i64* %93 to i64
  call void @__dp_write(i32 16497, i64 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %90, i64* %93, align 8, !dbg !273
  %95 = getelementptr inbounds %TSiSg, %TSiSg* %6, i32 0, i32 1, !dbg !273
  %96 = bitcast [1 x i8]* %95 to i1*, !dbg !273
  %97 = ptrtoint i1* %96 to i64
  call void @__dp_write(i32 16497, i64 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %92, i1* %96, align 8, !dbg !273
  %98 = bitcast %TSiSg* %6 to i64*, !dbg !273
  %99 = ptrtoint i64* %98 to i64
  call void @__dp_read(i32 16497, i64 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %100 = load i64, i64* %98, align 8, !dbg !273
  %101 = getelementptr inbounds %TSiSg, %TSiSg* %6, i32 0, i32 1, !dbg !273
  %102 = bitcast [1 x i8]* %101 to i1*, !dbg !273
  %103 = ptrtoint i1* %102 to i64
  call void @__dp_read(i32 16497, i64 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %104 = load i1, i1* %102, align 8, !dbg !273
  %105 = bitcast %TSiSg* %6 to i8*, !dbg !272
  call void @__dp_call(i32 16497), !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %105), !dbg !272
  br i1 %104, label %117, label %106, !dbg !272

; <label>:106:                                    ; preds = %87
  br label %107, !dbg !272

; <label>:107:                                    ; preds = %106
  %108 = phi i64 [ %100, %106 ], !dbg !265
  store i64 %108, i64* %i.debug34, align 8, !dbg !274
  %109 = bitcast [24 x i8]* %access-scratch35 to i8*, !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %109), !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch35, i64 33, i8* null) #2, !dbg !275
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i32 0, i32 0, !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %110), !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  %111 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %110, i64 %108, %TSa* nocapture swiftself dereferenceable(8) @"$s9reduction9globalArrSaySiGvp"), !dbg !275
  %112 = extractvalue { i8*, %TSi* } %111, 0, !dbg !275
  %113 = extractvalue { i8*, %TSi* } %111, 1, !dbg !275
  %._value36 = getelementptr inbounds %TSi, %TSi* %113, i32 0, i32 0, !dbg !275
  %114 = ptrtoint i64* %._value36 to i64
  call void @__dp_write(i32 16498, i64 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i64 0, i64* %._value36, align 8, !dbg !275
  %115 = bitcast i8* %112 to void (i8*, i1)*, !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call swiftcc void %115(i8* noalias dereferenceable(32) %110, i1 false), !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %110), !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call void @swift_endAccess([24 x i8]* %access-scratch35) #2, !dbg !275
  %116 = bitcast [24 x i8]* %access-scratch35 to i8*, !dbg !275
  call void @__dp_call(i32 16498), !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %116), !dbg !275
  br label %87, !dbg !277

; <label>:117:                                    ; preds = %87
  call void @__dp_loop_exit(i32 16502, i32 5)
  %118 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !261
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %118), !dbg !261
  %119 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %119), !dbg !278
  %120 = bitcast %TSNySiG* %8 to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %120), !dbg !278
  %localArr._buffer12 = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !280
  %localArr._buffer12._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer12, i32 0, i32 0, !dbg !280
  %121 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer12._storage to i64
  call void @__dp_read(i32 16502, i64 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  %122 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer12._storage, align 8, !dbg !280
  %123 = bitcast %Ts28__ContiguousArrayStorageBaseC* %122 to %swift.refcounted*, !dbg !280
  call void @__dp_call(i32 16502), !dbg !280
  %124 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %123) #2, !dbg !280
  call void @__dp_call(i32 16502), !dbg !281
  %125 = call swiftcc i64 @"$sSa5countSivgSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC* %122), !dbg !281
  call void @__dp_call(i32 16502), !dbg !281
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%Ts28__ContiguousArrayStorageBaseC*)*)(%Ts28__ContiguousArrayStorageBaseC* %122) #2, !dbg !281
  call void @__dp_call(i32 16502), !dbg !282
  %126 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %125, i64 1), !dbg !282
  %127 = extractvalue { i64, i1 } %126, 0, !dbg !282
  %128 = extractvalue { i64, i1 } %126, 1, !dbg !282
  br i1 %128, label %236, label %129, !dbg !282

; <label>:129:                                    ; preds = %117
  br label %130, !dbg !283

; <label>:130:                                    ; preds = %129
  %131 = icmp slt i64 %127, 0, !dbg !283
  %132 = xor i1 %131, true, !dbg !283
  call void @__dp_call(i32 16502), !dbg !283
  %133 = call i1 @llvm.expect.i1(i1 %132, i1 true), !dbg !283
  br i1 %133, label %134, label %176, !dbg !283

; <label>:134:                                    ; preds = %130
  %135 = bitcast %TSi* %9 to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %135), !dbg !278
  %._value13 = getelementptr inbounds %TSi, %TSi* %9, i32 0, i32 0, !dbg !283
  %136 = ptrtoint i64* %._value13 to i64
  call void @__dp_write(i32 16502, i64 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 0, i64* %._value13, align 8, !dbg !283
  %137 = bitcast %TSi* %10 to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %137), !dbg !278
  %._value14 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !283
  %138 = ptrtoint i64* %._value14 to i64
  call void @__dp_write(i32 16502, i64 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %127, i64* %._value14, align 8, !dbg !283
  %._value15 = getelementptr inbounds %TSi, %TSi* %9, i32 0, i32 0, !dbg !283
  %139 = ptrtoint i64* %._value15 to i64
  call void @__dp_read(i32 16502, i64 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %140 = load i64, i64* %._value15, align 8, !dbg !283
  %._value16 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !283
  %141 = ptrtoint i64* %._value16 to i64
  call void @__dp_read(i32 16502, i64 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %142 = load i64, i64* %._value16, align 8, !dbg !283
  call void @__dp_call(i32 16502), !dbg !283
  %143 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %140, i64 %142), !dbg !283
  %144 = extractvalue { i64, i64 } %143, 0, !dbg !283
  %145 = extractvalue { i64, i64 } %143, 1, !dbg !283
  %.lowerBound17 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !283
  %.lowerBound17._value = getelementptr inbounds %TSi, %TSi* %.lowerBound17, i32 0, i32 0, !dbg !283
  %146 = ptrtoint i64* %.lowerBound17._value to i64
  call void @__dp_write(i32 16502, i64 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %144, i64* %.lowerBound17._value, align 8, !dbg !283
  %.upperBound18 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !283
  %.upperBound18._value = getelementptr inbounds %TSi, %TSi* %.upperBound18, i32 0, i32 0, !dbg !283
  %147 = ptrtoint i64* %.upperBound18._value to i64
  call void @__dp_write(i32 16502, i64 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %145, i64* %.upperBound18._value, align 8, !dbg !283
  %148 = bitcast %TSi* %10 to i8*, !dbg !283
  call void @__dp_call(i32 16502), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %148), !dbg !283
  %149 = bitcast %TSi* %9 to i8*, !dbg !283
  call void @__dp_call(i32 16502), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %149), !dbg !283
  %.lowerBound19 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !283
  %.lowerBound19._value = getelementptr inbounds %TSi, %TSi* %.lowerBound19, i32 0, i32 0, !dbg !283
  %150 = ptrtoint i64* %.lowerBound19._value to i64
  call void @__dp_read(i32 16502, i64 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %151 = load i64, i64* %.lowerBound19._value, align 8, !dbg !283
  %.upperBound20 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !283
  %.upperBound20._value = getelementptr inbounds %TSi, %TSi* %.upperBound20, i32 0, i32 0, !dbg !283
  %152 = ptrtoint i64* %.upperBound20._value to i64
  call void @__dp_read(i32 16502, i64 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %153 = load i64, i64* %.upperBound20._value, align 8, !dbg !283
  %154 = bitcast %TSNySiG* %11 to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %154), !dbg !278
  %.lowerBound21 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !283
  %.lowerBound21._value = getelementptr inbounds %TSi, %TSi* %.lowerBound21, i32 0, i32 0, !dbg !283
  %155 = ptrtoint i64* %.lowerBound21._value to i64
  call void @__dp_write(i32 16502, i64 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %151, i64* %.lowerBound21._value, align 8, !dbg !283
  %.upperBound22 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !283
  %.upperBound22._value = getelementptr inbounds %TSi, %TSi* %.upperBound22, i32 0, i32 0, !dbg !283
  %156 = ptrtoint i64* %.upperBound22._value to i64
  call void @__dp_write(i32 16502, i64 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %153, i64* %.upperBound22._value, align 8, !dbg !283
  %.lowerBound23 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !284
  %.lowerBound23._value = getelementptr inbounds %TSi, %TSi* %.lowerBound23, i32 0, i32 0, !dbg !284
  %157 = ptrtoint i64* %.lowerBound23._value to i64
  call void @__dp_read(i32 16502, i64 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %158 = load i64, i64* %.lowerBound23._value, align 8, !dbg !284
  %.upperBound24 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !284
  %.upperBound24._value = getelementptr inbounds %TSi, %TSi* %.upperBound24, i32 0, i32 0, !dbg !284
  %159 = ptrtoint i64* %.upperBound24._value to i64
  call void @__dp_read(i32 16502, i64 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %160 = load i64, i64* %.upperBound24._value, align 8, !dbg !284
  call void @__dp_call(i32 16502), !dbg !284
  %161 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %158, i64 %160), !dbg !284
  %162 = extractvalue { i64, i64, i64, i8 } %161, 0, !dbg !284
  %163 = extractvalue { i64, i64, i64, i8 } %161, 1, !dbg !284
  %164 = extractvalue { i64, i64, i64, i8 } %161, 2, !dbg !284
  %165 = extractvalue { i64, i64, i64, i8 } %161, 3, !dbg !284
  %166 = trunc i8 %165 to i1, !dbg !284
  %"$i$generator11._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 0, !dbg !284
  %"$i$generator11._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 0, !dbg !284
  %"$i$generator11._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.lowerBound", i32 0, i32 0, !dbg !284
  %167 = ptrtoint i64* %"$i$generator11._elements.lowerBound._value" to i64
  call void @__dp_write(i32 16502, i64 %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  store i64 %162, i64* %"$i$generator11._elements.lowerBound._value", align 8, !dbg !284
  %"$i$generator11._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 1, !dbg !284
  %"$i$generator11._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.upperBound", i32 0, i32 0, !dbg !284
  %168 = ptrtoint i64* %"$i$generator11._elements.upperBound._value" to i64
  call void @__dp_write(i32 16502, i64 %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  store i64 %163, i64* %"$i$generator11._elements.upperBound._value", align 8, !dbg !284
  %"$i$generator11._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 1, !dbg !284
  %169 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position" to i64*, !dbg !284
  %170 = ptrtoint i64* %169 to i64
  call void @__dp_write(i32 16502, i64 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %164, i64* %169, align 8, !dbg !284
  %171 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position", i32 0, i32 1, !dbg !284
  %172 = bitcast [1 x i8]* %171 to i1*, !dbg !284
  %173 = ptrtoint i1* %172 to i64
  call void @__dp_write(i32 16502, i64 %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %166, i1* %172, align 8, !dbg !284
  %174 = bitcast %TSNySiG* %11 to i8*, !dbg !285
  call void @__dp_call(i32 16502), !dbg !285
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %174), !dbg !285
  %175 = bitcast %TSNySiG* %8 to i8*, !dbg !285
  call void @__dp_call(i32 16502), !dbg !285
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %175), !dbg !285
  br label %177, !dbg !285

; <label>:176:                                    ; preds = %130
  call void @__dp_call(i32 16502), !dbg !283
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !283
  unreachable, !dbg !278

; <label>:177:                                    ; preds = %197, %134
  %178 = bitcast %TSiSg* %12 to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %178), !dbg !278
  call void @__dp_loop_entry(i32 16502, i32 6)
  call void @__dp_call(i32 16502), !dbg !286
  %179 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator11"), !dbg !286
  %180 = extractvalue { i64, i8 } %179, 0, !dbg !286
  %181 = extractvalue { i64, i8 } %179, 1, !dbg !286
  %182 = trunc i8 %181 to i1, !dbg !286
  %183 = bitcast %TSiSg* %12 to i64*, !dbg !286
  %184 = ptrtoint i64* %183 to i64
  call void @__dp_write(i32 16502, i64 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %180, i64* %183, align 8, !dbg !286
  %185 = getelementptr inbounds %TSiSg, %TSiSg* %12, i32 0, i32 1, !dbg !286
  %186 = bitcast [1 x i8]* %185 to i1*, !dbg !286
  %187 = ptrtoint i1* %186 to i64
  call void @__dp_write(i32 16502, i64 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i1 %182, i1* %186, align 8, !dbg !286
  %188 = bitcast %TSiSg* %12 to i64*, !dbg !286
  %189 = ptrtoint i64* %188 to i64
  call void @__dp_read(i32 16502, i64 %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %190 = load i64, i64* %188, align 8, !dbg !286
  %191 = getelementptr inbounds %TSiSg, %TSiSg* %12, i32 0, i32 1, !dbg !286
  %192 = bitcast [1 x i8]* %191 to i1*, !dbg !286
  %193 = ptrtoint i1* %192 to i64
  call void @__dp_read(i32 16502, i64 %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %194 = load i1, i1* %192, align 8, !dbg !286
  %195 = bitcast %TSiSg* %12 to i8*, !dbg !285
  call void @__dp_call(i32 16502), !dbg !285
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %195), !dbg !285
  br i1 %194, label %231, label %196, !dbg !285

; <label>:196:                                    ; preds = %177
  br label %197, !dbg !285

; <label>:197:                                    ; preds = %196
  %198 = phi i64 [ %190, %196 ], !dbg !278
  store i64 %198, i64* %i.debug, align 8, !dbg !287
  %localArr._buffer25 = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !288
  %localArr._buffer25._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer25, i32 0, i32 0, !dbg !288
  %199 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer25._storage to i64
  call void @__dp_read(i32 16503, i64 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  %200 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer25._storage, align 8, !dbg !288
  %201 = bitcast %TSi* %14 to i8*, !dbg !290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %201), !dbg !290
  call void @__dp_call(i32 16503), !dbg !288
  %202 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %198, %Ts28__ContiguousArrayStorageBaseC* %200), !dbg !288
  %._value26 = getelementptr inbounds %TSi, %TSi* %14, i32 0, i32 0, !dbg !288
  %203 = ptrtoint i64* %._value26 to i64
  call void @__dp_write(i32 16503, i64 %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %202, i64* %._value26, align 8, !dbg !288
  %._value27 = getelementptr inbounds %TSi, %TSi* %14, i32 0, i32 0, !dbg !288
  %204 = ptrtoint i64* %._value27 to i64
  call void @__dp_read(i32 16503, i64 %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %205 = load i64, i64* %._value27, align 8, !dbg !288
  call void asm sideeffect "", "r"(i64 %205), !dbg !290
  call void @__dp_call(i32 16503), !dbg !292
  call void @llvm.dbg.value(metadata i64 %205, metadata !293, metadata !DIExpression()), !dbg !292
  %206 = bitcast %TSi* %14 to i8*, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %206), !dbg !290
  %207 = bitcast [24 x i8]* %access-scratch28 to i8*, !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %207), !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch28, i64 32, i8* null) #2, !dbg !294
  %208 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_read(i32 16504, i64 %208, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %209 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !294
  %210 = bitcast %TSi* %15 to i8*, !dbg !290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %210), !dbg !290
  call void @__dp_call(i32 16504), !dbg !294
  %211 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %198, %Ts28__ContiguousArrayStorageBaseC* %209), !dbg !294
  %._value29 = getelementptr inbounds %TSi, %TSi* %15, i32 0, i32 0, !dbg !294
  %212 = ptrtoint i64* %._value29 to i64
  call void @__dp_write(i32 16504, i64 %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i64 %211, i64* %._value29, align 8, !dbg !294
  %._value30 = getelementptr inbounds %TSi, %TSi* %15, i32 0, i32 0, !dbg !294
  %213 = ptrtoint i64* %._value30 to i64
  call void @__dp_read(i32 16504, i64 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %214 = load i64, i64* %._value30, align 8, !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @swift_endAccess([24 x i8]* %access-scratch28) #2, !dbg !294
  %215 = bitcast [24 x i8]* %access-scratch28 to i8*, !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %215), !dbg !294
  %216 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0, !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %216), !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  %217 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %216, i64 %198, %TSa* nocapture swiftself dereferenceable(8) %localArr), !dbg !294
  %218 = extractvalue { i8*, %TSi* } %217, 0, !dbg !294
  %219 = extractvalue { i8*, %TSi* } %217, 1, !dbg !294
  %._value31 = getelementptr inbounds %TSi, %TSi* %219, i32 0, i32 0, !dbg !294
  %220 = ptrtoint i64* %._value31 to i64
  call void @__dp_write(i32 16504, i64 %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  store i64 %214, i64* %._value31, align 8, !dbg !294
  %221 = bitcast i8* %218 to void (i8*, i1)*, !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call swiftcc void %221(i8* noalias dereferenceable(32) %216, i1 false), !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %216), !dbg !294
  %222 = bitcast %TSi* %15 to i8*, !dbg !294
  call void @__dp_call(i32 16504), !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %222), !dbg !294
  %223 = bitcast [24 x i8]* %access-scratch32 to i8*, !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %223), !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch32, i64 33, i8* null) #2, !dbg !295
  %224 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0, !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %224), !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  %225 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %224, i64 %198, %TSa* nocapture swiftself dereferenceable(8) @"$s9reduction9globalArrSaySiGvp"), !dbg !295
  %226 = extractvalue { i8*, %TSi* } %225, 0, !dbg !295
  %227 = extractvalue { i8*, %TSi* } %225, 1, !dbg !295
  %._value33 = getelementptr inbounds %TSi, %TSi* %227, i32 0, i32 0, !dbg !295
  %228 = ptrtoint i64* %._value33 to i64
  call void @__dp_write(i32 16505, i64 %228, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i64 %205, i64* %._value33, align 8, !dbg !295
  %229 = bitcast i8* %226 to void (i8*, i1)*, !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call swiftcc void %229(i8* noalias dereferenceable(32) %224, i1 false), !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %224), !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call void @swift_endAccess([24 x i8]* %access-scratch32) #2, !dbg !295
  %230 = bitcast [24 x i8]* %access-scratch32 to i8*, !dbg !295
  call void @__dp_call(i32 16505), !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %230), !dbg !295
  call void @__dp_call(i32 16507), !dbg !296
  call void asm sideeffect "", "r"(i64 %205), !dbg !296
  br label %177, !dbg !296

; <label>:231:                                    ; preds = %177
  call void @__dp_loop_exit(i32 16509, i32 6)
  %232 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !297
  call void @__dp_call(i32 16509), !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %232), !dbg !297
  call void @__dp_call(i32 16509), !dbg !297
  %233 = call %TSa* @"$sSaySiGWOh"(%TSa* %localArr), !dbg !297
  %234 = bitcast %TSa* %localArr to i8*, !dbg !297
  call void @__dp_call(i32 16509), !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %234), !dbg !297
  call void @__dp_func_exit(i32 16509, i32 0), !dbg !297
  ret void, !dbg !297

; <label>:235:                                    ; preds = %entry
  call void @__dp_finalize(i32 16497), !dbg !269
  call void @llvm.trap(), !dbg !269
  unreachable, !dbg !269

; <label>:236:                                    ; preds = %117
  call void @__dp_finalize(i32 16502), !dbg !282
  call void @llvm.trap(), !dbg !282
  unreachable, !dbg !282
}

declare swiftcc i64 @"$sSa5countSivgSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC*) #0

declare swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32), i64, %TSa* nocapture swiftself dereferenceable(8)) #0

; Function Attrs: nounwind readnone
declare i8* @llvm.coro.prepare.retcon(i8*) #5

define hidden swiftcc void @"$s9reduction4testyyF"() #0 !dbg !298 {
entry:
  call void @__dp_func_entry(i32 16514, i32 0), !dbg !299
  call void @__dp_call(i32 16514), !dbg !299
  call swiftcc void @"$s9reduction6do_allyyF"(), !dbg !299
  call void @__dp_call(i32 16515), !dbg !301
  call swiftcc void @"$s9reductionAAyyF"(), !dbg !301
  call void @__dp_func_exit(i32 16517, i32 0), !dbg !302
  ret void, !dbg !302
}

declare void @__dp_init(i32, i32, i32)

declare void @__dp_finalize(i32)

declare void @__dp_read(i32, i64, i8*)

declare void @__dp_write(i32, i64, i8*)

declare void @__dp_call(i32)

declare void @__dp_func_entry(i32, i32)

declare void @__dp_func_exit(i32, i32)

declare void @__dp_loop_entry(i32, i32)

declare void @__dp_loop_exit(i32, i32)

attributes #0 = { "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind readnone }
attributes #6 = { noinline "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { noinline nounwind }

!llvm.dbg.cu = !{!25, !32}
!swift.module.flags = !{!34}
!llvm.linker.options = !{}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40}
!llvm.asan.globals = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "iterations", linkageName: "$s9reduction10iterationsSivp", scope: !2, file: !3, line: 1, type: !4, isLocal: false, isDefinition: true)
!2 = !DIModule(scope: null, name: "reduction")
!3 = !DIFile(filename: "reduction.swift", directory: "/home/simonschmalfuss/discopop/examples+tests/tests/swift")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Int", scope: !6, file: !5, size: 64, elements: !7, runtimeLang: DW_LANG_Swift, identifier: "$sSiD")
!5 = !DIFile(filename: "swift-5.1/swift-5.1.5-RELEASE-ubuntu18.04/usr/lib/swift/linux/x86_64/Swift.swiftmodule", directory: "/home/simonschmalfuss")
!6 = !DIModule(scope: null, name: "Swift", includePath: "/home/simonschmalfuss/swift-5.1/swift-5.1.5-RELEASE-ubuntu18.04/usr/lib/swift/linux/x86_64/Swift.swiftmodule")
!7 = !{}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "aG", linkageName: "$s9reduction2aGSivp", scope: !2, file: !3, line: 2, type: !4, isLocal: false, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "bG", linkageName: "$s9reduction2bGSivp", scope: !2, file: !3, line: 2, type: !4, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "cG", linkageName: "$s9reduction2cGSivp", scope: !2, file: !3, line: 3, type: !4, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "localRes", linkageName: "$s9reduction8localResSivp", scope: !2, file: !3, line: 4, type: !4, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "arrSum", linkageName: "$s9reduction6arrSumSivp", scope: !2, file: !3, line: 5, type: !4, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "arrMul", linkageName: "$s9reduction6arrMulSivp", scope: !2, file: !3, line: 5, type: !4, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "N", linkageName: "$s9reduction1NSivp", scope: !2, file: !3, line: 8, type: !4, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "globalArr", linkageName: "$s9reduction9globalArrSaySiGvp", scope: !2, file: !3, line: 19, type: !24, isLocal: false, isDefinition: true)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Array", scope: !6, file: !3, size: 64, elements: !7, runtimeLang: DW_LANG_Swift, identifier: "$sSaySiGD")
!25 = distinct !DICompileUnit(language: DW_LANG_Swift, file: !3, producer: "Swift version 5.1.5 (swift-5.1.5-RELEASE)", isOptimized: false, runtimeVersion: 5, emissionKind: FullDebug, enums: !7, globals: !26, imports: !27)
!26 = !{!0, !8, !10, !12, !14, !16, !18, !20, !22}
!27 = !{!28, !29, !30}
!28 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !3, entity: !2, file: !3)
!29 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !3, entity: !6, file: !3)
!30 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !3, entity: !31, file: !3)
!31 = !DIModule(scope: null, name: "SwiftOnoneSupport", includePath: "/home/simonschmalfuss/swift-5.1/swift-5.1.5-RELEASE-ubuntu18.04/usr/lib/swift/linux/x86_64/SwiftOnoneSupport.swiftmodule")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 7.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!33 = !DIFile(filename: "<swift-imported-modules>", directory: "/home/simonschmalfuss/discopop/examples+tests/tests/swift")
!34 = !{!"standard-library", i1 false}
!35 = !{i32 2, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 4, !"Objective-C Garbage Collection", i32 83953408}
!40 = !{i32 1, !"Swift Version", i32 7}
!41 = !{[2 x i8*]* @llvm.used, null, null, i1 false, i1 true}
!42 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !2, file: !3, line: 1, type: !43, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !45, !46}
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Int32", scope: !6, file: !5, size: 32, elements: !7, runtimeLang: DW_LANG_Swift, identifier: "$ss5Int32VD")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeMutablePointer", scope: !6, file: !3, size: 64, elements: !7, runtimeLang: DW_LANG_Swift, identifier: "$sSpySpys4Int8VGSgGD")
!47 = !DILocation(line: 1, column: 18, scope: !48)
!48 = distinct !DILexicalBlock(scope: !42, file: !3, line: 1, column: 1)
!49 = !DILocation(line: 2, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !3, line: 2, column: 1)
!51 = !DILocation(line: 2, column: 18, scope: !50)
!52 = !DILocation(line: 3, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !3, line: 3, column: 1)
!54 = !DILocation(line: 4, column: 16, scope: !55)
!55 = distinct !DILexicalBlock(scope: !42, file: !3, line: 4, column: 1)
!56 = !DILocation(line: 5, column: 14, scope: !57)
!57 = distinct !DILexicalBlock(scope: !42, file: !3, line: 5, column: 1)
!58 = !DILocation(line: 5, column: 26, scope: !57)
!59 = !DILocation(line: 8, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !42, file: !3, line: 8, column: 1)
!61 = !DILocation(line: 19, column: 36, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !3, line: 19, column: 1)
!63 = !DILocation(line: 19, column: 17, scope: !62)
!64 = distinct !DISubprogram(name: "getArr", linkageName: "$s9reduction6getArr10iterationsSaySiGSi_tF", scope: !2, file: !3, line: 11, type: !65, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!65 = !DISubroutineType(types: !66)
!66 = !{!24, !4}
!67 = !DILocalVariable(name: "iterations", arg: 1, scope: !64, file: !3, line: 11, type: !4)
!68 = !DILocation(line: 11, column: 13, scope: !64)
!69 = !DILocalVariable(name: "arr", scope: !70, file: !3, line: 12, type: !24)
!70 = distinct !DILexicalBlock(scope: !64, file: !3, line: 11, column: 44)
!71 = !DILocation(line: 12, column: 9, scope: !70)
!72 = !DILocalVariable(name: "i", scope: !73, file: !3, line: 13, type: !4)
!73 = distinct !DILexicalBlock(scope: !70, file: !3, line: 13, column: 5)
!74 = !DILocation(line: 13, column: 9, scope: !73)
!75 = !DILocation(line: 0, scope: !64)
!76 = !DILocation(line: 0, scope: !77)
!77 = !DILexicalBlockFile(scope: !70, file: !78, discriminator: 0)
!78 = !DIFile(filename: "<compiler-generated>", directory: "")
!79 = !DILocation(line: 12, column: 19, scope: !70)
!80 = !DILocation(line: 0, scope: !81)
!81 = !DILexicalBlockFile(scope: !73, file: !78, discriminator: 0)
!82 = !DILocation(line: 13, column: 15, scope: !73)
!83 = !DILocation(line: 13, column: 14, scope: !73)
!84 = !DILocation(line: 13, column: 5, scope: !73)
!85 = !DILocation(line: 13, column: 11, scope: !73)
!86 = !DILocation(line: 0, scope: !73)
!87 = !DILocation(line: 0, scope: !88)
!88 = !DILexicalBlockFile(scope: !89, file: !78, discriminator: 0)
!89 = distinct !DILexicalBlock(scope: !73, file: !3, line: 13, column: 29)
!90 = !DILocation(line: 14, column: 20, scope: !89)
!91 = !DILocation(line: 14, column: 13, scope: !89)
!92 = !DILocation(line: 15, column: 5, scope: !73)
!93 = !DILocation(line: 16, column: 12, scope: !70)
!94 = !DILocation(line: 16, column: 5, scope: !70)
!95 = distinct !DISubprogram(linkageName: "$sSaySiGWOh", scope: !2, file: !78, type: !96, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!96 = !DISubroutineType(types: null)
!97 = !DILocation(line: 0, scope: !95)
!98 = distinct !DISubprogram(name: "expensiveOP", linkageName: "$s9reduction11expensiveOP1nS2i_tF", scope: !2, file: !3, line: 24, type: !99, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!99 = !DISubroutineType(types: !100)
!100 = !{!4, !4}
!101 = !DILocalVariable(name: "n", arg: 1, scope: !98, file: !3, line: 24, type: !4)
!102 = !DILocation(line: 24, column: 18, scope: !98)
!103 = !DILocalVariable(name: "fn", scope: !104, file: !3, line: 29, type: !4)
!104 = distinct !DILexicalBlock(scope: !98, file: !3, line: 24, column: 33)
!105 = !DILocation(line: 29, column: 9, scope: !104)
!106 = !DILocation(line: 0, scope: !98)
!107 = !DILocation(line: 0, scope: !108)
!108 = !DILexicalBlockFile(scope: !104, file: !78, discriminator: 0)
!109 = !DILocation(line: 29, column: 14, scope: !104)
!110 = !DILocation(line: 31, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !104, file: !3, line: 31, column: 5)
!112 = !DILocation(line: 31, column: 18, scope: !111)
!113 = !DILocation(line: 32, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 31, column: 30)
!115 = !DILocation(line: 33, column: 5, scope: !111)
!116 = !DILocation(line: 34, column: 30, scope: !117)
!117 = distinct !DILexicalBlock(scope: !104, file: !3, line: 33, column: 12)
!118 = !DILocation(line: 34, column: 14, scope: !117)
!119 = !DILocation(line: 34, column: 52, scope: !117)
!120 = !DILocation(line: 34, column: 36, scope: !117)
!121 = !DILocation(line: 34, column: 34, scope: !117)
!122 = !DILocation(line: 34, column: 12, scope: !117)
!123 = !DILocation(line: 35, column: 5, scope: !104)
!124 = !DILocation(line: 37, column: 12, scope: !104)
!125 = !DILocation(line: 37, column: 5, scope: !104)
!126 = distinct !DISubprogram(name: "reduction", linkageName: "$s9reductionAAyyF", scope: !2, file: !3, line: 47, type: !127, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!127 = !DISubroutineType(types: !128)
!128 = !{!129}
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "$sytD", file: !3, elements: !7, runtimeLang: DW_LANG_Swift, identifier: "$sytD")
!130 = !DILocalVariable(name: "a", scope: !131, file: !3, line: 49, type: !4)
!131 = distinct !DILexicalBlock(scope: !126, file: !3, line: 47, column: 18)
!132 = !DILocation(line: 49, column: 9, scope: !131)
!133 = !DILocalVariable(name: "b", scope: !131, file: !3, line: 49, type: !4)
!134 = !DILocation(line: 49, column: 16, scope: !131)
!135 = !DILocalVariable(name: "c", scope: !131, file: !3, line: 49, type: !4)
!136 = !DILocation(line: 49, column: 23, scope: !131)
!137 = !DILocalVariable(name: "localArr", scope: !131, file: !3, line: 50, type: !24)
!138 = !DILocation(line: 50, column: 9, scope: !131)
!139 = !DILocalVariable(name: "arrSum", scope: !131, file: !3, line: 79, type: !4)
!140 = !DILocation(line: 79, column: 9, scope: !131)
!141 = !DILocalVariable(name: "arrMul", scope: !131, file: !3, line: 79, type: !4)
!142 = !DILocation(line: 79, column: 21, scope: !131)
!143 = !DILocalVariable(name: "i", scope: !144, file: !3, line: 95, type: !4)
!144 = distinct !DILexicalBlock(scope: !131, file: !3, line: 95, column: 5)
!145 = !DILocation(line: 95, column: 9, scope: !144)
!146 = !DILocalVariable(name: "i", scope: !147, file: !3, line: 81, type: !4)
!147 = distinct !DILexicalBlock(scope: !131, file: !3, line: 81, column: 5)
!148 = !DILocation(line: 81, column: 9, scope: !147)
!149 = !DILocalVariable(name: "i", scope: !150, file: !3, line: 63, type: !4)
!150 = distinct !DILexicalBlock(scope: !131, file: !3, line: 63, column: 5)
!151 = !DILocation(line: 63, column: 9, scope: !150)
!152 = !DILocalVariable(name: "i", scope: !153, file: !3, line: 53, type: !4)
!153 = distinct !DILexicalBlock(scope: !131, file: !3, line: 53, column: 5)
!154 = !DILocation(line: 53, column: 9, scope: !153)
!155 = !DILocation(line: 0, scope: !156)
!156 = !DILexicalBlockFile(scope: !131, file: !78, discriminator: 0)
!157 = !DILocation(line: 49, column: 13, scope: !131)
!158 = !DILocation(line: 49, column: 20, scope: !131)
!159 = !DILocation(line: 49, column: 27, scope: !131)
!160 = !DILocation(line: 50, column: 39, scope: !131)
!161 = !DILocation(line: 50, column: 20, scope: !131)
!162 = !DILocation(line: 0, scope: !163)
!163 = !DILexicalBlockFile(scope: !153, file: !78, discriminator: 0)
!164 = !DILocation(line: 53, column: 18, scope: !153)
!165 = !DILocation(line: 53, column: 15, scope: !153)
!166 = !DILocation(line: 53, column: 14, scope: !153)
!167 = !DILocation(line: 53, column: 5, scope: !153)
!168 = !DILocation(line: 53, column: 11, scope: !153)
!169 = !DILocation(line: 0, scope: !153)
!170 = !DILocation(line: 54, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !153, file: !3, line: 53, column: 29)
!172 = !DILocation(line: 54, column: 15, scope: !171)
!173 = !DILocation(line: 54, column: 11, scope: !171)
!174 = !DILocation(line: 55, column: 13, scope: !171)
!175 = !DILocation(line: 55, column: 15, scope: !171)
!176 = !DILocation(line: 55, column: 11, scope: !171)
!177 = !DILocation(line: 56, column: 13, scope: !171)
!178 = !DILocation(line: 56, column: 15, scope: !171)
!179 = !DILocation(line: 56, column: 11, scope: !171)
!180 = !DILocation(line: 57, column: 5, scope: !153)
!181 = !DILocation(line: 0, scope: !182)
!182 = !DILexicalBlockFile(scope: !150, file: !78, discriminator: 0)
!183 = !DILocation(line: 63, column: 18, scope: !150)
!184 = !DILocation(line: 63, column: 15, scope: !150)
!185 = !DILocation(line: 63, column: 14, scope: !150)
!186 = !DILocation(line: 63, column: 5, scope: !150)
!187 = !DILocation(line: 63, column: 11, scope: !150)
!188 = !DILocation(line: 0, scope: !150)
!189 = !DILocation(line: 65, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !150, file: !3, line: 63, column: 29)
!191 = !DILocation(line: 65, column: 17, scope: !190)
!192 = !DILocation(line: 65, column: 12, scope: !190)
!193 = !DILocation(line: 66, column: 13, scope: !190)
!194 = !DILocation(line: 66, column: 15, scope: !190)
!195 = !DILocation(line: 66, column: 11, scope: !190)
!196 = !DILocation(line: 0, scope: !197)
!197 = !DILexicalBlockFile(scope: !190, file: !78, discriminator: 0)
!198 = !DILocation(line: 67, column: 28, scope: !190)
!199 = !DILocation(line: 67, column: 32, scope: !190)
!200 = !DILocation(line: 67, column: 38, scope: !190)
!201 = !DILocation(line: 67, column: 36, scope: !190)
!202 = !DILocation(line: 67, column: 18, scope: !190)
!203 = !DILocation(line: 69, column: 19, scope: !190)
!204 = !DILocation(line: 69, column: 13, scope: !190)
!205 = !DILocalVariable(name: "tmp", scope: !190, file: !3, line: 69, type: !4)
!206 = !DILocation(line: 70, column: 17, scope: !190)
!207 = !DILocation(line: 70, column: 11, scope: !190)
!208 = !DILocation(line: 72, column: 5, scope: !150)
!209 = !DILocation(line: 79, column: 18, scope: !131)
!210 = !DILocation(line: 79, column: 30, scope: !131)
!211 = !DILocation(line: 0, scope: !212)
!212 = !DILexicalBlockFile(scope: !147, file: !78, discriminator: 0)
!213 = !DILocation(line: 81, column: 18, scope: !147)
!214 = !DILocation(line: 81, column: 15, scope: !147)
!215 = !DILocation(line: 81, column: 14, scope: !147)
!216 = !DILocation(line: 81, column: 5, scope: !147)
!217 = !DILocation(line: 81, column: 11, scope: !147)
!218 = !DILocation(line: 0, scope: !147)
!219 = !DILocation(line: 82, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !147, file: !3, line: 81, column: 29)
!221 = !DILocation(line: 0, scope: !222)
!222 = !DILexicalBlockFile(scope: !220, file: !78, discriminator: 0)
!223 = !DILocation(line: 82, column: 35, scope: !220)
!224 = !DILocation(line: 82, column: 25, scope: !220)
!225 = !DILocation(line: 82, column: 16, scope: !220)
!226 = !DILocation(line: 83, column: 18, scope: !220)
!227 = !DILocation(line: 83, column: 36, scope: !220)
!228 = !DILocation(line: 83, column: 25, scope: !220)
!229 = !DILocation(line: 83, column: 16, scope: !220)
!230 = !DILocation(line: 85, column: 5, scope: !147)
!231 = !DILocation(line: 91, column: 8, scope: !131)
!232 = !DILocation(line: 92, column: 7, scope: !131)
!233 = !DILocation(line: 0, scope: !234)
!234 = !DILexicalBlockFile(scope: !144, file: !78, discriminator: 0)
!235 = !DILocation(line: 95, column: 15, scope: !144)
!236 = !DILocation(line: 95, column: 14, scope: !144)
!237 = !DILocation(line: 95, column: 5, scope: !144)
!238 = !DILocation(line: 95, column: 11, scope: !144)
!239 = !DILocation(line: 0, scope: !144)
!240 = !DILocation(line: 96, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !144, file: !3, line: 95, column: 23)
!242 = !DILocation(line: 96, column: 17, scope: !241)
!243 = !DILocation(line: 96, column: 15, scope: !241)
!244 = !DILocation(line: 96, column: 11, scope: !241)
!245 = !DILocation(line: 97, column: 14, scope: !241)
!246 = !DILocation(line: 97, column: 19, scope: !241)
!247 = !DILocation(line: 97, column: 17, scope: !241)
!248 = !DILocation(line: 97, column: 12, scope: !241)
!249 = !DILocation(line: 99, column: 5, scope: !144)
!250 = !DILocation(line: 101, column: 1, scope: !131)
!251 = distinct !DISubprogram(name: "do_all", linkageName: "$s9reduction6do_allyyF", scope: !2, file: !3, line: 108, type: !127, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!252 = !DILocalVariable(name: "localArr", scope: !253, file: !3, line: 110, type: !24)
!253 = distinct !DILexicalBlock(scope: !251, file: !3, line: 108, column: 15)
!254 = !DILocation(line: 110, column: 9, scope: !253)
!255 = !DILocalVariable(name: "i", scope: !256, file: !3, line: 118, type: !4)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 118, column: 5)
!257 = !DILocation(line: 118, column: 9, scope: !256)
!258 = !DILocalVariable(name: "i", scope: !259, file: !3, line: 113, type: !4)
!259 = distinct !DILexicalBlock(scope: !253, file: !3, line: 113, column: 5)
!260 = !DILocation(line: 113, column: 9, scope: !259)
!261 = !DILocation(line: 0, scope: !262)
!262 = !DILexicalBlockFile(scope: !253, file: !78, discriminator: 0)
!263 = !DILocation(line: 110, column: 39, scope: !253)
!264 = !DILocation(line: 110, column: 20, scope: !253)
!265 = !DILocation(line: 0, scope: !266)
!266 = !DILexicalBlockFile(scope: !259, file: !78, discriminator: 0)
!267 = !DILocation(line: 113, column: 18, scope: !259)
!268 = !DILocation(line: 113, column: 28, scope: !259)
!269 = !DILocation(line: 113, column: 33, scope: !259)
!270 = !DILocation(line: 113, column: 15, scope: !259)
!271 = !DILocation(line: 113, column: 14, scope: !259)
!272 = !DILocation(line: 113, column: 5, scope: !259)
!273 = !DILocation(line: 113, column: 11, scope: !259)
!274 = !DILocation(line: 0, scope: !259)
!275 = !DILocation(line: 114, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !259, file: !3, line: 113, column: 36)
!277 = !DILocation(line: 115, column: 5, scope: !259)
!278 = !DILocation(line: 0, scope: !279)
!279 = !DILexicalBlockFile(scope: !256, file: !78, discriminator: 0)
!280 = !DILocation(line: 118, column: 18, scope: !256)
!281 = !DILocation(line: 118, column: 27, scope: !256)
!282 = !DILocation(line: 118, column: 32, scope: !256)
!283 = !DILocation(line: 118, column: 15, scope: !256)
!284 = !DILocation(line: 118, column: 14, scope: !256)
!285 = !DILocation(line: 118, column: 5, scope: !256)
!286 = !DILocation(line: 118, column: 11, scope: !256)
!287 = !DILocation(line: 0, scope: !256)
!288 = !DILocation(line: 119, column: 26, scope: !289)
!289 = distinct !DILexicalBlock(scope: !256, file: !3, line: 118, column: 35)
!290 = !DILocation(line: 0, scope: !291)
!291 = !DILexicalBlockFile(scope: !289, file: !78, discriminator: 0)
!292 = !DILocation(line: 119, column: 12, scope: !289)
!293 = !DILocalVariable(name: "tmp", scope: !289, file: !3, line: 119, type: !4)
!294 = !DILocation(line: 120, column: 20, scope: !289)
!295 = !DILocation(line: 121, column: 21, scope: !289)
!296 = !DILocation(line: 123, column: 5, scope: !256)
!297 = !DILocation(line: 125, column: 1, scope: !253)
!298 = distinct !DISubprogram(name: "test", linkageName: "$s9reduction4testyyF", scope: !2, file: !3, line: 129, type: !127, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!299 = !DILocation(line: 130, column: 1, scope: !300)
!300 = distinct !DILexicalBlock(scope: !298, file: !3, line: 129, column: 13)
!301 = !DILocation(line: 131, column: 1, scope: !300)
!302 = !DILocation(line: 133, column: 1, scope: !300)

