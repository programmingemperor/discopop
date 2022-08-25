; ModuleID = 'instrumented_simple.ll'
source_filename = "simple.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ %Ts28__ContiguousArrayStorageBaseC* }>
%Ts28__ContiguousArrayStorageBaseC = type opaque
%TSi = type <{ i64 }>
%swift.type = type { i64 }

@"$s6simple3arrSaySiGvp" = hidden global %TSa zeroinitializer, align 8, !dbg !0
@"$s6simple1iSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !7
@"$s6simple9reductionSivp" = hidden global %TSi zeroinitializer, align 8, !dbg !11
@"$sSiN" = external global %swift.type, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_swift1_autolink_entries = private constant [37 x i8] c"-lswiftSwiftOnoneSupport\00-lswiftCore\00", section ".swift1_autolink_entries", align 8
@llvm.used = appending global [2 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_swift1_autolink_entries, i32 0, i32 0)], section "llvm.metadata", align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1

define protected i32 @main(i32, i8**) #0 !dbg !30 {
entry:
  call void @__dp_func_entry(i32 16385, i32 1)
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch4 = alloca [24 x i8], align 8
  %2 = alloca [32 x i8], align 8
  %access-scratch6 = alloca [24 x i8], align 8
  %3 = alloca [32 x i8], align 8
  %access-scratch8 = alloca [24 x i8], align 8
  %access-scratch9 = alloca [24 x i8], align 8
  %4 = alloca %TSi, align 8
  %access-scratch12 = alloca [24 x i8], align 8
  %access-scratch13 = alloca [24 x i8], align 8
  %access-scratch14 = alloca [24 x i8], align 8
  %access-scratch15 = alloca [24 x i8], align 8
  %5 = alloca %TSi, align 8
  %access-scratch18 = alloca [24 x i8], align 8
  %6 = alloca [32 x i8], align 8
  %access-scratch20 = alloca [24 x i8], align 8
  %access-scratch21 = alloca [24 x i8], align 8
  %access-scratch22 = alloca [24 x i8], align 8
  %access-scratch23 = alloca [24 x i8], align 8
  %access-scratch24 = alloca [24 x i8], align 8
  %7 = alloca %TSi, align 8
  %access-scratch27 = alloca [24 x i8], align 8
  %8 = alloca [32 x i8], align 8
  %9 = bitcast i8** %1 to i8*
  call void @__dp_call(i32 16385), !dbg !35
  %10 = call swiftcc { %Ts28__ContiguousArrayStorageBaseC*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64 4, %swift.type* @"$sSiN"), !dbg !35
  %11 = extractvalue { %Ts28__ContiguousArrayStorageBaseC*, i8* } %10, 0, !dbg !35
  %12 = extractvalue { %Ts28__ContiguousArrayStorageBaseC*, i8* } %10, 1, !dbg !35
  %13 = bitcast i8* %12 to %TSi*, !dbg !35
  %._value = getelementptr inbounds %TSi, %TSi* %13, i32 0, i32 0, !dbg !35
  %14 = ptrtoint i64* %._value to i64
  call void @__dp_write(i32 16385, i64 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 1, i64* %._value, align 8, !dbg !35
  %15 = getelementptr inbounds %TSi, %TSi* %13, i64 1, !dbg !37
  %._value1 = getelementptr inbounds %TSi, %TSi* %15, i32 0, i32 0, !dbg !37
  %16 = ptrtoint i64* %._value1 to i64
  call void @__dp_write(i32 16385, i64 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 2, i64* %._value1, align 8, !dbg !37
  %17 = getelementptr inbounds %TSi, %TSi* %13, i64 2, !dbg !38
  %._value2 = getelementptr inbounds %TSi, %TSi* %17, i32 0, i32 0, !dbg !38
  %18 = ptrtoint i64* %._value2 to i64
  call void @__dp_write(i32 16385, i64 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 3, i64* %._value2, align 8, !dbg !38
  %19 = getelementptr inbounds %TSi, %TSi* %13, i64 3, !dbg !39
  %._value3 = getelementptr inbounds %TSi, %TSi* %19, i32 0, i32 0, !dbg !39
  %20 = ptrtoint i64* %._value3 to i64
  call void @__dp_write(i32 16385, i64 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 4, i64* %._value3, align 8, !dbg !39
  call void @__dp_call(i32 16385), !dbg !40
  %21 = call swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$sSa12arrayLiteralSayxGxd_tcfCSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC* %11), !dbg !40
  %22 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_write(i32 16385, i64 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store %Ts28__ContiguousArrayStorageBaseC* %21, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !40
  %23 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16386, i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !41
  %24 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple9reductionSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16387, i64 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple9reductionSivp", i32 0, i32 0), align 8, !dbg !43
  %25 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !45
  call void @__dp_call(i32 16389), !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %25), !dbg !45
  call void @__dp_call(i32 16389), !dbg !45
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch, i64 32, i8* null) #3, !dbg !45
  %26 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16389, i64 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %27 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !45
  call void @__dp_call(i32 16389), !dbg !45
  call void @swift_endAccess([24 x i8]* %access-scratch) #3, !dbg !45
  %28 = bitcast [24 x i8]* %access-scratch to i8*, !dbg !45
  call void @__dp_call(i32 16389), !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %28), !dbg !45
  %29 = bitcast [24 x i8]* %access-scratch4 to i8*, !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %29), !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch4, i64 33, i8* null) #3, !dbg !47
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0, !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %30), !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  %31 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %30, i64 %27, %TSa* nocapture swiftself dereferenceable(8) @"$s6simple3arrSaySiGvp"), !dbg !47
  %32 = extractvalue { i8*, %TSi* } %31, 0, !dbg !47
  %33 = extractvalue { i8*, %TSi* } %31, 1, !dbg !47
  %._value5 = getelementptr inbounds %TSi, %TSi* %33, i32 0, i32 0, !dbg !47
  %34 = ptrtoint i64* %._value5 to i64
  call void @__dp_write(i32 16389, i64 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %._value5, align 8, !dbg !47
  %35 = bitcast i8* %32 to void (i8*, i1)*, !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call swiftcc void %35(i8* noalias dereferenceable(32) %30, i1 false), !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %30), !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call void @swift_endAccess([24 x i8]* %access-scratch4) #3, !dbg !47
  %36 = bitcast [24 x i8]* %access-scratch4 to i8*, !dbg !47
  call void @__dp_call(i32 16389), !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %36), !dbg !47
  %37 = bitcast [24 x i8]* %access-scratch6 to i8*, !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %37), !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch6, i64 33, i8* null) #3, !dbg !48
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %38), !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  %39 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %38, i64 1, %TSa* nocapture swiftself dereferenceable(8) @"$s6simple3arrSaySiGvp"), !dbg !48
  %40 = extractvalue { i8*, %TSi* } %39, 0, !dbg !48
  %41 = extractvalue { i8*, %TSi* } %39, 1, !dbg !48
  %._value7 = getelementptr inbounds %TSi, %TSi* %41, i32 0, i32 0, !dbg !48
  %42 = ptrtoint i64* %._value7 to i64
  call void @__dp_write(i32 16390, i64 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %._value7, align 8, !dbg !48
  %43 = bitcast i8* %40 to void (i8*, i1)*, !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call swiftcc void %43(i8* noalias dereferenceable(32) %38, i1 false), !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %38), !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call void @swift_endAccess([24 x i8]* %access-scratch6) #3, !dbg !48
  %44 = bitcast [24 x i8]* %access-scratch6 to i8*, !dbg !48
  call void @__dp_call(i32 16390), !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %44), !dbg !48
  %45 = bitcast [24 x i8]* %access-scratch8 to i8*, !dbg !50
  call void @__dp_call(i32 16393), !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %45), !dbg !50
  call void @__dp_call(i32 16393), !dbg !50
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch8, i64 32, i8* null) #3, !dbg !50
  %46 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16393, i64 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %47 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !50
  call void @__dp_call(i32 16393), !dbg !50
  call void @swift_endAccess([24 x i8]* %access-scratch8) #3, !dbg !50
  %48 = bitcast [24 x i8]* %access-scratch8 to i8*, !dbg !50
  call void @__dp_call(i32 16393), !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %48), !dbg !50
  %49 = bitcast [24 x i8]* %access-scratch9 to i8*, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %49), !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch9, i64 32, i8* null) #3, !dbg !52
  %50 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_read(i32 16393, i64 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %51 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !52
  %52 = bitcast %TSi* %4 to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %52), !dbg !53
  %loadIdx = call { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* null, i64 %47, %TSa* @"$s6simple3arrSaySiGvp")
  %unpackedIdx = extractvalue { i8*, %TSi* } %loadIdx, 1
  %53 = ptrtoint %TSi* %unpackedIdx to i64
  call void @__dp_read(i32 16393, i64 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  call void @__dp_call(i32 16393), !dbg !52
  %54 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %47, %Ts28__ContiguousArrayStorageBaseC* %51), !dbg !52
  %._value10 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0, !dbg !52
  %55 = ptrtoint i64* %._value10 to i64
  call void @__dp_write(i32 16393, i64 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 %54, i64* %._value10, align 8, !dbg !52
  %._value11 = getelementptr inbounds %TSi, %TSi* %4, i32 0, i32 0, !dbg !52
  %56 = ptrtoint i64* %._value11 to i64
  call void @__dp_read(i32 16393, i64 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %57 = load i64, i64* %._value11, align 8, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @swift_endAccess([24 x i8]* %access-scratch9) #3, !dbg !52
  %58 = bitcast [24 x i8]* %access-scratch9 to i8*, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %58), !dbg !52
  %59 = bitcast [24 x i8]* %access-scratch12 to i8*, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %59), !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple9reductionSivp" to i8*), [24 x i8]* %access-scratch12, i64 33, i8* null) #3, !dbg !52
  %60 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple9reductionSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16393, i64 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  store i64 %57, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple9reductionSivp", i32 0, i32 0), align 8, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @swift_endAccess([24 x i8]* %access-scratch12) #3, !dbg !52
  %61 = bitcast [24 x i8]* %access-scratch12 to i8*, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %61), !dbg !52
  %62 = bitcast %TSi* %4 to i8*, !dbg !52
  call void @__dp_call(i32 16393), !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62), !dbg !52
  %63 = bitcast [24 x i8]* %access-scratch13 to i8*, !dbg !56
  call void @__dp_call(i32 16396), !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %63), !dbg !56
  call void @__dp_call(i32 16396), !dbg !56
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch13, i64 32, i8* null) #3, !dbg !56
  %64 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16396, i64 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %65 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !56
  call void @__dp_call(i32 16396), !dbg !56
  call void @swift_endAccess([24 x i8]* %access-scratch13) #3, !dbg !56
  %66 = bitcast [24 x i8]* %access-scratch13 to i8*, !dbg !56
  call void @__dp_call(i32 16396), !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %66), !dbg !56
  %67 = bitcast [24 x i8]* %access-scratch14 to i8*, !dbg !58
  call void @__dp_call(i32 16396), !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %67), !dbg !58
  call void @__dp_call(i32 16396), !dbg !58
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch14, i64 32, i8* null) #3, !dbg !58
  %68 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16396, i64 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %69 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !58
  call void @__dp_call(i32 16396), !dbg !58
  call void @swift_endAccess([24 x i8]* %access-scratch14) #3, !dbg !58
  %70 = bitcast [24 x i8]* %access-scratch14 to i8*, !dbg !58
  call void @__dp_call(i32 16396), !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %70), !dbg !58
  %71 = bitcast [24 x i8]* %access-scratch15 to i8*, !dbg !59
  call void @__dp_call(i32 16396), !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %71), !dbg !59
  call void @__dp_call(i32 16396), !dbg !59
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch15, i64 32, i8* null) #3, !dbg !59
  %72 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_read(i32 16396, i64 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %73 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !59
  %74 = bitcast %TSi* %5 to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %74), !dbg !60
  %loadIdx1 = call { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* null, i64 %69, %TSa* @"$s6simple3arrSaySiGvp")
  %unpackedIdx2 = extractvalue { i8*, %TSi* } %loadIdx1, 1
  %75 = ptrtoint %TSi* %unpackedIdx2 to i64
  call void @__dp_read(i32 16396, i64 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  call void @__dp_call(i32 16396), !dbg !59
  %76 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %69, %Ts28__ContiguousArrayStorageBaseC* %73), !dbg !59
  %._value16 = getelementptr inbounds %TSi, %TSi* %5, i32 0, i32 0, !dbg !59
  %77 = ptrtoint i64* %._value16 to i64
  call void @__dp_write(i32 16396, i64 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 %76, i64* %._value16, align 8, !dbg !59
  %._value17 = getelementptr inbounds %TSi, %TSi* %5, i32 0, i32 0, !dbg !59
  %78 = ptrtoint i64* %._value17 to i64
  call void @__dp_read(i32 16396, i64 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %79 = load i64, i64* %._value17, align 8, !dbg !59
  call void @__dp_call(i32 16396), !dbg !59
  call void @swift_endAccess([24 x i8]* %access-scratch15) #3, !dbg !59
  %80 = bitcast [24 x i8]* %access-scratch15 to i8*, !dbg !59
  call void @__dp_call(i32 16396), !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %80), !dbg !59
  call void @__dp_call(i32 16396), !dbg !62
  %81 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %79, i64 1), !dbg !62
  %82 = extractvalue { i64, i1 } %81, 0, !dbg !62
  %83 = extractvalue { i64, i1 } %81, 1, !dbg !62
  br i1 %83, label %136, label %84, !dbg !62

; <label>:84:                                     ; preds = %entry
  %85 = bitcast %TSi* %5 to i8*, !dbg !62
  call void @__dp_call(i32 16396), !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85), !dbg !62
  %86 = bitcast [24 x i8]* %access-scratch18 to i8*, !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %86), !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch18, i64 33, i8* null) #3, !dbg !63
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0, !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %87), !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  %88 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %87, i64 %65, %TSa* nocapture swiftself dereferenceable(8) @"$s6simple3arrSaySiGvp"), !dbg !63
  %89 = extractvalue { i8*, %TSi* } %88, 0, !dbg !63
  %90 = extractvalue { i8*, %TSi* } %88, 1, !dbg !63
  %._value19 = getelementptr inbounds %TSi, %TSi* %90, i32 0, i32 0, !dbg !63
  %91 = ptrtoint i64* %._value19 to i64
  call void @__dp_write(i32 16396, i64 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store i64 %82, i64* %._value19, align 8, !dbg !63
  %92 = bitcast i8* %89 to void (i8*, i1)*, !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call swiftcc void %92(i8* noalias dereferenceable(32) %87, i1 false), !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %87), !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call void @swift_endAccess([24 x i8]* %access-scratch18) #3, !dbg !63
  %93 = bitcast [24 x i8]* %access-scratch18 to i8*, !dbg !63
  call void @__dp_call(i32 16396), !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %93), !dbg !63
  %94 = bitcast [24 x i8]* %access-scratch20 to i8*, !dbg !64
  call void @__dp_call(i32 16397), !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %94), !dbg !64
  call void @__dp_call(i32 16397), !dbg !64
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch20, i64 32, i8* null) #3, !dbg !64
  %95 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16397, i64 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %96 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !64
  call void @__dp_call(i32 16397), !dbg !64
  call void @swift_endAccess([24 x i8]* %access-scratch20) #3, !dbg !64
  %97 = bitcast [24 x i8]* %access-scratch20 to i8*, !dbg !64
  call void @__dp_call(i32 16397), !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %97), !dbg !64
  call void @__dp_call(i32 16397), !dbg !66
  %98 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %96, i64 1), !dbg !66
  %99 = extractvalue { i64, i1 } %98, 0, !dbg !66
  %100 = extractvalue { i64, i1 } %98, 1, !dbg !66
  br i1 %100, label %137, label %101, !dbg !66

; <label>:101:                                    ; preds = %84
  %102 = bitcast [24 x i8]* %access-scratch21 to i8*, !dbg !67
  call void @__dp_call(i32 16397), !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %102), !dbg !67
  call void @__dp_call(i32 16397), !dbg !67
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch21, i64 33, i8* null) #3, !dbg !67
  %103 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_write(i32 16397, i64 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i64 %99, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !67
  call void @__dp_call(i32 16397), !dbg !67
  call void @swift_endAccess([24 x i8]* %access-scratch21) #3, !dbg !67
  %104 = bitcast [24 x i8]* %access-scratch21 to i8*, !dbg !67
  call void @__dp_call(i32 16397), !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %104), !dbg !67
  %105 = bitcast [24 x i8]* %access-scratch22 to i8*, !dbg !68
  call void @__dp_call(i32 16399), !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %105), !dbg !68
  call void @__dp_call(i32 16399), !dbg !68
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch22, i64 32, i8* null) #3, !dbg !68
  %106 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16399, i64 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %107 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !68
  call void @__dp_call(i32 16399), !dbg !68
  call void @swift_endAccess([24 x i8]* %access-scratch22) #3, !dbg !68
  %108 = bitcast [24 x i8]* %access-scratch22 to i8*, !dbg !68
  call void @__dp_call(i32 16399), !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %108), !dbg !68
  %109 = bitcast [24 x i8]* %access-scratch23 to i8*, !dbg !70
  call void @__dp_call(i32 16399), !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %109), !dbg !70
  call void @__dp_call(i32 16399), !dbg !70
  call void @swift_beginAccess(i8* bitcast (%TSi* @"$s6simple1iSivp" to i8*), [24 x i8]* %access-scratch23, i64 32, i8* null) #3, !dbg !70
  %110 = ptrtoint i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0) to i64
  call void @__dp_read(i32 16399, i64 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %111 = load i64, i64* getelementptr inbounds (%TSi, %TSi* @"$s6simple1iSivp", i32 0, i32 0), align 8, !dbg !70
  call void @__dp_call(i32 16399), !dbg !70
  call void @swift_endAccess([24 x i8]* %access-scratch23) #3, !dbg !70
  %112 = bitcast [24 x i8]* %access-scratch23 to i8*, !dbg !70
  call void @__dp_call(i32 16399), !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %112), !dbg !70
  %113 = bitcast [24 x i8]* %access-scratch24 to i8*, !dbg !71
  call void @__dp_call(i32 16399), !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %113), !dbg !71
  call void @__dp_call(i32 16399), !dbg !71
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch24, i64 32, i8* null) #3, !dbg !71
  %114 = ptrtoint %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0) to i64
  call void @__dp_read(i32 16399, i64 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %115 = load %Ts28__ContiguousArrayStorageBaseC*, %Ts28__ContiguousArrayStorageBaseC** getelementptr inbounds (%TSa, %TSa* @"$s6simple3arrSaySiGvp", i32 0, i32 0, i32 0), align 8, !dbg !71
  %116 = bitcast %TSi* %7 to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %116), !dbg !72
  %loadIdx3 = call { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* null, i64 %111, %TSa* @"$s6simple3arrSaySiGvp")
  %unpackedIdx4 = extractvalue { i8*, %TSi* } %loadIdx3, 1
  %117 = ptrtoint %TSi* %unpackedIdx4 to i64
  call void @__dp_read(i32 16399, i64 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  call void @__dp_call(i32 16399), !dbg !71
  %118 = call swiftcc i64 @"$sSayxSicigSi_Tg5"(i64 %111, %Ts28__ContiguousArrayStorageBaseC* %115), !dbg !71
  %._value25 = getelementptr inbounds %TSi, %TSi* %7, i32 0, i32 0, !dbg !71
  %119 = ptrtoint i64* %._value25 to i64
  call void @__dp_write(i32 16399, i64 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 %118, i64* %._value25, align 8, !dbg !71
  %._value26 = getelementptr inbounds %TSi, %TSi* %7, i32 0, i32 0, !dbg !71
  %120 = ptrtoint i64* %._value26 to i64
  call void @__dp_read(i32 16399, i64 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %121 = load i64, i64* %._value26, align 8, !dbg !71
  call void @__dp_call(i32 16399), !dbg !71
  call void @swift_endAccess([24 x i8]* %access-scratch24) #3, !dbg !71
  %122 = bitcast [24 x i8]* %access-scratch24 to i8*, !dbg !71
  call void @__dp_call(i32 16399), !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %122), !dbg !71
  call void @__dp_call(i32 16399), !dbg !74
  %123 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %121, i64 1), !dbg !74
  %124 = extractvalue { i64, i1 } %123, 0, !dbg !74
  %125 = extractvalue { i64, i1 } %123, 1, !dbg !74
  br i1 %125, label %138, label %126, !dbg !74

; <label>:126:                                    ; preds = %101
  %127 = bitcast %TSi* %7 to i8*, !dbg !74
  call void @__dp_call(i32 16399), !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %127), !dbg !74
  %128 = bitcast [24 x i8]* %access-scratch27 to i8*, !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %128), !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call void @swift_beginAccess(i8* bitcast (%TSa* @"$s6simple3arrSaySiGvp" to i8*), [24 x i8]* %access-scratch27, i64 33, i8* null) #3, !dbg !75
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %129), !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  %130 = call swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32) %129, i64 %107, %TSa* nocapture swiftself dereferenceable(8) @"$s6simple3arrSaySiGvp"), !dbg !75
  %131 = extractvalue { i8*, %TSi* } %130, 0, !dbg !75
  %132 = extractvalue { i8*, %TSi* } %130, 1, !dbg !75
  %._value28 = getelementptr inbounds %TSi, %TSi* %132, i32 0, i32 0, !dbg !75
  %133 = ptrtoint i64* %._value28 to i64
  call void @__dp_write(i32 16399, i64 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store i64 %124, i64* %._value28, align 8, !dbg !75
  %134 = bitcast i8* %131 to void (i8*, i1)*, !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call swiftcc void %134(i8* noalias dereferenceable(32) %129, i1 false), !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %129), !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call void @swift_endAccess([24 x i8]* %access-scratch27) #3, !dbg !75
  %135 = bitcast [24 x i8]* %access-scratch27 to i8*, !dbg !75
  call void @__dp_call(i32 16399), !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %135), !dbg !75
  call void @__dp_finalize(i32 16399), !dbg !75
  ret i32 0, !dbg !75

; <label>:136:                                    ; preds = %entry
  call void @__dp_finalize(i32 16396), !dbg !62
  call void @llvm.trap(), !dbg !62
  unreachable, !dbg !62

; <label>:137:                                    ; preds = %84
  call void @__dp_finalize(i32 16397), !dbg !66
  call void @llvm.trap(), !dbg !66
  unreachable, !dbg !66

; <label>:138:                                    ; preds = %101
  call void @__dp_finalize(i32 16399), !dbg !74
  call void @llvm.trap(), !dbg !74
  unreachable, !dbg !74
}

declare swiftcc { %Ts28__ContiguousArrayStorageBaseC*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64, %swift.type*) #0

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

declare swiftcc %Ts28__ContiguousArrayStorageBaseC* @"$sSa12arrayLiteralSayxGxd_tcfCSi_Tg5"(%Ts28__ContiguousArrayStorageBaseC*) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @swift_beginAccess(i8*, [24 x i8]*, i64, i8*) #3

; Function Attrs: nounwind
declare void @swift_endAccess([24 x i8]*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare swiftcc { i8*, %TSi* } @"$sSayxSiciMSi_Tg5"(i8* noalias dereferenceable(32), i64, %TSa* nocapture swiftself dereferenceable(8)) #0

; Function Attrs: nounwind readnone
declare i8* @llvm.coro.prepare.retcon(i8*) #4

declare swiftcc i64 @"$sSayxSicigSi_Tg5"(i64, %Ts28__ContiguousArrayStorageBaseC*) #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

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
attributes #1 = { cold noreturn nounwind }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!13, !20}
!swift.module.flags = !{!22}
!llvm.linker.options = !{}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28}
!llvm.asan.globals = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arr", linkageName: "$s6simple3arrSaySiGvp", scope: !2, file: !3, line: 1, type: !4, isLocal: false, isDefinition: true)
!2 = !DIModule(scope: null, name: "simple")
!3 = !DIFile(filename: "simple.swift", directory: "/home/simonschmalfuss/discopop/swift/CU_comp/reduction/arr_test")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Array", scope: !5, file: !3, size: 64, elements: !6, runtimeLang: DW_LANG_Swift, identifier: "$sSaySiGD")
!5 = !DIModule(scope: null, name: "Swift", includePath: "/home/simonschmalfuss/swift-5.1/swift-5.1.5-RELEASE-ubuntu18.04/usr/lib/swift/linux/x86_64/Swift.swiftmodule")
!6 = !{}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "i", linkageName: "$s6simple1iSivp", scope: !2, file: !3, line: 2, type: !9, isLocal: false, isDefinition: true)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Int", scope: !5, file: !10, size: 64, elements: !6, runtimeLang: DW_LANG_Swift, identifier: "$sSiD")
!10 = !DIFile(filename: "swift-5.1/swift-5.1.5-RELEASE-ubuntu18.04/usr/lib/swift/linux/x86_64/Swift.swiftmodule", directory: "/home/simonschmalfuss")
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "reduction", linkageName: "$s6simple9reductionSivp", scope: !2, file: !3, line: 3, type: !9, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_Swift, file: !3, producer: "Swift version 5.1.5 (swift-5.1.5-RELEASE)", isOptimized: false, runtimeVersion: 5, emissionKind: FullDebug, enums: !6, globals: !14, imports: !15)
!14 = !{!0, !7, !11}
!15 = !{!16, !17, !18}
!16 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !3, entity: !2, file: !3)
!17 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !3, entity: !5, file: !3)
!18 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !3, entity: !19, file: !3)
!19 = !DIModule(scope: null, name: "SwiftOnoneSupport", includePath: "/home/simonschmalfuss/swift-5.1/swift-5.1.5-RELEASE-ubuntu18.04/usr/lib/swift/linux/x86_64/SwiftOnoneSupport.swiftmodule")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 7.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, nameTableKind: None)
!21 = !DIFile(filename: "<swift-imported-modules>", directory: "/home/simonschmalfuss/discopop/swift/CU_comp/reduction/arr_test")
!22 = !{!"standard-library", i1 false}
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 4, !"Objective-C Garbage Collection", i32 83953408}
!28 = !{i32 1, !"Swift Version", i32 7}
!29 = !{[2 x i8*]* @llvm.used, null, null, i1 false, i1 true}
!30 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !2, file: !3, line: 1, type: !31, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !6)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !33, !34}
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Int32", scope: !5, file: !10, size: 32, elements: !6, runtimeLang: DW_LANG_Swift, identifier: "$ss5Int32VD")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeMutablePointer", scope: !5, file: !3, size: 64, elements: !6, runtimeLang: DW_LANG_Swift, identifier: "$sSpySpys4Int8VGSgGD")
!35 = !DILocation(line: 1, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !30, file: !3, line: 1, column: 1)
!37 = !DILocation(line: 1, column: 15, scope: !36)
!38 = !DILocation(line: 1, column: 18, scope: !36)
!39 = !DILocation(line: 1, column: 21, scope: !36)
!40 = !DILocation(line: 1, column: 11, scope: !36)
!41 = !DILocation(line: 2, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !30, file: !3, line: 2, column: 1)
!43 = !DILocation(line: 3, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !30, file: !3, line: 3, column: 1)
!45 = !DILocation(line: 5, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !30, file: !3, line: 5, column: 1)
!47 = !DILocation(line: 5, column: 8, scope: !46)
!48 = !DILocation(line: 6, column: 8, scope: !49)
!49 = distinct !DILexicalBlock(scope: !30, file: !3, line: 6, column: 1)
!50 = !DILocation(line: 9, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !30, file: !3, line: 9, column: 1)
!52 = !DILocation(line: 9, column: 11, scope: !51)
!53 = !DILocation(line: 0, scope: !54)
!54 = !DILexicalBlockFile(scope: !51, file: !55, discriminator: 0)
!55 = !DIFile(filename: "<compiler-generated>", directory: "")
!56 = !DILocation(line: 12, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !30, file: !3, line: 12, column: 1)
!58 = !DILocation(line: 12, column: 14, scope: !57)
!59 = !DILocation(line: 12, column: 13, scope: !57)
!60 = !DILocation(line: 0, scope: !61)
!61 = !DILexicalBlockFile(scope: !57, file: !55, discriminator: 0)
!62 = !DILocation(line: 12, column: 17, scope: !57)
!63 = !DILocation(line: 12, column: 8, scope: !57)
!64 = !DILocation(line: 13, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !30, file: !3, line: 13, column: 1)
!66 = !DILocation(line: 13, column: 7, scope: !65)
!67 = !DILocation(line: 13, column: 3, scope: !65)
!68 = !DILocation(line: 15, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !30, file: !3, line: 15, column: 1)
!70 = !DILocation(line: 15, column: 14, scope: !69)
!71 = !DILocation(line: 15, column: 13, scope: !69)
!72 = !DILocation(line: 0, scope: !73)
!73 = !DILexicalBlockFile(scope: !69, file: !55, discriminator: 0)
!74 = !DILocation(line: 15, column: 17, scope: !69)
!75 = !DILocation(line: 15, column: 8, scope: !69)
