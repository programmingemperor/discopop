; ModuleID = 'reduction.ll'
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

define protected i32 @main(i32, i8**) #0 !dbg !42 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %2 = bitcast i8** %1 to i8*
  store i64 100, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !47
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2aGSivp", i32 0, i32 0), align 8, !dbg !49
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0), align 8, !dbg !51
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !52
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0), align 8, !dbg !54
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction6arrSumSivp", i32 0, i32 0), align 8, !dbg !56
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction6arrMulSivp", i32 0, i32 0), align 8, !dbg !58
  store i64 25, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction1NSivp", i32 0, i32 0), align 8, !dbg !59
  %3 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %3), !dbg !61
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #2, !dbg !61
  %4 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !61
  call void @swift_endAccess([24 x i8]* %access-scratch) #2, !dbg !61
  %5 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %5), !dbg !61
  %6 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64 %4), !dbg !63
  store %Ts28__ContiguousArrayStorageBaseC* %6, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !63
  call swiftcc void @"$s9reductionAAyyF"(), !dbg !64
  call swiftcc void @"$s9reduction6do_allyyF"(), !dbg !66
  call void @loop_counter_output(), !dbg !66
  ret i32 0, !dbg !66
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

define hidden swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64) #0 !dbg !68 {
entry:
  %iterations.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %iterations.debug, metadata !71, metadata !DIExpression()), !dbg !72
  %1 = bitcast i64* %iterations.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %arr = alloca %TSa, align 8
  call void @llvm.dbg.declare(metadata %TSa* %arr, metadata !73, metadata !DIExpression()), !dbg !75
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
  call void @llvm.dbg.declare(metadata i64* %i.debug, metadata !76, metadata !DIExpression()), !dbg !78
  %9 = bitcast i64* %i.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = alloca %TSi, align 8
  store i64 %0, i64* %iterations.debug, align 8, !dbg !79
  %11 = bitcast %TSa* %arr to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11), !dbg !80
  %12 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$sS2ayxGycfCSi_Tg5"(), !dbg !83
  %arr._buffer = getelementptr inbounds %TSa, %TSa* %arr, i32 0, i32 0, !dbg !83
  %arr._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %arr._buffer, i32 0, i32 0, !dbg !83
  store %Ts28__ContiguousArrayStorageBaseC* %12, %Ts28__ContiguousArrayStorageBaseC** %arr._buffer._storage, align 8, !dbg !83
  %13 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %13), !dbg !84
  %14 = bitcast %TSNySiG* %4 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %14), !dbg !84
  br label %15, !dbg !86

; <label>:15:                                     ; preds = %entry
  %16 = icmp slt i64 %0, 0, !dbg !86
  %17 = xor i1 %16, true, !dbg !86
  %18 = call i1 @llvm.expect.i1(i1 %17, i1 true), !dbg !86
  br i1 %18, label %19, label %45, !dbg !86

; <label>:19:                                     ; preds = %15
  %20 = bitcast %TSi* %5 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20), !dbg !84
  %._value = getelementptr inbounds %TSi, %TSi* %5, i32 0, i32 0, !dbg !86
  store i64 0, i64* %._value, align 8, !dbg !86
  %21 = bitcast %TSi* %6 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21), !dbg !84
  %._value1 = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !86
  store i64 %0, i64* %._value1, align 8, !dbg !86
  %._value2 = getelementptr inbounds %TSi, %TSi* %5, i32 0, i32 0, !dbg !86
  %22 = load i64, i64* %._value2, align 8, !dbg !86
  %._value3 = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !86
  %23 = load i64, i64* %._value3, align 8, !dbg !86
  %24 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %22, i64 %23), !dbg !86
  %25 = extractvalue { i64, i64 } %24, 0, !dbg !86
  %26 = extractvalue { i64, i64 } %24, 1, !dbg !86
  %.lowerBound = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 0, !dbg !86
  %.lowerBound._value = getelementptr inbounds %TSi, %TSi* %.lowerBound, i32 0, i32 0, !dbg !86
  store i64 %25, i64* %.lowerBound._value, align 8, !dbg !86
  %.upperBound = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 1, !dbg !86
  %.upperBound._value = getelementptr inbounds %TSi, %TSi* %.upperBound, i32 0, i32 0, !dbg !86
  store i64 %26, i64* %.upperBound._value, align 8, !dbg !86
  %27 = bitcast %TSi* %6 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27), !dbg !86
  %28 = bitcast %TSi* %5 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28), !dbg !86
  %.lowerBound4 = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 0, !dbg !86
  %.lowerBound4._value = getelementptr inbounds %TSi, %TSi* %.lowerBound4, i32 0, i32 0, !dbg !86
  %29 = load i64, i64* %.lowerBound4._value, align 8, !dbg !86
  %.upperBound5 = getelementptr inbounds %TSNySiG, %TSNySiG* %4, i32 0, i32 1, !dbg !86
  %.upperBound5._value = getelementptr inbounds %TSi, %TSi* %.upperBound5, i32 0, i32 0, !dbg !86
  %30 = load i64, i64* %.upperBound5._value, align 8, !dbg !86
  %31 = bitcast %TSNySiG* %7 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %31), !dbg !84
  %.lowerBound6 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 0, !dbg !86
  %.lowerBound6._value = getelementptr inbounds %TSi, %TSi* %.lowerBound6, i32 0, i32 0, !dbg !86
  store i64 %29, i64* %.lowerBound6._value, align 8, !dbg !86
  %.upperBound7 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 1, !dbg !86
  %.upperBound7._value = getelementptr inbounds %TSi, %TSi* %.upperBound7, i32 0, i32 0, !dbg !86
  store i64 %30, i64* %.upperBound7._value, align 8, !dbg !86
  %.lowerBound8 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 0, !dbg !87
  %.lowerBound8._value = getelementptr inbounds %TSi, %TSi* %.lowerBound8, i32 0, i32 0, !dbg !87
  %32 = load i64, i64* %.lowerBound8._value, align 8, !dbg !87
  %.upperBound9 = getelementptr inbounds %TSNySiG, %TSNySiG* %7, i32 0, i32 1, !dbg !87
  %.upperBound9._value = getelementptr inbounds %TSi, %TSi* %.upperBound9, i32 0, i32 0, !dbg !87
  %33 = load i64, i64* %.upperBound9._value, align 8, !dbg !87
  %34 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %32, i64 %33), !dbg !87
  %35 = extractvalue { i64, i64, i64, i8 } %34, 0, !dbg !87
  %36 = extractvalue { i64, i64, i64, i8 } %34, 1, !dbg !87
  %37 = extractvalue { i64, i64, i64, i8 } %34, 2, !dbg !87
  %38 = extractvalue { i64, i64, i64, i8 } %34, 3, !dbg !87
  %39 = trunc i8 %38 to i1, !dbg !87
  %"$i$generator._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 0, !dbg !87
  %"$i$generator._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 0, !dbg !87
  %"$i$generator._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.lowerBound", i32 0, i32 0, !dbg !87
  store i64 %35, i64* %"$i$generator._elements.lowerBound._value", align 8, !dbg !87
  %"$i$generator._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 1, !dbg !87
  %"$i$generator._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.upperBound", i32 0, i32 0, !dbg !87
  store i64 %36, i64* %"$i$generator._elements.upperBound._value", align 8, !dbg !87
  %"$i$generator._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 1, !dbg !87
  %40 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position" to i64*, !dbg !87
  store i64 %37, i64* %40, align 8, !dbg !87
  %41 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position", i32 0, i32 1, !dbg !87
  %42 = bitcast [1 x i8]* %41 to i1*, !dbg !87
  store i1 %39, i1* %42, align 8, !dbg !87
  %43 = bitcast %TSNySiG* %7 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %43), !dbg !88
  %44 = bitcast %TSNySiG* %4 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %44), !dbg !88
  br label %46, !dbg !88

; <label>:45:                                     ; preds = %15
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !86
  unreachable, !dbg !84

; <label>:46:                                     ; preds = %62, %19
  %47 = bitcast %TSiSg* %8 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %47), !dbg !84
  %48 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator"), !dbg !89
  %49 = extractvalue { i64, i8 } %48, 0, !dbg !89
  %50 = extractvalue { i64, i8 } %48, 1, !dbg !89
  %51 = trunc i8 %50 to i1, !dbg !89
  %52 = bitcast %TSiSg* %8 to i64*, !dbg !89
  store i64 %49, i64* %52, align 8, !dbg !89
  %53 = getelementptr inbounds %TSiSg, %TSiSg* %8, i32 0, i32 1, !dbg !89
  %54 = bitcast [1 x i8]* %53 to i1*, !dbg !89
  store i1 %51, i1* %54, align 8, !dbg !89
  %55 = bitcast %TSiSg* %8 to i64*, !dbg !89
  %56 = load i64, i64* %55, align 8, !dbg !89
  %57 = getelementptr inbounds %TSiSg, %TSiSg* %8, i32 0, i32 1, !dbg !89
  %58 = bitcast [1 x i8]* %57 to i1*, !dbg !89
  %59 = load i1, i1* %58, align 8, !dbg !89
  %60 = bitcast %TSiSg* %8 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %60), !dbg !88
  br i1 %59, label %67, label %61, !dbg !88

; <label>:61:                                     ; preds = %46
  call void @incr_loop_counter(i32 1)
  br label %62, !dbg !88

; <label>:62:                                     ; preds = %61
  %63 = phi i64 [ %56, %61 ], !dbg !84
  store i64 %63, i64* %i.debug, align 8, !dbg !90
  %64 = bitcast %TSi* %10 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %64), !dbg !91
  %._value11 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !94
  store i64 %63, i64* %._value11, align 8, !dbg !94
  %._value12 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !95
  %65 = load i64, i64* %._value12, align 8, !dbg !95
  call swiftcc void @"$sSa6appendyyxnFSi_Tg5"(i64 %65, %TSa* nocapture swiftself dereferenceable(8) %arr), !dbg !95
  %66 = bitcast %TSi* %10 to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66), !dbg !96
  br label %46, !dbg !96

; <label>:67:                                     ; preds = %46
  %68 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %68), !dbg !80
  %arr._buffer10 = getelementptr inbounds %TSa, %TSa* %arr, i32 0, i32 0, !dbg !97
  %arr._buffer10._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %arr._buffer10, i32 0, i32 0, !dbg !97
  %69 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %arr._buffer10._storage, align 8, !dbg !97
  %70 = bitcast %Ts28__ContiguousArrayStorageBaseC* %69 to %swift.refcounted*, !dbg !97
  %71 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %70) #2, !dbg !97
  %72 = call %TSa* @"$sSaySiGWOh"(%TSa* %arr), !dbg !98
  %73 = bitcast %TSa* %arr to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %73), !dbg !98
  ret %Ts28__ContiguousArrayStorageBaseC* %69, !dbg !98
}

define hidden swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64) #0 !dbg !99 {
entry:
  %n.debug = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.debug, metadata !102, metadata !DIExpression()), !dbg !103
  %1 = bitcast i64* %n.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %fn = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %fn, metadata !104, metadata !DIExpression()), !dbg !106
  %2 = bitcast %TSi* %fn to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  store i64 %0, i64* %n.debug, align 8, !dbg !107
  %3 = bitcast %TSi* %fn to i8*, !dbg !108
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3), !dbg !108
  %fn._value = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !110
  store i64 0, i64* %fn._value, align 8, !dbg !110
  %4 = icmp eq i64 %0, 0, !dbg !111
  br i1 %4, label %5, label %6, !dbg !113

; <label>:5:                                      ; preds = %entry
  br label %8, !dbg !113

; <label>:6:                                      ; preds = %entry
  %7 = icmp eq i64 %0, 1, !dbg !113
  br label %8, !dbg !113

; <label>:8:                                      ; preds = %6, %5
  %9 = phi i1 [ %7, %6 ], [ true, %5 ], !dbg !113
  br i1 %9, label %10, label %11, !dbg !113

; <label>:10:                                     ; preds = %8
  %fn._value3 = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !114
  store i64 %0, i64* %fn._value3, align 8, !dbg !114
  br label %26, !dbg !116

; <label>:11:                                     ; preds = %8
  %12 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %0, i64 1), !dbg !117
  %13 = extractvalue { i64, i1 } %12, 0, !dbg !117
  %14 = extractvalue { i64, i1 } %12, 1, !dbg !117
  br i1 %14, label %29, label %15, !dbg !117

; <label>:15:                                     ; preds = %11
  %16 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 %13), !dbg !119
  %17 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %0, i64 2), !dbg !120
  %18 = extractvalue { i64, i1 } %17, 0, !dbg !120
  %19 = extractvalue { i64, i1 } %17, 1, !dbg !120
  br i1 %19, label %30, label %20, !dbg !120

; <label>:20:                                     ; preds = %15
  %21 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 %18), !dbg !121
  %22 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %16, i64 %21), !dbg !122
  %23 = extractvalue { i64, i1 } %22, 0, !dbg !122
  %24 = extractvalue { i64, i1 } %22, 1, !dbg !122
  br i1 %24, label %31, label %25, !dbg !122

; <label>:25:                                     ; preds = %20
  %fn._value1 = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !123
  store i64 %23, i64* %fn._value1, align 8, !dbg !123
  br label %26, !dbg !124

; <label>:26:                                     ; preds = %25, %10
  %fn._value2 = getelementptr inbounds %TSi, %TSi* %fn, i32 0, i32 0, !dbg !125
  %27 = load i64, i64* %fn._value2, align 8, !dbg !125
  %28 = bitcast %TSi* %fn to i8*, !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28), !dbg !126
  ret i64 %27, !dbg !126

; <label>:29:                                     ; preds = %11
  call void @llvm.trap(), !dbg !117
  unreachable, !dbg !117

; <label>:30:                                     ; preds = %15
  call void @llvm.trap(), !dbg !120
  unreachable, !dbg !120

; <label>:31:                                     ; preds = %20
  call void @llvm.trap(), !dbg !122
  unreachable, !dbg !122
}

define hidden swiftcc void @"$s9reductionAAyyF"() #0 !dbg !127 {
entry:
  %a = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %a, metadata !131, metadata !DIExpression()), !dbg !133
  %0 = bitcast %TSi* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %b = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %b, metadata !134, metadata !DIExpression()), !dbg !135
  %1 = bitcast %TSi* %b to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %c = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %c, metadata !136, metadata !DIExpression()), !dbg !137
  %2 = bitcast %TSi* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %localArr = alloca %TSa, align 8
  call void @llvm.dbg.declare(metadata %TSa* %localArr, metadata !138, metadata !DIExpression()), !dbg !139
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
  call void @llvm.dbg.declare(metadata %TSi* %arrSum, metadata !140, metadata !DIExpression()), !dbg !141
  %16 = bitcast %TSi* %arrSum to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %arrMul = alloca %TSi, align 8
  call void @llvm.dbg.declare(metadata %TSi* %arrMul, metadata !142, metadata !DIExpression()), !dbg !143
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
  call void @llvm.dbg.declare(metadata i64* %i.debug, metadata !144, metadata !DIExpression()), !dbg !146
  %30 = bitcast i64* %i.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %access-scratch56 = alloca [24 x i8], align 8
  %access-scratch57 = alloca [24 x i8], align 8
  %i.debug58 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug58, metadata !147, metadata !DIExpression()), !dbg !149
  %31 = bitcast i64* %i.debug58 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = alloca %TSi, align 8
  %access-scratch64 = alloca [24 x i8], align 8
  %33 = alloca %TSi, align 8
  %i.debug68 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug68, metadata !150, metadata !DIExpression()), !dbg !152
  %34 = bitcast i64* %i.debug68 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  %access-scratch69 = alloca [24 x i8], align 8
  %access-scratch70 = alloca [24 x i8], align 8
  %35 = alloca %TSi, align 8
  %access-scratch75 = alloca [24 x i8], align 8
  %access-scratch76 = alloca [24 x i8], align 8
  %i.debug79 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug79, metadata !153, metadata !DIExpression()), !dbg !155
  %36 = bitcast i64* %i.debug79 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 8, i1 false)
  %37 = bitcast %TSi* %a to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %37), !dbg !156
  %a._value = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !158
  store i64 0, i64* %a._value, align 8, !dbg !158
  %38 = bitcast %TSi* %b to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %38), !dbg !156
  %b._value = getelementptr inbounds %TSi, %TSi* %b, i32 0, i32 0, !dbg !159
  store i64 0, i64* %b._value, align 8, !dbg !159
  %39 = bitcast %TSi* %c to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %39), !dbg !156
  %c._value = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !160
  store i64 0, i64* %c._value, align 8, !dbg !160
  %40 = bitcast %TSa* %localArr to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %40), !dbg !156
  %41 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !161
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %41), !dbg !161
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #2, !dbg !161
  %42 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !161
  call void @swift_endAccess([24 x i8]* %access-scratch) #2, !dbg !161
  %43 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !161
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %43), !dbg !161
  %44 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64 %42), !dbg !162
  %localArr._buffer = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !162
  %localArr._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer, i32 0, i32 0, !dbg !162
  store %Ts28__ContiguousArrayStorageBaseC* %44, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer._storage, align 8, !dbg !162
  %45 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %45), !dbg !163
  %46 = bitcast %TSNySiG* %5 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %46), !dbg !163
  %47 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !165
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %47), !dbg !165
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch1, i64 32, i8* null) #2, !dbg !165
  %48 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !165
  call void @swift_endAccess([24 x i8]* %access-scratch1) #2, !dbg !165
  %49 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !165
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %49), !dbg !165
  br label %50, !dbg !166

; <label>:50:                                     ; preds = %entry
  %51 = icmp slt i64 %48, 0, !dbg !166
  %52 = xor i1 %51, true, !dbg !166
  %53 = call i1 @llvm.expect.i1(i1 %52, i1 true), !dbg !166
  br i1 %53, label %54, label %80, !dbg !166

; <label>:54:                                     ; preds = %50
  %55 = bitcast %TSi* %6 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %55), !dbg !163
  %._value = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !166
  store i64 0, i64* %._value, align 8, !dbg !166
  %56 = bitcast %TSi* %7 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %56), !dbg !163
  %._value2 = getelementptr inbounds %TSi, %TSi* %7, i32 0, i32 0, !dbg !166
  store i64 %48, i64* %._value2, align 8, !dbg !166
  %._value3 = getelementptr inbounds %TSi, %TSi* %6, i32 0, i32 0, !dbg !166
  %57 = load i64, i64* %._value3, align 8, !dbg !166
  %._value4 = getelementptr inbounds %TSi, %TSi* %7, i32 0, i32 0, !dbg !166
  %58 = load i64, i64* %._value4, align 8, !dbg !166
  %59 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %57, i64 %58), !dbg !166
  %60 = extractvalue { i64, i64 } %59, 0, !dbg !166
  %61 = extractvalue { i64, i64 } %59, 1, !dbg !166
  %.lowerBound = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !166
  %.lowerBound._value = getelementptr inbounds %TSi, %TSi* %.lowerBound, i32 0, i32 0, !dbg !166
  store i64 %60, i64* %.lowerBound._value, align 8, !dbg !166
  %.upperBound = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !166
  %.upperBound._value = getelementptr inbounds %TSi, %TSi* %.upperBound, i32 0, i32 0, !dbg !166
  store i64 %61, i64* %.upperBound._value, align 8, !dbg !166
  %62 = bitcast %TSi* %7 to i8*, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62), !dbg !166
  %63 = bitcast %TSi* %6 to i8*, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63), !dbg !166
  %.lowerBound5 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !166
  %.lowerBound5._value = getelementptr inbounds %TSi, %TSi* %.lowerBound5, i32 0, i32 0, !dbg !166
  %64 = load i64, i64* %.lowerBound5._value, align 8, !dbg !166
  %.upperBound6 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !166
  %.upperBound6._value = getelementptr inbounds %TSi, %TSi* %.upperBound6, i32 0, i32 0, !dbg !166
  %65 = load i64, i64* %.upperBound6._value, align 8, !dbg !166
  %66 = bitcast %TSNySiG* %8 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %66), !dbg !163
  %.lowerBound7 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !166
  %.lowerBound7._value = getelementptr inbounds %TSi, %TSi* %.lowerBound7, i32 0, i32 0, !dbg !166
  store i64 %64, i64* %.lowerBound7._value, align 8, !dbg !166
  %.upperBound8 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !166
  %.upperBound8._value = getelementptr inbounds %TSi, %TSi* %.upperBound8, i32 0, i32 0, !dbg !166
  store i64 %65, i64* %.upperBound8._value, align 8, !dbg !166
  %.lowerBound9 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !167
  %.lowerBound9._value = getelementptr inbounds %TSi, %TSi* %.lowerBound9, i32 0, i32 0, !dbg !167
  %67 = load i64, i64* %.lowerBound9._value, align 8, !dbg !167
  %.upperBound10 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !167
  %.upperBound10._value = getelementptr inbounds %TSi, %TSi* %.upperBound10, i32 0, i32 0, !dbg !167
  %68 = load i64, i64* %.upperBound10._value, align 8, !dbg !167
  %69 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %67, i64 %68), !dbg !167
  %70 = extractvalue { i64, i64, i64, i8 } %69, 0, !dbg !167
  %71 = extractvalue { i64, i64, i64, i8 } %69, 1, !dbg !167
  %72 = extractvalue { i64, i64, i64, i8 } %69, 2, !dbg !167
  %73 = extractvalue { i64, i64, i64, i8 } %69, 3, !dbg !167
  %74 = trunc i8 %73 to i1, !dbg !167
  %"$i$generator._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 0, !dbg !167
  %"$i$generator._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 0, !dbg !167
  %"$i$generator._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.lowerBound", i32 0, i32 0, !dbg !167
  store i64 %70, i64* %"$i$generator._elements.lowerBound._value", align 8, !dbg !167
  %"$i$generator._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 1, !dbg !167
  %"$i$generator._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.upperBound", i32 0, i32 0, !dbg !167
  store i64 %71, i64* %"$i$generator._elements.upperBound._value", align 8, !dbg !167
  %"$i$generator._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 1, !dbg !167
  %75 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position" to i64*, !dbg !167
  store i64 %72, i64* %75, align 8, !dbg !167
  %76 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position", i32 0, i32 1, !dbg !167
  %77 = bitcast [1 x i8]* %76 to i1*, !dbg !167
  store i1 %74, i1* %77, align 8, !dbg !167
  %78 = bitcast %TSNySiG* %8 to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %78), !dbg !168
  %79 = bitcast %TSNySiG* %5 to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %79), !dbg !168
  br label %81, !dbg !168

; <label>:80:                                     ; preds = %50
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !166
  unreachable, !dbg !163

; <label>:81:                                     ; preds = %118, %54
  %82 = bitcast %TSiSg* %9 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %82), !dbg !163
  %83 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator"), !dbg !169
  %84 = extractvalue { i64, i8 } %83, 0, !dbg !169
  %85 = extractvalue { i64, i8 } %83, 1, !dbg !169
  %86 = trunc i8 %85 to i1, !dbg !169
  %87 = bitcast %TSiSg* %9 to i64*, !dbg !169
  store i64 %84, i64* %87, align 8, !dbg !169
  %88 = getelementptr inbounds %TSiSg, %TSiSg* %9, i32 0, i32 1, !dbg !169
  %89 = bitcast [1 x i8]* %88 to i1*, !dbg !169
  store i1 %86, i1* %89, align 8, !dbg !169
  %90 = bitcast %TSiSg* %9 to i64*, !dbg !169
  %91 = load i64, i64* %90, align 8, !dbg !169
  %92 = getelementptr inbounds %TSiSg, %TSiSg* %9, i32 0, i32 1, !dbg !169
  %93 = bitcast [1 x i8]* %92 to i1*, !dbg !169
  %94 = load i1, i1* %93, align 8, !dbg !169
  %95 = bitcast %TSiSg* %9 to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %95), !dbg !168
  br i1 %94, label %120, label %96, !dbg !168

; <label>:96:                                     ; preds = %81
  call void @incr_loop_counter(i32 5)
  br label %97, !dbg !168

; <label>:97:                                     ; preds = %96
  %98 = phi i64 [ %91, %96 ], !dbg !163
  store i64 %98, i64* %i.debug79, align 8, !dbg !170
  %a._value80 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !171
  %99 = ptrtoint i64* %a._value80 to i64
  call void @add_ptr_instr_rec(i32 53, i64 9, i32 0, i64 %99)
  %100 = load i64, i64* %a._value80, align 8, !dbg !171
  %101 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %100, i64 1), !dbg !173
  %102 = extractvalue { i64, i1 } %101, 0, !dbg !173
  %103 = extractvalue { i64, i1 } %101, 1, !dbg !173
  br i1 %103, label %386, label %104, !dbg !173

; <label>:104:                                    ; preds = %97
  %a._value81 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !174
  %105 = ptrtoint i64* %a._value81 to i64
  call void @add_ptr_instr_rec(i32 53, i64 9, i32 1, i64 %105)
  store i64 %102, i64* %a._value81, align 8, !dbg !174
  %b._value82 = getelementptr inbounds %TSi, %TSi* %b, i32 0, i32 0, !dbg !175
  %106 = ptrtoint i64* %b._value82 to i64
  call void @add_ptr_instr_rec(i32 53, i64 10, i32 0, i64 %106)
  %107 = load i64, i64* %b._value82, align 8, !dbg !175
  %108 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %107, i64 5), !dbg !176
  %109 = extractvalue { i64, i1 } %108, 0, !dbg !176
  %110 = extractvalue { i64, i1 } %108, 1, !dbg !176
  br i1 %110, label %387, label %111, !dbg !176

; <label>:111:                                    ; preds = %104
  %b._value83 = getelementptr inbounds %TSi, %TSi* %b, i32 0, i32 0, !dbg !177
  %112 = ptrtoint i64* %b._value83 to i64
  call void @add_ptr_instr_rec(i32 53, i64 10, i32 1, i64 %112)
  store i64 %109, i64* %b._value83, align 8, !dbg !177
  %c._value84 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !178
  %113 = ptrtoint i64* %c._value84 to i64
  call void @add_ptr_instr_rec(i32 53, i64 11, i32 0, i64 %113)
  %114 = load i64, i64* %c._value84, align 8, !dbg !178
  %115 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %114, i64 2), !dbg !179
  %116 = extractvalue { i64, i1 } %115, 0, !dbg !179
  %117 = extractvalue { i64, i1 } %115, 1, !dbg !179
  br i1 %117, label %388, label %118, !dbg !179

; <label>:118:                                    ; preds = %111
  %c._value85 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !180
  %119 = ptrtoint i64* %c._value85 to i64
  call void @add_ptr_instr_rec(i32 53, i64 11, i32 1, i64 %119)
  store i64 %116, i64* %c._value85, align 8, !dbg !180
  br label %81, !dbg !181

; <label>:120:                                    ; preds = %81
  %121 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %121), !dbg !156
  %122 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %122), !dbg !182
  %123 = bitcast %TSNySiG* %11 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %123), !dbg !182
  %124 = bitcast [24 x i8]* %access-scratch12 to i8*, !dbg !184
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %124), !dbg !184
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch12, i64 32, i8* null) #2, !dbg !184
  %125 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !184
  call void @swift_endAccess([24 x i8]* %access-scratch12) #2, !dbg !184
  %126 = bitcast [24 x i8]* %access-scratch12 to i8*, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %126), !dbg !184
  br label %127, !dbg !185

; <label>:127:                                    ; preds = %120
  %128 = icmp slt i64 %125, 0, !dbg !185
  %129 = xor i1 %128, true, !dbg !185
  %130 = call i1 @llvm.expect.i1(i1 %129, i1 true), !dbg !185
  br i1 %130, label %131, label %157, !dbg !185

; <label>:131:                                    ; preds = %127
  %132 = bitcast %TSi* %12 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %132), !dbg !182
  %._value13 = getelementptr inbounds %TSi, %TSi* %12, i32 0, i32 0, !dbg !185
  store i64 0, i64* %._value13, align 8, !dbg !185
  %133 = bitcast %TSi* %13 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %133), !dbg !182
  %._value14 = getelementptr inbounds %TSi, %TSi* %13, i32 0, i32 0, !dbg !185
  store i64 %125, i64* %._value14, align 8, !dbg !185
  %._value15 = getelementptr inbounds %TSi, %TSi* %12, i32 0, i32 0, !dbg !185
  %134 = load i64, i64* %._value15, align 8, !dbg !185
  %._value16 = getelementptr inbounds %TSi, %TSi* %13, i32 0, i32 0, !dbg !185
  %135 = load i64, i64* %._value16, align 8, !dbg !185
  %136 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %134, i64 %135), !dbg !185
  %137 = extractvalue { i64, i64 } %136, 0, !dbg !185
  %138 = extractvalue { i64, i64 } %136, 1, !dbg !185
  %.lowerBound17 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !185
  %.lowerBound17._value = getelementptr inbounds %TSi, %TSi* %.lowerBound17, i32 0, i32 0, !dbg !185
  store i64 %137, i64* %.lowerBound17._value, align 8, !dbg !185
  %.upperBound18 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !185
  %.upperBound18._value = getelementptr inbounds %TSi, %TSi* %.upperBound18, i32 0, i32 0, !dbg !185
  store i64 %138, i64* %.upperBound18._value, align 8, !dbg !185
  %139 = bitcast %TSi* %13 to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %139), !dbg !185
  %140 = bitcast %TSi* %12 to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %140), !dbg !185
  %.lowerBound19 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !185
  %.lowerBound19._value = getelementptr inbounds %TSi, %TSi* %.lowerBound19, i32 0, i32 0, !dbg !185
  %141 = load i64, i64* %.lowerBound19._value, align 8, !dbg !185
  %.upperBound20 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !185
  %.upperBound20._value = getelementptr inbounds %TSi, %TSi* %.upperBound20, i32 0, i32 0, !dbg !185
  %142 = load i64, i64* %.upperBound20._value, align 8, !dbg !185
  %143 = bitcast %TSNySiG* %14 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %143), !dbg !182
  %.lowerBound21 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 0, !dbg !185
  %.lowerBound21._value = getelementptr inbounds %TSi, %TSi* %.lowerBound21, i32 0, i32 0, !dbg !185
  store i64 %141, i64* %.lowerBound21._value, align 8, !dbg !185
  %.upperBound22 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 1, !dbg !185
  %.upperBound22._value = getelementptr inbounds %TSi, %TSi* %.upperBound22, i32 0, i32 0, !dbg !185
  store i64 %142, i64* %.upperBound22._value, align 8, !dbg !185
  %.lowerBound23 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 0, !dbg !186
  %.lowerBound23._value = getelementptr inbounds %TSi, %TSi* %.lowerBound23, i32 0, i32 0, !dbg !186
  %144 = load i64, i64* %.lowerBound23._value, align 8, !dbg !186
  %.upperBound24 = getelementptr inbounds %TSNySiG, %TSNySiG* %14, i32 0, i32 1, !dbg !186
  %.upperBound24._value = getelementptr inbounds %TSi, %TSi* %.upperBound24, i32 0, i32 0, !dbg !186
  %145 = load i64, i64* %.upperBound24._value, align 8, !dbg !186
  %146 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %144, i64 %145), !dbg !186
  %147 = extractvalue { i64, i64, i64, i8 } %146, 0, !dbg !186
  %148 = extractvalue { i64, i64, i64, i8 } %146, 1, !dbg !186
  %149 = extractvalue { i64, i64, i64, i8 } %146, 2, !dbg !186
  %150 = extractvalue { i64, i64, i64, i8 } %146, 3, !dbg !186
  %151 = trunc i8 %150 to i1, !dbg !186
  %"$i$generator11._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 0, !dbg !186
  %"$i$generator11._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 0, !dbg !186
  %"$i$generator11._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.lowerBound", i32 0, i32 0, !dbg !186
  store i64 %147, i64* %"$i$generator11._elements.lowerBound._value", align 8, !dbg !186
  %"$i$generator11._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 1, !dbg !186
  %"$i$generator11._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.upperBound", i32 0, i32 0, !dbg !186
  store i64 %148, i64* %"$i$generator11._elements.upperBound._value", align 8, !dbg !186
  %"$i$generator11._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 1, !dbg !186
  %152 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position" to i64*, !dbg !186
  store i64 %149, i64* %152, align 8, !dbg !186
  %153 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position", i32 0, i32 1, !dbg !186
  %154 = bitcast [1 x i8]* %153 to i1*, !dbg !186
  store i1 %151, i1* %154, align 8, !dbg !186
  %155 = bitcast %TSNySiG* %14 to i8*, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %155), !dbg !187
  %156 = bitcast %TSNySiG* %11 to i8*, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %156), !dbg !187
  br label %158, !dbg !187

; <label>:157:                                    ; preds = %127
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !185
  unreachable, !dbg !182

; <label>:158:                                    ; preds = %214, %131
  %159 = bitcast %TSiSg* %15 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %159), !dbg !182
  %160 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator11"), !dbg !188
  %161 = extractvalue { i64, i8 } %160, 0, !dbg !188
  %162 = extractvalue { i64, i8 } %160, 1, !dbg !188
  %163 = trunc i8 %162 to i1, !dbg !188
  %164 = bitcast %TSiSg* %15 to i64*, !dbg !188
  store i64 %161, i64* %164, align 8, !dbg !188
  %165 = getelementptr inbounds %TSiSg, %TSiSg* %15, i32 0, i32 1, !dbg !188
  %166 = bitcast [1 x i8]* %165 to i1*, !dbg !188
  store i1 %163, i1* %166, align 8, !dbg !188
  %167 = bitcast %TSiSg* %15 to i64*, !dbg !188
  %168 = load i64, i64* %167, align 8, !dbg !188
  %169 = getelementptr inbounds %TSiSg, %TSiSg* %15, i32 0, i32 1, !dbg !188
  %170 = bitcast [1 x i8]* %169 to i1*, !dbg !188
  %171 = load i1, i1* %170, align 8, !dbg !188
  %172 = bitcast %TSiSg* %15 to i8*, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %172), !dbg !187
  br i1 %171, label %216, label %173, !dbg !187

; <label>:173:                                    ; preds = %158
  call void @incr_loop_counter(i32 4)
  br label %174, !dbg !187

; <label>:174:                                    ; preds = %173
  %175 = phi i64 [ %168, %173 ], !dbg !182
  store i64 %175, i64* %i.debug68, align 8, !dbg !189
  %176 = bitcast [24 x i8]* %access-scratch69 to i8*, !dbg !190
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %176), !dbg !190
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2bGSivp" to i8*), [24 x i8]* %access-scratch69, i64 32, i8* null) #2, !dbg !190
  call void @add_instr_rec(i32 63, i64 5, i32 0)
  %177 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0), align 8, !dbg !190
  call void @swift_endAccess([24 x i8]* %access-scratch69) #2, !dbg !190
  %178 = bitcast [24 x i8]* %access-scratch69 to i8*, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %178), !dbg !190
  %179 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %177, i64 5), !dbg !192
  %180 = extractvalue { i64, i1 } %179, 0, !dbg !192
  %181 = extractvalue { i64, i1 } %179, 1, !dbg !192
  br i1 %181, label %381, label %182, !dbg !192

; <label>:182:                                    ; preds = %174
  %183 = bitcast [24 x i8]* %access-scratch70 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %183), !dbg !193
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2bGSivp" to i8*), [24 x i8]* %access-scratch70, i64 33, i8* null) #2, !dbg !193
  call void @add_instr_rec(i32 63, i64 5, i32 1)
  store i64 %180, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2bGSivp", i32 0, i32 0), align 8, !dbg !193
  call void @swift_endAccess([24 x i8]* %access-scratch70) #2, !dbg !193
  %184 = bitcast [24 x i8]* %access-scratch70 to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %184), !dbg !193
  %c._value71 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !194
  %185 = ptrtoint i64* %c._value71 to i64
  call void @add_ptr_instr_rec(i32 63, i64 8, i32 0, i64 %185)
  %186 = load i64, i64* %c._value71, align 8, !dbg !194
  %187 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %186, i64 %175), !dbg !195
  %188 = extractvalue { i64, i1 } %187, 0, !dbg !195
  %189 = extractvalue { i64, i1 } %187, 1, !dbg !195
  br i1 %189, label %382, label %190, !dbg !195

; <label>:190:                                    ; preds = %182
  %c._value72 = getelementptr inbounds %TSi, %TSi* %c, i32 0, i32 0, !dbg !196
  %191 = ptrtoint i64* %c._value72 to i64
  call void @add_ptr_instr_rec(i32 63, i64 8, i32 1, i64 %191)
  store i64 %188, i64* %c._value72, align 8, !dbg !196
  %192 = bitcast %TSi* %35 to i8*, !dbg !197
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192), !dbg !197
  %193 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %175, %Ts28__ContiguousArrayStorageBaseC* %44), !dbg !199
  %._value73 = getelementptr inbounds %TSi, %TSi* %35, i32 0, i32 0, !dbg !199
  store i64 %193, i64* %._value73, align 8, !dbg !199
  %._value74 = getelementptr inbounds %TSi, %TSi* %35, i32 0, i32 0, !dbg !199
  %194 = load i64, i64* %._value74, align 8, !dbg !199
  %195 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %194, i64 3), !dbg !200
  %196 = extractvalue { i64, i1 } %195, 0, !dbg !200
  %197 = extractvalue { i64, i1 } %195, 1, !dbg !200
  br i1 %197, label %383, label %198, !dbg !200

; <label>:198:                                    ; preds = %190
  %199 = bitcast %TSi* %35 to i8*, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %199), !dbg !200
  %200 = bitcast [24 x i8]* %access-scratch75 to i8*, !dbg !201
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %200), !dbg !201
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction8localResSivp" to i8*), [24 x i8]* %access-scratch75, i64 32, i8* null) #2, !dbg !201
  call void @add_instr_rec(i32 63, i64 6, i32 0)
  %201 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0), align 8, !dbg !201
  call void @swift_endAccess([24 x i8]* %access-scratch75) #2, !dbg !201
  %202 = bitcast [24 x i8]* %access-scratch75 to i8*, !dbg !201
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %202), !dbg !201
  %203 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %196, i64 %201), !dbg !202
  %204 = extractvalue { i64, i1 } %203, 0, !dbg !202
  %205 = extractvalue { i64, i1 } %203, 1, !dbg !202
  br i1 %205, label %384, label %206, !dbg !202

; <label>:206:                                    ; preds = %198
  %207 = bitcast [24 x i8]* %access-scratch76 to i8*, !dbg !203
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %207), !dbg !203
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction8localResSivp" to i8*), [24 x i8]* %access-scratch76, i64 33, i8* null) #2, !dbg !203
  call void @add_instr_rec(i32 63, i64 6, i32 1)
  store i64 %204, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction8localResSivp", i32 0, i32 0), align 8, !dbg !203
  call void @swift_endAccess([24 x i8]* %access-scratch76) #2, !dbg !203
  %208 = bitcast [24 x i8]* %access-scratch76 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %208), !dbg !203
  %a._value77 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !204
  %209 = ptrtoint i64* %a._value77 to i64
  call void @add_ptr_instr_rec(i32 63, i64 7, i32 0, i64 %209)
  %210 = load i64, i64* %a._value77, align 8, !dbg !204
  call void asm sideeffect "", "r"(i64 %210), !dbg !197
  call void @llvm.dbg.value(metadata i64 %210, metadata !205, metadata !DIExpression()), !dbg !206
  %211 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %210, i64 %175), !dbg !207
  %212 = extractvalue { i64, i1 } %211, 0, !dbg !207
  %213 = extractvalue { i64, i1 } %211, 1, !dbg !207
  br i1 %213, label %385, label %214, !dbg !207

; <label>:214:                                    ; preds = %206
  call void @llvm.dbg.value(metadata i64 %210, metadata !205, metadata !DIExpression()), !dbg !206
  %a._value78 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !208
  %215 = ptrtoint i64* %a._value78 to i64
  call void @add_ptr_instr_rec(i32 63, i64 7, i32 1, i64 %215)
  store i64 %212, i64* %a._value78, align 8, !dbg !208
  call void asm sideeffect "", "r"(i64 %210), !dbg !209
  br label %158, !dbg !209

; <label>:216:                                    ; preds = %158
  %217 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %217), !dbg !156
  %218 = bitcast %TSi* %arrSum to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %218), !dbg !156
  %arrSum._value = getelementptr inbounds %TSi, %TSi* %arrSum, i32 0, i32 0, !dbg !210
  store i64 0, i64* %arrSum._value, align 8, !dbg !210
  %219 = bitcast %TSi* %arrMul to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %219), !dbg !156
  %arrMul._value = getelementptr inbounds %TSi, %TSi* %arrMul, i32 0, i32 0, !dbg !211
  store i64 0, i64* %arrMul._value, align 8, !dbg !211
  %220 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator25" to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %220), !dbg !212
  %221 = bitcast %TSNySiG* %19 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %221), !dbg !212
  %222 = bitcast [24 x i8]* %access-scratch26 to i8*, !dbg !214
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %222), !dbg !214
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch26, i64 32, i8* null) #2, !dbg !214
  %223 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !214
  call void @swift_endAccess([24 x i8]* %access-scratch26) #2, !dbg !214
  %224 = bitcast [24 x i8]* %access-scratch26 to i8*, !dbg !214
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %224), !dbg !214
  br label %225, !dbg !215

; <label>:225:                                    ; preds = %216
  %226 = icmp slt i64 %223, 0, !dbg !215
  %227 = xor i1 %226, true, !dbg !215
  %228 = call i1 @llvm.expect.i1(i1 %227, i1 true), !dbg !215
  br i1 %228, label %229, label %255, !dbg !215

; <label>:229:                                    ; preds = %225
  %230 = bitcast %TSi* %20 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %230), !dbg !212
  %._value27 = getelementptr inbounds %TSi, %TSi* %20, i32 0, i32 0, !dbg !215
  store i64 0, i64* %._value27, align 8, !dbg !215
  %231 = bitcast %TSi* %21 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %231), !dbg !212
  %._value28 = getelementptr inbounds %TSi, %TSi* %21, i32 0, i32 0, !dbg !215
  store i64 %223, i64* %._value28, align 8, !dbg !215
  %._value29 = getelementptr inbounds %TSi, %TSi* %20, i32 0, i32 0, !dbg !215
  %232 = load i64, i64* %._value29, align 8, !dbg !215
  %._value30 = getelementptr inbounds %TSi, %TSi* %21, i32 0, i32 0, !dbg !215
  %233 = load i64, i64* %._value30, align 8, !dbg !215
  %234 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %232, i64 %233), !dbg !215
  %235 = extractvalue { i64, i64 } %234, 0, !dbg !215
  %236 = extractvalue { i64, i64 } %234, 1, !dbg !215
  %.lowerBound31 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 0, !dbg !215
  %.lowerBound31._value = getelementptr inbounds %TSi, %TSi* %.lowerBound31, i32 0, i32 0, !dbg !215
  store i64 %235, i64* %.lowerBound31._value, align 8, !dbg !215
  %.upperBound32 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 1, !dbg !215
  %.upperBound32._value = getelementptr inbounds %TSi, %TSi* %.upperBound32, i32 0, i32 0, !dbg !215
  store i64 %236, i64* %.upperBound32._value, align 8, !dbg !215
  %237 = bitcast %TSi* %21 to i8*, !dbg !215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %237), !dbg !215
  %238 = bitcast %TSi* %20 to i8*, !dbg !215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238), !dbg !215
  %.lowerBound33 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 0, !dbg !215
  %.lowerBound33._value = getelementptr inbounds %TSi, %TSi* %.lowerBound33, i32 0, i32 0, !dbg !215
  %239 = load i64, i64* %.lowerBound33._value, align 8, !dbg !215
  %.upperBound34 = getelementptr inbounds %TSNySiG, %TSNySiG* %19, i32 0, i32 1, !dbg !215
  %.upperBound34._value = getelementptr inbounds %TSi, %TSi* %.upperBound34, i32 0, i32 0, !dbg !215
  %240 = load i64, i64* %.upperBound34._value, align 8, !dbg !215
  %241 = bitcast %TSNySiG* %22 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %241), !dbg !212
  %.lowerBound35 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 0, !dbg !215
  %.lowerBound35._value = getelementptr inbounds %TSi, %TSi* %.lowerBound35, i32 0, i32 0, !dbg !215
  store i64 %239, i64* %.lowerBound35._value, align 8, !dbg !215
  %.upperBound36 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 1, !dbg !215
  %.upperBound36._value = getelementptr inbounds %TSi, %TSi* %.upperBound36, i32 0, i32 0, !dbg !215
  store i64 %240, i64* %.upperBound36._value, align 8, !dbg !215
  %.lowerBound37 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 0, !dbg !216
  %.lowerBound37._value = getelementptr inbounds %TSi, %TSi* %.lowerBound37, i32 0, i32 0, !dbg !216
  %242 = load i64, i64* %.lowerBound37._value, align 8, !dbg !216
  %.upperBound38 = getelementptr inbounds %TSNySiG, %TSNySiG* %22, i32 0, i32 1, !dbg !216
  %.upperBound38._value = getelementptr inbounds %TSi, %TSi* %.upperBound38, i32 0, i32 0, !dbg !216
  %243 = load i64, i64* %.upperBound38._value, align 8, !dbg !216
  %244 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %242, i64 %243), !dbg !216
  %245 = extractvalue { i64, i64, i64, i8 } %244, 0, !dbg !216
  %246 = extractvalue { i64, i64, i64, i8 } %244, 1, !dbg !216
  %247 = extractvalue { i64, i64, i64, i8 } %244, 2, !dbg !216
  %248 = extractvalue { i64, i64, i64, i8 } %244, 3, !dbg !216
  %249 = trunc i8 %248 to i1, !dbg !216
  %"$i$generator25._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator25", i32 0, i32 0, !dbg !216
  %"$i$generator25._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator25._elements", i32 0, i32 0, !dbg !216
  %"$i$generator25._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator25._elements.lowerBound", i32 0, i32 0, !dbg !216
  store i64 %245, i64* %"$i$generator25._elements.lowerBound._value", align 8, !dbg !216
  %"$i$generator25._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator25._elements", i32 0, i32 1, !dbg !216
  %"$i$generator25._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator25._elements.upperBound", i32 0, i32 0, !dbg !216
  store i64 %246, i64* %"$i$generator25._elements.upperBound._value", align 8, !dbg !216
  %"$i$generator25._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator25", i32 0, i32 1, !dbg !216
  %250 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator25._position" to i64*, !dbg !216
  store i64 %247, i64* %250, align 8, !dbg !216
  %251 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator25._position", i32 0, i32 1, !dbg !216
  %252 = bitcast [1 x i8]* %251 to i1*, !dbg !216
  store i1 %249, i1* %252, align 8, !dbg !216
  %253 = bitcast %TSNySiG* %22 to i8*, !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %253), !dbg !217
  %254 = bitcast %TSNySiG* %19 to i8*, !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %254), !dbg !217
  br label %256, !dbg !217

; <label>:255:                                    ; preds = %225
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !215
  unreachable, !dbg !212

; <label>:256:                                    ; preds = %296, %229
  %257 = bitcast %TSiSg* %23 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %257), !dbg !212
  %258 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator25"), !dbg !218
  %259 = extractvalue { i64, i8 } %258, 0, !dbg !218
  %260 = extractvalue { i64, i8 } %258, 1, !dbg !218
  %261 = trunc i8 %260 to i1, !dbg !218
  %262 = bitcast %TSiSg* %23 to i64*, !dbg !218
  store i64 %259, i64* %262, align 8, !dbg !218
  %263 = getelementptr inbounds %TSiSg, %TSiSg* %23, i32 0, i32 1, !dbg !218
  %264 = bitcast [1 x i8]* %263 to i1*, !dbg !218
  store i1 %261, i1* %264, align 8, !dbg !218
  %265 = bitcast %TSiSg* %23 to i64*, !dbg !218
  %266 = load i64, i64* %265, align 8, !dbg !218
  %267 = getelementptr inbounds %TSiSg, %TSiSg* %23, i32 0, i32 1, !dbg !218
  %268 = bitcast [1 x i8]* %267 to i1*, !dbg !218
  %269 = load i1, i1* %268, align 8, !dbg !218
  %270 = bitcast %TSiSg* %23 to i8*, !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %270), !dbg !217
  br i1 %269, label %299, label %271, !dbg !217

; <label>:271:                                    ; preds = %256
  call void @incr_loop_counter(i32 3)
  br label %272, !dbg !217

; <label>:272:                                    ; preds = %271
  %273 = phi i64 [ %266, %271 ], !dbg !212
  store i64 %273, i64* %i.debug58, align 8, !dbg !219
  %arrSum._value59 = getelementptr inbounds %TSi, %TSi* %arrSum, i32 0, i32 0, !dbg !220
  %274 = ptrtoint i64* %arrSum._value59 to i64
  call void @add_ptr_instr_rec(i32 81, i64 3, i32 0, i64 %274)
  %275 = load i64, i64* %arrSum._value59, align 8, !dbg !220
  %276 = bitcast %TSi* %32 to i8*, !dbg !222
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %276), !dbg !222
  %277 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %273, %Ts28__ContiguousArrayStorageBaseC* %44), !dbg !224
  %._value60 = getelementptr inbounds %TSi, %TSi* %32, i32 0, i32 0, !dbg !224
  store i64 %277, i64* %._value60, align 8, !dbg !224
  %._value61 = getelementptr inbounds %TSi, %TSi* %32, i32 0, i32 0, !dbg !224
  %278 = load i64, i64* %._value61, align 8, !dbg !224
  %279 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %275, i64 %278), !dbg !225
  %280 = extractvalue { i64, i1 } %279, 0, !dbg !225
  %281 = extractvalue { i64, i1 } %279, 1, !dbg !225
  br i1 %281, label %379, label %282, !dbg !225

; <label>:282:                                    ; preds = %272
  %283 = bitcast %TSi* %32 to i8*, !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %283), !dbg !225
  %arrSum._value62 = getelementptr inbounds %TSi, %TSi* %arrSum, i32 0, i32 0, !dbg !226
  %284 = ptrtoint i64* %arrSum._value62 to i64
  call void @add_ptr_instr_rec(i32 81, i64 3, i32 1, i64 %284)
  store i64 %280, i64* %arrSum._value62, align 8, !dbg !226
  %arrMul._value63 = getelementptr inbounds %TSi, %TSi* %arrMul, i32 0, i32 0, !dbg !227
  %285 = ptrtoint i64* %arrMul._value63 to i64
  call void @add_ptr_instr_rec(i32 81, i64 4, i32 0, i64 %285)
  %286 = load i64, i64* %arrMul._value63, align 8, !dbg !227
  %287 = bitcast [24 x i8]* %access-scratch64 to i8*, !dbg !228
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %287), !dbg !228
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch64, i64 32, i8* null) #2, !dbg !228
  %288 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !228
  %289 = bitcast %TSi* %33 to i8*, !dbg !222
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %289), !dbg !222
  %290 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %273, %Ts28__ContiguousArrayStorageBaseC* %288), !dbg !228
  %._value65 = getelementptr inbounds %TSi, %TSi* %33, i32 0, i32 0, !dbg !228
  store i64 %290, i64* %._value65, align 8, !dbg !228
  %._value66 = getelementptr inbounds %TSi, %TSi* %33, i32 0, i32 0, !dbg !228
  %291 = load i64, i64* %._value66, align 8, !dbg !228
  call void @swift_endAccess([24 x i8]* %access-scratch64) #2, !dbg !228
  %292 = bitcast [24 x i8]* %access-scratch64 to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %292), !dbg !228
  %293 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %286, i64 %291), !dbg !229
  %294 = extractvalue { i64, i1 } %293, 0, !dbg !229
  %295 = extractvalue { i64, i1 } %293, 1, !dbg !229
  br i1 %295, label %380, label %296, !dbg !229

; <label>:296:                                    ; preds = %282
  %297 = bitcast %TSi* %33 to i8*, !dbg !229
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %297), !dbg !229
  %arrMul._value67 = getelementptr inbounds %TSi, %TSi* %arrMul, i32 0, i32 0, !dbg !230
  %298 = ptrtoint i64* %arrMul._value67 to i64
  call void @add_ptr_instr_rec(i32 81, i64 4, i32 1, i64 %298)
  store i64 %294, i64* %arrMul._value67, align 8, !dbg !230
  br label %256, !dbg !231

; <label>:299:                                    ; preds = %256
  %300 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator25" to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %300), !dbg !156
  %301 = bitcast [24 x i8]* %access-scratch39 to i8*, !dbg !232
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %301), !dbg !232
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2cGSivp" to i8*), [24 x i8]* %access-scratch39, i64 33, i8* null) #2, !dbg !232
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !232
  call void @swift_endAccess([24 x i8]* %access-scratch39) #2, !dbg !232
  %302 = bitcast [24 x i8]* %access-scratch39 to i8*, !dbg !232
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %302), !dbg !232
  %a._value40 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !233
  store i64 0, i64* %a._value40, align 8, !dbg !233
  %303 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator41" to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %303), !dbg !234
  %304 = bitcast %TSNySiG* %25 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %304), !dbg !234
  br label %305, !dbg !236

; <label>:305:                                    ; preds = %299
  br label %306, !dbg !236

; <label>:306:                                    ; preds = %305
  %307 = bitcast %TSi* %26 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %307), !dbg !234
  %._value42 = getelementptr inbounds %TSi, %TSi* %26, i32 0, i32 0, !dbg !236
  store i64 0, i64* %._value42, align 8, !dbg !236
  %308 = bitcast %TSi* %27 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %308), !dbg !234
  %._value43 = getelementptr inbounds %TSi, %TSi* %27, i32 0, i32 0, !dbg !236
  store i64 19, i64* %._value43, align 8, !dbg !236
  %._value44 = getelementptr inbounds %TSi, %TSi* %26, i32 0, i32 0, !dbg !236
  %309 = load i64, i64* %._value44, align 8, !dbg !236
  %._value45 = getelementptr inbounds %TSi, %TSi* %27, i32 0, i32 0, !dbg !236
  %310 = load i64, i64* %._value45, align 8, !dbg !236
  %311 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %309, i64 %310), !dbg !236
  %312 = extractvalue { i64, i64 } %311, 0, !dbg !236
  %313 = extractvalue { i64, i64 } %311, 1, !dbg !236
  %.lowerBound46 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 0, !dbg !236
  %.lowerBound46._value = getelementptr inbounds %TSi, %TSi* %.lowerBound46, i32 0, i32 0, !dbg !236
  store i64 %312, i64* %.lowerBound46._value, align 8, !dbg !236
  %.upperBound47 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 1, !dbg !236
  %.upperBound47._value = getelementptr inbounds %TSi, %TSi* %.upperBound47, i32 0, i32 0, !dbg !236
  store i64 %313, i64* %.upperBound47._value, align 8, !dbg !236
  %314 = bitcast %TSi* %27 to i8*, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %314), !dbg !236
  %315 = bitcast %TSi* %26 to i8*, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %315), !dbg !236
  %.lowerBound48 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 0, !dbg !236
  %.lowerBound48._value = getelementptr inbounds %TSi, %TSi* %.lowerBound48, i32 0, i32 0, !dbg !236
  %316 = load i64, i64* %.lowerBound48._value, align 8, !dbg !236
  %.upperBound49 = getelementptr inbounds %TSNySiG, %TSNySiG* %25, i32 0, i32 1, !dbg !236
  %.upperBound49._value = getelementptr inbounds %TSi, %TSi* %.upperBound49, i32 0, i32 0, !dbg !236
  %317 = load i64, i64* %.upperBound49._value, align 8, !dbg !236
  %318 = bitcast %TSNySiG* %28 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %318), !dbg !234
  %.lowerBound50 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 0, !dbg !236
  %.lowerBound50._value = getelementptr inbounds %TSi, %TSi* %.lowerBound50, i32 0, i32 0, !dbg !236
  store i64 %316, i64* %.lowerBound50._value, align 8, !dbg !236
  %.upperBound51 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 1, !dbg !236
  %.upperBound51._value = getelementptr inbounds %TSi, %TSi* %.upperBound51, i32 0, i32 0, !dbg !236
  store i64 %317, i64* %.upperBound51._value, align 8, !dbg !236
  %.lowerBound52 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 0, !dbg !237
  %.lowerBound52._value = getelementptr inbounds %TSi, %TSi* %.lowerBound52, i32 0, i32 0, !dbg !237
  %319 = load i64, i64* %.lowerBound52._value, align 8, !dbg !237
  %.upperBound53 = getelementptr inbounds %TSNySiG, %TSNySiG* %28, i32 0, i32 1, !dbg !237
  %.upperBound53._value = getelementptr inbounds %TSi, %TSi* %.upperBound53, i32 0, i32 0, !dbg !237
  %320 = load i64, i64* %.upperBound53._value, align 8, !dbg !237
  %321 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %319, i64 %320), !dbg !237
  %322 = extractvalue { i64, i64, i64, i8 } %321, 0, !dbg !237
  %323 = extractvalue { i64, i64, i64, i8 } %321, 1, !dbg !237
  %324 = extractvalue { i64, i64, i64, i8 } %321, 2, !dbg !237
  %325 = extractvalue { i64, i64, i64, i8 } %321, 3, !dbg !237
  %326 = trunc i8 %325 to i1, !dbg !237
  %"$i$generator41._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator41", i32 0, i32 0, !dbg !237
  %"$i$generator41._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator41._elements", i32 0, i32 0, !dbg !237
  %"$i$generator41._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator41._elements.lowerBound", i32 0, i32 0, !dbg !237
  store i64 %322, i64* %"$i$generator41._elements.lowerBound._value", align 8, !dbg !237
  %"$i$generator41._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator41._elements", i32 0, i32 1, !dbg !237
  %"$i$generator41._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator41._elements.upperBound", i32 0, i32 0, !dbg !237
  store i64 %323, i64* %"$i$generator41._elements.upperBound._value", align 8, !dbg !237
  %"$i$generator41._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator41", i32 0, i32 1, !dbg !237
  %327 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator41._position" to i64*, !dbg !237
  store i64 %324, i64* %327, align 8, !dbg !237
  %328 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator41._position", i32 0, i32 1, !dbg !237
  %329 = bitcast [1 x i8]* %328 to i1*, !dbg !237
  store i1 %326, i1* %329, align 8, !dbg !237
  %330 = bitcast %TSNySiG* %28 to i8*, !dbg !238
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %330), !dbg !238
  %331 = bitcast %TSNySiG* %25 to i8*, !dbg !238
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %331), !dbg !238
  br label %332, !dbg !238

; <label>:332:                                    ; preds = %365, %306
  %333 = bitcast %TSiSg* %29 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %333), !dbg !234
  %334 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator41"), !dbg !239
  %335 = extractvalue { i64, i8 } %334, 0, !dbg !239
  %336 = extractvalue { i64, i8 } %334, 1, !dbg !239
  %337 = trunc i8 %336 to i1, !dbg !239
  %338 = bitcast %TSiSg* %29 to i64*, !dbg !239
  store i64 %335, i64* %338, align 8, !dbg !239
  %339 = getelementptr inbounds %TSiSg, %TSiSg* %29, i32 0, i32 1, !dbg !239
  %340 = bitcast [1 x i8]* %339 to i1*, !dbg !239
  store i1 %337, i1* %340, align 8, !dbg !239
  %341 = bitcast %TSiSg* %29 to i64*, !dbg !239
  %342 = load i64, i64* %341, align 8, !dbg !239
  %343 = getelementptr inbounds %TSiSg, %TSiSg* %29, i32 0, i32 1, !dbg !239
  %344 = bitcast [1 x i8]* %343 to i1*, !dbg !239
  %345 = load i1, i1* %344, align 8, !dbg !239
  %346 = bitcast %TSiSg* %29 to i8*, !dbg !238
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %346), !dbg !238
  br i1 %345, label %368, label %347, !dbg !238

; <label>:347:                                    ; preds = %332
  call void @incr_loop_counter(i32 2)
  br label %348, !dbg !238

; <label>:348:                                    ; preds = %347
  %349 = phi i64 [ %342, %347 ], !dbg !234
  store i64 %349, i64* %i.debug, align 8, !dbg !240
  %a._value54 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !241
  %350 = ptrtoint i64* %a._value54 to i64
  call void @add_ptr_instr_rec(i32 95, i64 2, i32 0, i64 %350)
  %351 = load i64, i64* %a._value54, align 8, !dbg !241
  %352 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 3), !dbg !243
  %353 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %351, i64 %352), !dbg !244
  %354 = extractvalue { i64, i1 } %353, 0, !dbg !244
  %355 = extractvalue { i64, i1 } %353, 1, !dbg !244
  br i1 %355, label %377, label %356, !dbg !244

; <label>:356:                                    ; preds = %348
  %a._value55 = getelementptr inbounds %TSi, %TSi* %a, i32 0, i32 0, !dbg !245
  %357 = ptrtoint i64* %a._value55 to i64
  call void @add_ptr_instr_rec(i32 95, i64 2, i32 1, i64 %357)
  store i64 %354, i64* %a._value55, align 8, !dbg !245
  %358 = bitcast [24 x i8]* %access-scratch56 to i8*, !dbg !246
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %358), !dbg !246
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2cGSivp" to i8*), [24 x i8]* %access-scratch56, i64 32, i8* null) #2, !dbg !246
  call void @add_instr_rec(i32 95, i64 1, i32 0)
  %359 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !246
  call void @swift_endAccess([24 x i8]* %access-scratch56) #2, !dbg !246
  %360 = bitcast [24 x i8]* %access-scratch56 to i8*, !dbg !246
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %360), !dbg !246
  %361 = call swiftcc i64 @"$s9reduction11expensiveOP1nS2i_tF"(i64 3), !dbg !247
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %359, i64 %361), !dbg !248
  %363 = extractvalue { i64, i1 } %362, 0, !dbg !248
  %364 = extractvalue { i64, i1 } %362, 1, !dbg !248
  br i1 %364, label %378, label %365, !dbg !248

; <label>:365:                                    ; preds = %356
  %366 = bitcast [24 x i8]* %access-scratch57 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %366), !dbg !249
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction2cGSivp" to i8*), [24 x i8]* %access-scratch57, i64 33, i8* null) #2, !dbg !249
  call void @add_instr_rec(i32 95, i64 1, i32 1)
  store i64 %363, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction2cGSivp", i32 0, i32 0), align 8, !dbg !249
  call void @swift_endAccess([24 x i8]* %access-scratch57) #2, !dbg !249
  %367 = bitcast [24 x i8]* %access-scratch57 to i8*, !dbg !249
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %367), !dbg !249
  br label %332, !dbg !250

; <label>:368:                                    ; preds = %332
  %369 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator41" to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %369), !dbg !251
  %370 = bitcast %TSi* %arrMul to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %370), !dbg !251
  %371 = bitcast %TSi* %arrSum to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %371), !dbg !251
  %372 = call %TSa* @"$sSaySiGWOh"(%TSa* %localArr), !dbg !251
  %373 = bitcast %TSa* %localArr to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %373), !dbg !251
  %374 = bitcast %TSi* %c to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %374), !dbg !251
  %375 = bitcast %TSi* %b to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %375), !dbg !251
  %376 = bitcast %TSi* %a to i8*, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %376), !dbg !251
  ret void, !dbg !251

; <label>:377:                                    ; preds = %348
  call void @llvm.trap(), !dbg !244
  unreachable, !dbg !244

; <label>:378:                                    ; preds = %356
  call void @llvm.trap(), !dbg !248
  unreachable, !dbg !248

; <label>:379:                                    ; preds = %272
  call void @llvm.trap(), !dbg !225
  unreachable, !dbg !225

; <label>:380:                                    ; preds = %282
  call void @llvm.trap(), !dbg !229
  unreachable, !dbg !229

; <label>:381:                                    ; preds = %174
  call void @llvm.trap(), !dbg !192
  unreachable, !dbg !192

; <label>:382:                                    ; preds = %182
  call void @llvm.trap(), !dbg !195
  unreachable, !dbg !195

; <label>:383:                                    ; preds = %190
  call void @llvm.trap(), !dbg !200
  unreachable, !dbg !200

; <label>:384:                                    ; preds = %198
  call void @llvm.trap(), !dbg !202
  unreachable, !dbg !202

; <label>:385:                                    ; preds = %206
  call void @llvm.trap(), !dbg !207
  unreachable, !dbg !207

; <label>:386:                                    ; preds = %97
  call void @llvm.trap(), !dbg !173
  unreachable, !dbg !173

; <label>:387:                                    ; preds = %104
  call void @llvm.trap(), !dbg !176
  unreachable, !dbg !176

; <label>:388:                                    ; preds = %111
  call void @llvm.trap(), !dbg !179
  unreachable, !dbg !179
}

define hidden swiftcc void @"$s9reduction6do_allyyF"() #0 !dbg !252 {
entry:
  %localArr = alloca %TSa, align 8
  call void @llvm.dbg.declare(metadata %TSa* %localArr, metadata !253, metadata !DIExpression()), !dbg !255
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
  call void @llvm.dbg.declare(metadata i64* %i.debug, metadata !256, metadata !DIExpression()), !dbg !258
  %13 = bitcast i64* %i.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = alloca %TSi, align 8
  %access-scratch28 = alloca [24 x i8], align 8
  %15 = alloca %TSi, align 8
  %16 = alloca [32 x i8], align 8
  %access-scratch32 = alloca [24 x i8], align 8
  %17 = alloca [32 x i8], align 8
  %i.debug34 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.debug34, metadata !259, metadata !DIExpression()), !dbg !261
  %18 = bitcast i64* %i.debug34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  %access-scratch35 = alloca [24 x i8], align 8
  %19 = alloca [32 x i8], align 8
  %20 = bitcast %TSa* %localArr to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20), !dbg !262
  %21 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !264
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %21), !dbg !264
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s9reduction10iterationsSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #2, !dbg !264
  %22 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s9reduction10iterationsSivp", i32 0, i32 0), align 8, !dbg !264
  call void @swift_endAccess([24 x i8]* %access-scratch) #2, !dbg !264
  %23 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !264
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %23), !dbg !264
  %24 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$s9reduction6getArr10iterationsSaySiGSi_tF"(i64 %22), !dbg !265
  %localArr._buffer = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !265
  %localArr._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer, i32 0, i32 0, !dbg !265
  store %Ts28__ContiguousArrayStorageBaseC* %24, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer._storage, align 8, !dbg !265
  %25 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %25), !dbg !266
  %26 = bitcast %TSNySiG* %2 to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %26), !dbg !266
  %27 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !268
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %27), !dbg !268
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch1, i64 32, i8* null) #2, !dbg !268
  %28 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !268
  %29 = bitcast %Ts28__ContiguousArrayStorageBaseC* %28 to %swift.refcounted*, !dbg !268
  %30 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %29) #2, !dbg !268
  call void @swift_endAccess([24 x i8]* %access-scratch1) #2, !dbg !268
  %31 = bitcast [24 x i8]* %access-scratch1 to i8*, !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %31), !dbg !268
  %32 = call swiftcc i64 @"$sSa5countSivgSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC* %28), !dbg !269
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%Ts28__ContiguousArrayStorageBaseC*)*)(%Ts28__ContiguousArrayStorageBaseC* %28) #2, !dbg !269
  %33 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 1), !dbg !270
  %34 = extractvalue { i64, i1 } %33, 0, !dbg !270
  %35 = extractvalue { i64, i1 } %33, 1, !dbg !270
  br i1 %35, label %182, label %36, !dbg !270

; <label>:36:                                     ; preds = %entry
  br label %37, !dbg !271

; <label>:37:                                     ; preds = %36
  %38 = icmp slt i64 %34, 0, !dbg !271
  %39 = xor i1 %38, true, !dbg !271
  %40 = call i1 @llvm.expect.i1(i1 %39, i1 true), !dbg !271
  br i1 %40, label %41, label %67, !dbg !271

; <label>:41:                                     ; preds = %37
  %42 = bitcast %TSi* %3 to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42), !dbg !266
  %._value = getelementptr inbounds %TSi, %TSi* %3, i32 0, i32 0, !dbg !271
  store i64 0, i64* %._value, align 8, !dbg !271
  %43 = bitcast %TSi* %4 to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43), !dbg !266
  %._value2 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0, !dbg !271
  store i64 %34, i64* %._value2, align 8, !dbg !271
  %._value3 = getelementptr inbounds %TSi, %TSi* %3, i32 0, i32 0, !dbg !271
  %44 = load i64, i64* %._value3, align 8, !dbg !271
  %._value4 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0, !dbg !271
  %45 = load i64, i64* %._value4, align 8, !dbg !271
  %46 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %44, i64 %45), !dbg !271
  %47 = extractvalue { i64, i64 } %46, 0, !dbg !271
  %48 = extractvalue { i64, i64 } %46, 1, !dbg !271
  %.lowerBound = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 0, !dbg !271
  %.lowerBound._value = getelementptr inbounds %TSi, %TSi* %.lowerBound, i32 0, i32 0, !dbg !271
  store i64 %47, i64* %.lowerBound._value, align 8, !dbg !271
  %.upperBound = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 1, !dbg !271
  %.upperBound._value = getelementptr inbounds %TSi, %TSi* %.upperBound, i32 0, i32 0, !dbg !271
  store i64 %48, i64* %.upperBound._value, align 8, !dbg !271
  %49 = bitcast %TSi* %4 to i8*, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49), !dbg !271
  %50 = bitcast %TSi* %3 to i8*, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50), !dbg !271
  %.lowerBound5 = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 0, !dbg !271
  %.lowerBound5._value = getelementptr inbounds %TSi, %TSi* %.lowerBound5, i32 0, i32 0, !dbg !271
  %51 = load i64, i64* %.lowerBound5._value, align 8, !dbg !271
  %.upperBound6 = getelementptr inbounds %TSNySiG, %TSNySiG* %2, i32 0, i32 1, !dbg !271
  %.upperBound6._value = getelementptr inbounds %TSi, %TSi* %.upperBound6, i32 0, i32 0, !dbg !271
  %52 = load i64, i64* %.upperBound6._value, align 8, !dbg !271
  %53 = bitcast %TSNySiG* %5 to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %53), !dbg !266
  %.lowerBound7 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !271
  %.lowerBound7._value = getelementptr inbounds %TSi, %TSi* %.lowerBound7, i32 0, i32 0, !dbg !271
  store i64 %51, i64* %.lowerBound7._value, align 8, !dbg !271
  %.upperBound8 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !271
  %.upperBound8._value = getelementptr inbounds %TSi, %TSi* %.upperBound8, i32 0, i32 0, !dbg !271
  store i64 %52, i64* %.upperBound8._value, align 8, !dbg !271
  %.lowerBound9 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 0, !dbg !272
  %.lowerBound9._value = getelementptr inbounds %TSi, %TSi* %.lowerBound9, i32 0, i32 0, !dbg !272
  %54 = load i64, i64* %.lowerBound9._value, align 8, !dbg !272
  %.upperBound10 = getelementptr inbounds %TSNySiG, %TSNySiG* %5, i32 0, i32 1, !dbg !272
  %.upperBound10._value = getelementptr inbounds %TSi, %TSi* %.upperBound10, i32 0, i32 0, !dbg !272
  %55 = load i64, i64* %.upperBound10._value, align 8, !dbg !272
  %56 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %54, i64 %55), !dbg !272
  %57 = extractvalue { i64, i64, i64, i8 } %56, 0, !dbg !272
  %58 = extractvalue { i64, i64, i64, i8 } %56, 1, !dbg !272
  %59 = extractvalue { i64, i64, i64, i8 } %56, 2, !dbg !272
  %60 = extractvalue { i64, i64, i64, i8 } %56, 3, !dbg !272
  %61 = trunc i8 %60 to i1, !dbg !272
  %"$i$generator._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 0, !dbg !272
  %"$i$generator._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 0, !dbg !272
  %"$i$generator._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.lowerBound", i32 0, i32 0, !dbg !272
  store i64 %57, i64* %"$i$generator._elements.lowerBound._value", align 8, !dbg !272
  %"$i$generator._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator._elements", i32 0, i32 1, !dbg !272
  %"$i$generator._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator._elements.upperBound", i32 0, i32 0, !dbg !272
  store i64 %58, i64* %"$i$generator._elements.upperBound._value", align 8, !dbg !272
  %"$i$generator._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator", i32 0, i32 1, !dbg !272
  %62 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position" to i64*, !dbg !272
  store i64 %59, i64* %62, align 8, !dbg !272
  %63 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator._position", i32 0, i32 1, !dbg !272
  %64 = bitcast [1 x i8]* %63 to i1*, !dbg !272
  store i1 %61, i1* %64, align 8, !dbg !272
  %65 = bitcast %TSNySiG* %5 to i8*, !dbg !273
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %65), !dbg !273
  %66 = bitcast %TSNySiG* %2 to i8*, !dbg !273
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %66), !dbg !273
  br label %68, !dbg !273

; <label>:67:                                     ; preds = %37
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !271
  unreachable, !dbg !266

; <label>:68:                                     ; preds = %84, %41
  %69 = bitcast %TSiSg* %6 to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %69), !dbg !266
  %70 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator"), !dbg !274
  %71 = extractvalue { i64, i8 } %70, 0, !dbg !274
  %72 = extractvalue { i64, i8 } %70, 1, !dbg !274
  %73 = trunc i8 %72 to i1, !dbg !274
  %74 = bitcast %TSiSg* %6 to i64*, !dbg !274
  store i64 %71, i64* %74, align 8, !dbg !274
  %75 = getelementptr inbounds %TSiSg, %TSiSg* %6, i32 0, i32 1, !dbg !274
  %76 = bitcast [1 x i8]* %75 to i1*, !dbg !274
  store i1 %73, i1* %76, align 8, !dbg !274
  %77 = bitcast %TSiSg* %6 to i64*, !dbg !274
  %78 = load i64, i64* %77, align 8, !dbg !274
  %79 = getelementptr inbounds %TSiSg, %TSiSg* %6, i32 0, i32 1, !dbg !274
  %80 = bitcast [1 x i8]* %79 to i1*, !dbg !274
  %81 = load i1, i1* %80, align 8, !dbg !274
  %82 = bitcast %TSiSg* %6 to i8*, !dbg !273
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %82), !dbg !273
  br i1 %81, label %93, label %83, !dbg !273

; <label>:83:                                     ; preds = %68
  call void @incr_loop_counter(i32 7)
  br label %84, !dbg !273

; <label>:84:                                     ; preds = %83
  %85 = phi i64 [ %78, %83 ], !dbg !266
  store i64 %85, i64* %i.debug34, align 8, !dbg !275
  %86 = bitcast [24 x i8]* %access-scratch35 to i8*, !dbg !276
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %86), !dbg !276
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch35, i64 33, i8* null) #2, !dbg !276
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i32 0, i32 0, !dbg !276
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %87), !dbg !276
  %88 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %87, i64 %85, %TSa* nocapture swiftself dereferenceable(8) @"$s9reduction9globalArrSaySiGvp"), !dbg !276
  %89 = extractvalue { i8*, %TSi* } %88, 0, !dbg !276
  %90 = extractvalue { i8*, %TSi* } %88, 1, !dbg !276
  %._value36 = getelementptr inbounds %TSi, %TSi* %90, i32 0, i32 0, !dbg !276
  store i64 0, i64* %._value36, align 8, !dbg !276
  %91 = bitcast i8* %89 to void (i8*, i1)*, !dbg !276
  call swiftcc void %91(i8* noalias dereferenceable(32) %87, i1 false), !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %87), !dbg !276
  call void @swift_endAccess([24 x i8]* %access-scratch35) #2, !dbg !276
  %92 = bitcast [24 x i8]* %access-scratch35 to i8*, !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %92), !dbg !276
  br label %68, !dbg !278

; <label>:93:                                     ; preds = %68
  %94 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator" to i8*, !dbg !262
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %94), !dbg !262
  %95 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %95), !dbg !279
  %96 = bitcast %TSNySiG* %8 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %96), !dbg !279
  %localArr._buffer12 = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !281
  %localArr._buffer12._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer12, i32 0, i32 0, !dbg !281
  %97 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer12._storage, align 8, !dbg !281
  %98 = bitcast %Ts28__ContiguousArrayStorageBaseC* %97 to %swift.refcounted*, !dbg !281
  %99 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %98) #2, !dbg !281
  %100 = call swiftcc i64 @"$sSa5countSivgSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC* %97), !dbg !282
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%Ts28__ContiguousArrayStorageBaseC*)*)(%Ts28__ContiguousArrayStorageBaseC* %97) #2, !dbg !282
  %101 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %100, i64 1), !dbg !283
  %102 = extractvalue { i64, i1 } %101, 0, !dbg !283
  %103 = extractvalue { i64, i1 } %101, 1, !dbg !283
  br i1 %103, label %183, label %104, !dbg !283

; <label>:104:                                    ; preds = %93
  br label %105, !dbg !284

; <label>:105:                                    ; preds = %104
  %106 = icmp slt i64 %102, 0, !dbg !284
  %107 = xor i1 %106, true, !dbg !284
  %108 = call i1 @llvm.expect.i1(i1 %107, i1 true), !dbg !284
  br i1 %108, label %109, label %135, !dbg !284

; <label>:109:                                    ; preds = %105
  %110 = bitcast %TSi* %9 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %110), !dbg !279
  %._value13 = getelementptr inbounds %TSi, %TSi* %9, i32 0, i32 0, !dbg !284
  store i64 0, i64* %._value13, align 8, !dbg !284
  %111 = bitcast %TSi* %10 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %111), !dbg !279
  %._value14 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !284
  store i64 %102, i64* %._value14, align 8, !dbg !284
  %._value15 = getelementptr inbounds %TSi, %TSi* %9, i32 0, i32 0, !dbg !284
  %112 = load i64, i64* %._value15, align 8, !dbg !284
  %._value16 = getelementptr inbounds %TSi, %TSi* %10, i32 0, i32 0, !dbg !284
  %113 = load i64, i64* %._value16, align 8, !dbg !284
  %114 = call swiftcc { i64, i64 } @"$sSN15uncheckedBoundsSNyxGx5lower_x5uppert_tcfCSi_Tg5"(i64 %112, i64 %113), !dbg !284
  %115 = extractvalue { i64, i64 } %114, 0, !dbg !284
  %116 = extractvalue { i64, i64 } %114, 1, !dbg !284
  %.lowerBound17 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !284
  %.lowerBound17._value = getelementptr inbounds %TSi, %TSi* %.lowerBound17, i32 0, i32 0, !dbg !284
  store i64 %115, i64* %.lowerBound17._value, align 8, !dbg !284
  %.upperBound18 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !284
  %.upperBound18._value = getelementptr inbounds %TSi, %TSi* %.upperBound18, i32 0, i32 0, !dbg !284
  store i64 %116, i64* %.upperBound18._value, align 8, !dbg !284
  %117 = bitcast %TSi* %10 to i8*, !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %117), !dbg !284
  %118 = bitcast %TSi* %9 to i8*, !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %118), !dbg !284
  %.lowerBound19 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 0, !dbg !284
  %.lowerBound19._value = getelementptr inbounds %TSi, %TSi* %.lowerBound19, i32 0, i32 0, !dbg !284
  %119 = load i64, i64* %.lowerBound19._value, align 8, !dbg !284
  %.upperBound20 = getelementptr inbounds %TSNySiG, %TSNySiG* %8, i32 0, i32 1, !dbg !284
  %.upperBound20._value = getelementptr inbounds %TSi, %TSi* %.upperBound20, i32 0, i32 0, !dbg !284
  %120 = load i64, i64* %.upperBound20._value, align 8, !dbg !284
  %121 = bitcast %TSNySiG* %11 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %121), !dbg !279
  %.lowerBound21 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !284
  %.lowerBound21._value = getelementptr inbounds %TSi, %TSi* %.lowerBound21, i32 0, i32 0, !dbg !284
  store i64 %119, i64* %.lowerBound21._value, align 8, !dbg !284
  %.upperBound22 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !284
  %.upperBound22._value = getelementptr inbounds %TSi, %TSi* %.upperBound22, i32 0, i32 0, !dbg !284
  store i64 %120, i64* %.upperBound22._value, align 8, !dbg !284
  %.lowerBound23 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 0, !dbg !285
  %.lowerBound23._value = getelementptr inbounds %TSi, %TSi* %.lowerBound23, i32 0, i32 0, !dbg !285
  %122 = load i64, i64* %.lowerBound23._value, align 8, !dbg !285
  %.upperBound24 = getelementptr inbounds %TSNySiG, %TSNySiG* %11, i32 0, i32 1, !dbg !285
  %.upperBound24._value = getelementptr inbounds %TSi, %TSi* %.upperBound24, i32 0, i32 0, !dbg !285
  %123 = load i64, i64* %.upperBound24._value, align 8, !dbg !285
  %124 = call swiftcc { i64, i64, i64, i8 } @"$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyFSNySiG_Tg5"(i64 %122, i64 %123), !dbg !285
  %125 = extractvalue { i64, i64, i64, i8 } %124, 0, !dbg !285
  %126 = extractvalue { i64, i64, i64, i8 } %124, 1, !dbg !285
  %127 = extractvalue { i64, i64, i64, i8 } %124, 2, !dbg !285
  %128 = extractvalue { i64, i64, i64, i8 } %124, 3, !dbg !285
  %129 = trunc i8 %128 to i1, !dbg !285
  %"$i$generator11._elements" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 0, !dbg !285
  %"$i$generator11._elements.lowerBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 0, !dbg !285
  %"$i$generator11._elements.lowerBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.lowerBound", i32 0, i32 0, !dbg !285
  store i64 %125, i64* %"$i$generator11._elements.lowerBound._value", align 8, !dbg !285
  %"$i$generator11._elements.upperBound" = getelementptr inbounds %TSNySiG, %TSNySiG* %"$i$generator11._elements", i32 0, i32 1, !dbg !285
  %"$i$generator11._elements.upperBound._value" = getelementptr inbounds %TSi, %TSi* %"$i$generator11._elements.upperBound", i32 0, i32 0, !dbg !285
  store i64 %126, i64* %"$i$generator11._elements.upperBound._value", align 8, !dbg !285
  %"$i$generator11._position" = getelementptr inbounds %Ts16IndexingIteratorVySNySiGG, %Ts16IndexingIteratorVySNySiGG* %"$i$generator11", i32 0, i32 1, !dbg !285
  %130 = bitcast %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position" to i64*, !dbg !285
  store i64 %127, i64* %130, align 8, !dbg !285
  %131 = getelementptr inbounds %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G, %TSNsSxRzSZ6StrideRpzrlE5IndexOySi_G* %"$i$generator11._position", i32 0, i32 1, !dbg !285
  %132 = bitcast [1 x i8]* %131 to i1*, !dbg !285
  store i1 %129, i1* %132, align 8, !dbg !285
  %133 = bitcast %TSNySiG* %11 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %133), !dbg !286
  %134 = bitcast %TSNySiG* %8 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %134), !dbg !286
  br label %136, !dbg !286

; <label>:135:                                    ; preds = %105
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @2 to i64), i64 11, i8 2, i64 ptrtoint ([46 x i8]* @0 to i64), i64 45, i8 2, i64 ptrtoint ([118 x i8]* @1 to i64), i64 117, i8 2, i64 335, i32 1), !dbg !284
  unreachable, !dbg !279

; <label>:136:                                    ; preds = %152, %109
  %137 = bitcast %TSiSg* %12 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %137), !dbg !279
  %138 = call swiftcc { i64, i8 } @"$ss16IndexingIteratorV4next7ElementQzSgyFSNySiG_Tg5"(%Ts16IndexingIteratorVySNySiGG* nocapture swiftself dereferenceable(25) %"$i$generator11"), !dbg !287
  %139 = extractvalue { i64, i8 } %138, 0, !dbg !287
  %140 = extractvalue { i64, i8 } %138, 1, !dbg !287
  %141 = trunc i8 %140 to i1, !dbg !287
  %142 = bitcast %TSiSg* %12 to i64*, !dbg !287
  store i64 %139, i64* %142, align 8, !dbg !287
  %143 = getelementptr inbounds %TSiSg, %TSiSg* %12, i32 0, i32 1, !dbg !287
  %144 = bitcast [1 x i8]* %143 to i1*, !dbg !287
  store i1 %141, i1* %144, align 8, !dbg !287
  %145 = bitcast %TSiSg* %12 to i64*, !dbg !287
  %146 = load i64, i64* %145, align 8, !dbg !287
  %147 = getelementptr inbounds %TSiSg, %TSiSg* %12, i32 0, i32 1, !dbg !287
  %148 = bitcast [1 x i8]* %147 to i1*, !dbg !287
  %149 = load i1, i1* %148, align 8, !dbg !287
  %150 = bitcast %TSiSg* %12 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %150), !dbg !286
  br i1 %149, label %178, label %151, !dbg !286

; <label>:151:                                    ; preds = %136
  call void @incr_loop_counter(i32 6)
  br label %152, !dbg !286

; <label>:152:                                    ; preds = %151
  %153 = phi i64 [ %146, %151 ], !dbg !279
  store i64 %153, i64* %i.debug, align 8, !dbg !288
  %localArr._buffer25 = getelementptr inbounds %TSa, %TSa* %localArr, i32 0, i32 0, !dbg !289
  %localArr._buffer25._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %localArr._buffer25, i32 0, i32 0, !dbg !289
  %154 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %localArr._buffer25._storage, align 8, !dbg !289
  %155 = bitcast %TSi* %14 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %155), !dbg !291
  %156 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %153, %Ts28__ContiguousArrayStorageBaseC* %154), !dbg !289
  %._value26 = getelementptr inbounds %TSi, %TSi* %14, i32 0, i32 0, !dbg !289
  store i64 %156, i64* %._value26, align 8, !dbg !289
  %._value27 = getelementptr inbounds %TSi, %TSi* %14, i32 0, i32 0, !dbg !289
  %157 = load i64, i64* %._value27, align 8, !dbg !289
  call void asm sideeffect "", "r"(i64 %157), !dbg !291
  call void @llvm.dbg.value(metadata i64 %157, metadata !293, metadata !DIExpression()), !dbg !294
  %158 = bitcast %TSi* %14 to i8*, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %158), !dbg !291
  %159 = bitcast [24 x i8]* %access-scratch28 to i8*, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %159), !dbg !295
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch28, i64 32, i8* null) #2, !dbg !295
  %160 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s9reduction9globalArrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !295
  %161 = bitcast %TSi* %15 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %161), !dbg !291
  %162 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %153, %Ts28__ContiguousArrayStorageBaseC* %160), !dbg !295
  %._value29 = getelementptr inbounds %TSi, %TSi* %15, i32 0, i32 0, !dbg !295
  store i64 %162, i64* %._value29, align 8, !dbg !295
  %._value30 = getelementptr inbounds %TSi, %TSi* %15, i32 0, i32 0, !dbg !295
  %163 = load i64, i64* %._value30, align 8, !dbg !295
  call void @swift_endAccess([24 x i8]* %access-scratch28) #2, !dbg !295
  %164 = bitcast [24 x i8]* %access-scratch28 to i8*, !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %164), !dbg !295
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %165), !dbg !295
  %166 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %165, i64 %153, %TSa* nocapture swiftself dereferenceable(8) %localArr), !dbg !295
  %167 = extractvalue { i8*, %TSi* } %166, 0, !dbg !295
  %168 = extractvalue { i8*, %TSi* } %166, 1, !dbg !295
  %._value31 = getelementptr inbounds %TSi, %TSi* %168, i32 0, i32 0, !dbg !295
  store i64 %163, i64* %._value31, align 8, !dbg !295
  %169 = bitcast i8* %167 to void (i8*, i1)*, !dbg !295
  call swiftcc void %169(i8* noalias dereferenceable(32) %165, i1 false), !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %165), !dbg !295
  %170 = bitcast %TSi* %15 to i8*, !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170), !dbg !295
  %171 = bitcast [24 x i8]* %access-scratch32 to i8*, !dbg !296
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %171), !dbg !296
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s9reduction9globalArrSaySiGvp" to i8*), [24 x i8]* %access-scratch32, i64 33, i8* null) #2, !dbg !296
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0, !dbg !296
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %172), !dbg !296
  %173 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %172, i64 %153, %TSa* nocapture swiftself dereferenceable(8) @"$s9reduction9globalArrSaySiGvp"), !dbg !296
  %174 = extractvalue { i8*, %TSi* } %173, 0, !dbg !296
  %175 = extractvalue { i8*, %TSi* } %173, 1, !dbg !296
  %._value33 = getelementptr inbounds %TSi, %TSi* %175, i32 0, i32 0, !dbg !296
  store i64 %157, i64* %._value33, align 8, !dbg !296
  %176 = bitcast i8* %174 to void (i8*, i1)*, !dbg !296
  call swiftcc void %176(i8* noalias dereferenceable(32) %172, i1 false), !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %172), !dbg !296
  call void @swift_endAccess([24 x i8]* %access-scratch32) #2, !dbg !296
  %177 = bitcast [24 x i8]* %access-scratch32 to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %177), !dbg !296
  call void asm sideeffect "", "r"(i64 %157), !dbg !297
  br label %136, !dbg !297

; <label>:178:                                    ; preds = %136
  %179 = bitcast %Ts16IndexingIteratorVySNySiGG* %"$i$generator11" to i8*, !dbg !298
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %179), !dbg !298
  %180 = call %TSa* @"$sSaySiGWOh"(%TSa* %localArr), !dbg !298
  %181 = bitcast %TSa* %localArr to i8*, !dbg !298
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %181), !dbg !298
  ret void, !dbg !298

; <label>:182:                                    ; preds = %entry
  call void @llvm.trap(), !dbg !270
  unreachable, !dbg !270

; <label>:183:                                    ; preds = %93
  call void @llvm.trap(), !dbg !283
  unreachable, !dbg !283
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
define linkonce_odr hidden %TSa* @"$sSaySiGWOh"(%TSa*) #7 !dbg !299 {
entry:
  %._buffer = getelementptr inbounds %TSa, %TSa* %0, i32 0, i32 0, !dbg !301
  %._buffer._storage = getelementptr inbounds %Ts22_ContiguousArrayBufferV, %Ts22_ContiguousArrayBufferV* %._buffer, i32 0, i32 0, !dbg !301
  %toDestroy = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** %._buffer._storage, align 8, !dbg !301
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%Ts28__ContiguousArrayStorageBaseC*)*)(%Ts28__ContiguousArrayStorageBaseC* %toDestroy) #2, !dbg !301
  ret %TSa* %0, !dbg !301
}

; Function Attrs: nounwind
declare void @swift_release(%swift.refcounted*) #2

declare swiftcc void @"$sSa6appendyyxnFSi_Tg5"(i64, %TSa* nocapture swiftself dereferenceable(8)) #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

declare swiftcc i64 @"$sSayxSicigSi_Tg5"(i64, %Ts28__ContiguousArrayStorageBaseC*) #0

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare swiftcc i64 @"$sSa5countSivgSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC*) #0

declare swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32), i64, %TSa* nocapture swiftself dereferenceable(8)) #0

; Function Attrs: nounwind readnone
declare i8* @llvm.coro.prepare.retcon(i8*) #5

declare void @add_instr_rec(i32, i64, i32)

declare void @add_ptr_instr_rec(i32, i64, i32, i64)

declare void @incr_loop_counter(i32)

declare void @loop_counter_output()

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
!64 = !DILocation(line: 131, column: 1, scope: !65)
!65 = distinct !DILexicalBlock(scope: !42, file: !3, line: 131, column: 1)
!66 = !DILocation(line: 132, column: 1, scope: !67)
!67 = distinct !DILexicalBlock(scope: !42, file: !3, line: 132, column: 1)
!68 = distinct !DISubprogram(name: "getArr", linkageName: "$s9reduction6getArr10iterationsSaySiGSi_tF", scope: !2, file: !3, line: 11, type: !69, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!69 = !DISubroutineType(types: !70)
!70 = !{!24, !4}
!71 = !DILocalVariable(name: "iterations", arg: 1, scope: !68, file: !3, line: 11, type: !4)
!72 = !DILocation(line: 11, column: 13, scope: !68)
!73 = !DILocalVariable(name: "arr", scope: !74, file: !3, line: 12, type: !24)
!74 = distinct !DILexicalBlock(scope: !68, file: !3, line: 11, column: 44)
!75 = !DILocation(line: 12, column: 9, scope: !74)
!76 = !DILocalVariable(name: "i", scope: !77, file: !3, line: 13, type: !4)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 13, column: 5)
!78 = !DILocation(line: 13, column: 9, scope: !77)
!79 = !DILocation(line: 0, scope: !68)
!80 = !DILocation(line: 0, scope: !81)
!81 = !DILexicalBlockFile(scope: !74, file: !82, discriminator: 0)
!82 = !DIFile(filename: "<compiler-generated>", directory: "")
!83 = !DILocation(line: 12, column: 19, scope: !74)
!84 = !DILocation(line: 0, scope: !85)
!85 = !DILexicalBlockFile(scope: !77, file: !82, discriminator: 0)
!86 = !DILocation(line: 13, column: 15, scope: !77)
!87 = !DILocation(line: 13, column: 14, scope: !77)
!88 = !DILocation(line: 13, column: 5, scope: !77)
!89 = !DILocation(line: 13, column: 11, scope: !77)
!90 = !DILocation(line: 0, scope: !77)
!91 = !DILocation(line: 0, scope: !92)
!92 = !DILexicalBlockFile(scope: !93, file: !82, discriminator: 0)
!93 = distinct !DILexicalBlock(scope: !77, file: !3, line: 13, column: 29)
!94 = !DILocation(line: 14, column: 20, scope: !93)
!95 = !DILocation(line: 14, column: 13, scope: !93)
!96 = !DILocation(line: 15, column: 5, scope: !77)
!97 = !DILocation(line: 16, column: 12, scope: !74)
!98 = !DILocation(line: 16, column: 5, scope: !74)
!99 = distinct !DISubprogram(name: "expensiveOP", linkageName: "$s9reduction11expensiveOP1nS2i_tF", scope: !2, file: !3, line: 24, type: !100, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!100 = !DISubroutineType(types: !101)
!101 = !{!4, !4}
!102 = !DILocalVariable(name: "n", arg: 1, scope: !99, file: !3, line: 24, type: !4)
!103 = !DILocation(line: 24, column: 18, scope: !99)
!104 = !DILocalVariable(name: "fn", scope: !105, file: !3, line: 29, type: !4)
!105 = distinct !DILexicalBlock(scope: !99, file: !3, line: 24, column: 33)
!106 = !DILocation(line: 29, column: 9, scope: !105)
!107 = !DILocation(line: 0, scope: !99)
!108 = !DILocation(line: 0, scope: !109)
!109 = !DILexicalBlockFile(scope: !105, file: !82, discriminator: 0)
!110 = !DILocation(line: 29, column: 14, scope: !105)
!111 = !DILocation(line: 31, column: 12, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !3, line: 31, column: 5)
!113 = !DILocation(line: 31, column: 18, scope: !112)
!114 = !DILocation(line: 32, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 31, column: 30)
!116 = !DILocation(line: 33, column: 5, scope: !112)
!117 = !DILocation(line: 34, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !105, file: !3, line: 33, column: 12)
!119 = !DILocation(line: 34, column: 14, scope: !118)
!120 = !DILocation(line: 34, column: 52, scope: !118)
!121 = !DILocation(line: 34, column: 36, scope: !118)
!122 = !DILocation(line: 34, column: 34, scope: !118)
!123 = !DILocation(line: 34, column: 12, scope: !118)
!124 = !DILocation(line: 35, column: 5, scope: !105)
!125 = !DILocation(line: 37, column: 12, scope: !105)
!126 = !DILocation(line: 37, column: 5, scope: !105)
!127 = distinct !DISubprogram(name: "reduction", linkageName: "$s9reductionAAyyF", scope: !2, file: !3, line: 47, type: !128, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!128 = !DISubroutineType(types: !129)
!129 = !{!130}
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "$sytD", file: !3, elements: !7, runtimeLang: DW_LANG_Swift, identifier: "$sytD")
!131 = !DILocalVariable(name: "a", scope: !132, file: !3, line: 49, type: !4)
!132 = distinct !DILexicalBlock(scope: !127, file: !3, line: 47, column: 18)
!133 = !DILocation(line: 49, column: 9, scope: !132)
!134 = !DILocalVariable(name: "b", scope: !132, file: !3, line: 49, type: !4)
!135 = !DILocation(line: 49, column: 16, scope: !132)
!136 = !DILocalVariable(name: "c", scope: !132, file: !3, line: 49, type: !4)
!137 = !DILocation(line: 49, column: 23, scope: !132)
!138 = !DILocalVariable(name: "localArr", scope: !132, file: !3, line: 50, type: !24)
!139 = !DILocation(line: 50, column: 9, scope: !132)
!140 = !DILocalVariable(name: "arrSum", scope: !132, file: !3, line: 79, type: !4)
!141 = !DILocation(line: 79, column: 9, scope: !132)
!142 = !DILocalVariable(name: "arrMul", scope: !132, file: !3, line: 79, type: !4)
!143 = !DILocation(line: 79, column: 21, scope: !132)
!144 = !DILocalVariable(name: "i", scope: !145, file: !3, line: 95, type: !4)
!145 = distinct !DILexicalBlock(scope: !132, file: !3, line: 95, column: 5)
!146 = !DILocation(line: 95, column: 9, scope: !145)
!147 = !DILocalVariable(name: "i", scope: !148, file: !3, line: 81, type: !4)
!148 = distinct !DILexicalBlock(scope: !132, file: !3, line: 81, column: 5)
!149 = !DILocation(line: 81, column: 9, scope: !148)
!150 = !DILocalVariable(name: "i", scope: !151, file: !3, line: 63, type: !4)
!151 = distinct !DILexicalBlock(scope: !132, file: !3, line: 63, column: 5)
!152 = !DILocation(line: 63, column: 9, scope: !151)
!153 = !DILocalVariable(name: "i", scope: !154, file: !3, line: 53, type: !4)
!154 = distinct !DILexicalBlock(scope: !132, file: !3, line: 53, column: 5)
!155 = !DILocation(line: 53, column: 9, scope: !154)
!156 = !DILocation(line: 0, scope: !157)
!157 = !DILexicalBlockFile(scope: !132, file: !82, discriminator: 0)
!158 = !DILocation(line: 49, column: 13, scope: !132)
!159 = !DILocation(line: 49, column: 20, scope: !132)
!160 = !DILocation(line: 49, column: 27, scope: !132)
!161 = !DILocation(line: 50, column: 39, scope: !132)
!162 = !DILocation(line: 50, column: 20, scope: !132)
!163 = !DILocation(line: 0, scope: !164)
!164 = !DILexicalBlockFile(scope: !154, file: !82, discriminator: 0)
!165 = !DILocation(line: 53, column: 18, scope: !154)
!166 = !DILocation(line: 53, column: 15, scope: !154)
!167 = !DILocation(line: 53, column: 14, scope: !154)
!168 = !DILocation(line: 53, column: 5, scope: !154)
!169 = !DILocation(line: 53, column: 11, scope: !154)
!170 = !DILocation(line: 0, scope: !154)
!171 = !DILocation(line: 54, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !154, file: !3, line: 53, column: 29)
!173 = !DILocation(line: 54, column: 15, scope: !172)
!174 = !DILocation(line: 54, column: 11, scope: !172)
!175 = !DILocation(line: 55, column: 13, scope: !172)
!176 = !DILocation(line: 55, column: 15, scope: !172)
!177 = !DILocation(line: 55, column: 11, scope: !172)
!178 = !DILocation(line: 56, column: 13, scope: !172)
!179 = !DILocation(line: 56, column: 15, scope: !172)
!180 = !DILocation(line: 56, column: 11, scope: !172)
!181 = !DILocation(line: 57, column: 5, scope: !154)
!182 = !DILocation(line: 0, scope: !183)
!183 = !DILexicalBlockFile(scope: !151, file: !82, discriminator: 0)
!184 = !DILocation(line: 63, column: 18, scope: !151)
!185 = !DILocation(line: 63, column: 15, scope: !151)
!186 = !DILocation(line: 63, column: 14, scope: !151)
!187 = !DILocation(line: 63, column: 5, scope: !151)
!188 = !DILocation(line: 63, column: 11, scope: !151)
!189 = !DILocation(line: 0, scope: !151)
!190 = !DILocation(line: 65, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !151, file: !3, line: 63, column: 29)
!192 = !DILocation(line: 65, column: 17, scope: !191)
!193 = !DILocation(line: 65, column: 12, scope: !191)
!194 = !DILocation(line: 66, column: 13, scope: !191)
!195 = !DILocation(line: 66, column: 15, scope: !191)
!196 = !DILocation(line: 66, column: 11, scope: !191)
!197 = !DILocation(line: 0, scope: !198)
!198 = !DILexicalBlockFile(scope: !191, file: !82, discriminator: 0)
!199 = !DILocation(line: 67, column: 28, scope: !191)
!200 = !DILocation(line: 67, column: 32, scope: !191)
!201 = !DILocation(line: 67, column: 38, scope: !191)
!202 = !DILocation(line: 67, column: 36, scope: !191)
!203 = !DILocation(line: 67, column: 18, scope: !191)
!204 = !DILocation(line: 69, column: 19, scope: !191)
!205 = !DILocalVariable(name: "tmp", scope: !191, file: !3, line: 69, type: !4)
!206 = !DILocation(line: 69, column: 13, scope: !191)
!207 = !DILocation(line: 70, column: 17, scope: !191)
!208 = !DILocation(line: 70, column: 11, scope: !191)
!209 = !DILocation(line: 72, column: 5, scope: !151)
!210 = !DILocation(line: 79, column: 18, scope: !132)
!211 = !DILocation(line: 79, column: 30, scope: !132)
!212 = !DILocation(line: 0, scope: !213)
!213 = !DILexicalBlockFile(scope: !148, file: !82, discriminator: 0)
!214 = !DILocation(line: 81, column: 18, scope: !148)
!215 = !DILocation(line: 81, column: 15, scope: !148)
!216 = !DILocation(line: 81, column: 14, scope: !148)
!217 = !DILocation(line: 81, column: 5, scope: !148)
!218 = !DILocation(line: 81, column: 11, scope: !148)
!219 = !DILocation(line: 0, scope: !148)
!220 = !DILocation(line: 82, column: 18, scope: !221)
!221 = distinct !DILexicalBlock(scope: !148, file: !3, line: 81, column: 29)
!222 = !DILocation(line: 0, scope: !223)
!223 = !DILexicalBlockFile(scope: !221, file: !82, discriminator: 0)
!224 = !DILocation(line: 82, column: 35, scope: !221)
!225 = !DILocation(line: 82, column: 25, scope: !221)
!226 = !DILocation(line: 82, column: 16, scope: !221)
!227 = !DILocation(line: 83, column: 18, scope: !221)
!228 = !DILocation(line: 83, column: 36, scope: !221)
!229 = !DILocation(line: 83, column: 25, scope: !221)
!230 = !DILocation(line: 83, column: 16, scope: !221)
!231 = !DILocation(line: 85, column: 5, scope: !148)
!232 = !DILocation(line: 91, column: 8, scope: !132)
!233 = !DILocation(line: 92, column: 7, scope: !132)
!234 = !DILocation(line: 0, scope: !235)
!235 = !DILexicalBlockFile(scope: !145, file: !82, discriminator: 0)
!236 = !DILocation(line: 95, column: 15, scope: !145)
!237 = !DILocation(line: 95, column: 14, scope: !145)
!238 = !DILocation(line: 95, column: 5, scope: !145)
!239 = !DILocation(line: 95, column: 11, scope: !145)
!240 = !DILocation(line: 0, scope: !145)
!241 = !DILocation(line: 96, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !145, file: !3, line: 95, column: 23)
!243 = !DILocation(line: 96, column: 17, scope: !242)
!244 = !DILocation(line: 96, column: 15, scope: !242)
!245 = !DILocation(line: 96, column: 11, scope: !242)
!246 = !DILocation(line: 97, column: 14, scope: !242)
!247 = !DILocation(line: 97, column: 19, scope: !242)
!248 = !DILocation(line: 97, column: 17, scope: !242)
!249 = !DILocation(line: 97, column: 12, scope: !242)
!250 = !DILocation(line: 99, column: 5, scope: !145)
!251 = !DILocation(line: 101, column: 1, scope: !132)
!252 = distinct !DISubprogram(name: "do_all", linkageName: "$s9reduction6do_allyyF", scope: !2, file: !3, line: 108, type: !128, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!253 = !DILocalVariable(name: "localArr", scope: !254, file: !3, line: 110, type: !24)
!254 = distinct !DILexicalBlock(scope: !252, file: !3, line: 108, column: 15)
!255 = !DILocation(line: 110, column: 9, scope: !254)
!256 = !DILocalVariable(name: "i", scope: !257, file: !3, line: 118, type: !4)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 118, column: 5)
!258 = !DILocation(line: 118, column: 9, scope: !257)
!259 = !DILocalVariable(name: "i", scope: !260, file: !3, line: 113, type: !4)
!260 = distinct !DILexicalBlock(scope: !254, file: !3, line: 113, column: 5)
!261 = !DILocation(line: 113, column: 9, scope: !260)
!262 = !DILocation(line: 0, scope: !263)
!263 = !DILexicalBlockFile(scope: !254, file: !82, discriminator: 0)
!264 = !DILocation(line: 110, column: 39, scope: !254)
!265 = !DILocation(line: 110, column: 20, scope: !254)
!266 = !DILocation(line: 0, scope: !267)
!267 = !DILexicalBlockFile(scope: !260, file: !82, discriminator: 0)
!268 = !DILocation(line: 113, column: 18, scope: !260)
!269 = !DILocation(line: 113, column: 28, scope: !260)
!270 = !DILocation(line: 113, column: 33, scope: !260)
!271 = !DILocation(line: 113, column: 15, scope: !260)
!272 = !DILocation(line: 113, column: 14, scope: !260)
!273 = !DILocation(line: 113, column: 5, scope: !260)
!274 = !DILocation(line: 113, column: 11, scope: !260)
!275 = !DILocation(line: 0, scope: !260)
!276 = !DILocation(line: 114, column: 21, scope: !277)
!277 = distinct !DILexicalBlock(scope: !260, file: !3, line: 113, column: 36)
!278 = !DILocation(line: 115, column: 5, scope: !260)
!279 = !DILocation(line: 0, scope: !280)
!280 = !DILexicalBlockFile(scope: !257, file: !82, discriminator: 0)
!281 = !DILocation(line: 118, column: 18, scope: !257)
!282 = !DILocation(line: 118, column: 27, scope: !257)
!283 = !DILocation(line: 118, column: 32, scope: !257)
!284 = !DILocation(line: 118, column: 15, scope: !257)
!285 = !DILocation(line: 118, column: 14, scope: !257)
!286 = !DILocation(line: 118, column: 5, scope: !257)
!287 = !DILocation(line: 118, column: 11, scope: !257)
!288 = !DILocation(line: 0, scope: !257)
!289 = !DILocation(line: 119, column: 26, scope: !290)
!290 = distinct !DILexicalBlock(scope: !257, file: !3, line: 118, column: 35)
!291 = !DILocation(line: 0, scope: !292)
!292 = !DILexicalBlockFile(scope: !290, file: !82, discriminator: 0)
!293 = !DILocalVariable(name: "tmp", scope: !290, file: !3, line: 119, type: !4)
!294 = !DILocation(line: 119, column: 12, scope: !290)
!295 = !DILocation(line: 120, column: 20, scope: !290)
!296 = !DILocation(line: 121, column: 21, scope: !290)
!297 = !DILocation(line: 123, column: 5, scope: !257)
!298 = !DILocation(line: 125, column: 1, scope: !254)
!299 = distinct !DISubprogram(linkageName: "$sSaySiGWOh", scope: !2, file: !82, type: !300, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !7)
!300 = !DISubroutineType(types: null)
!301 = !DILocation(line: 0, scope: !299)
