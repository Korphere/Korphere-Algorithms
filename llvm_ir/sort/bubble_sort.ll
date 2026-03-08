; ModuleID = 'bubble_sort.f61ecfd6c8385afe-cgu.0'
source_filename = "bubble_sort.f61ecfd6c8385afe-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
define void @bubble_sort(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %targetc, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %target) unnamed_addr #0 personality ptr @__CxxFrameHandler3 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %target, i64 8
  %target.val = load ptr, ptr %0, align 8, !nonnull !2, !noundef !2
  %1 = getelementptr inbounds nuw i8, ptr %target, i64 16
  %target.val10 = load i64, ptr %1, align 8, !noundef !2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %2 = shl nuw nsw i64 %target.val10, 2
  %3 = icmp eq i64 %target.val10, 0
  br i1 %3, label %_RNvXsa_NtCsj8myL1OaG6u_5alloc3vecINtB5_3VeclENtNtCs7etWgmIti2v_4core5clone5Clone5cloneCsl85L5uyUrpy_11bubble_sort.exit.thread, label %bb5.i.i.i.i

_RNvXsa_NtCsj8myL1OaG6u_5alloc3vecINtB5_3VeclENtNtCs7etWgmIti2v_4core5clone5Clone5cloneCsl85L5uyUrpy_11bubble_sort.exit.thread: ; preds = %start
  store i64 %target.val10, ptr %targetc, align 8, !alias.scope !9, !noalias !10
  %4 = getelementptr inbounds nuw i8, ptr %targetc, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %4, align 8, !alias.scope !9, !noalias !10
  %5 = getelementptr inbounds nuw i8, ptr %targetc, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 inttoptr (i64 4 to ptr), ptr nonnull readonly align 4 %target.val, i64 %2, i1 false), !noalias !9
  store i64 %target.val10, ptr %5, align 8, !alias.scope !9, !noalias !10
  br label %bb9

bb5.i.i.i.i:                                      ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCscmxNBVaFQk8_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9, !noalias !12
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCscmxNBVaFQk8_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, -9223372036854775807) 4) #9, !noalias !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i, label %bb8.preheader

bb3.i.i.i:                                        ; preds = %bb5.i.i.i.i
; call alloc::raw_vec::handle_error
  tail call void @_RNvNtCsj8myL1OaG6u_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %2) #10, !noalias !15
  unreachable

bb8.preheader:                                    ; preds = %bb5.i.i.i.i
  store i64 %target.val10, ptr %targetc, align 8, !alias.scope !9, !noalias !10
  %8 = getelementptr inbounds nuw i8, ptr %targetc, i64 8
  store ptr %6, ptr %8, align 8, !alias.scope !9, !noalias !10
  %9 = getelementptr inbounds nuw i8, ptr %targetc, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull readonly align 4 %target.val, i64 %2, i1 false), !noalias !9
  store i64 %target.val10, ptr %9, align 8, !alias.scope !9, !noalias !10
  %_20 = icmp ult i64 %target.val10, 2305843009213693952
  tail call void @llvm.assume(i1 %_20)
  %invariant.gep = getelementptr i8, ptr %6, i64 -4
  br label %bb8

bb2.loopexit:                                     ; preds = %bb6, %bb8
  %exitcond18.not = icmp eq i64 %11, %target.val10
  br i1 %exitcond18.not, label %bb9, label %bb8

bb9:                                              ; preds = %bb2.loopexit, %_RNvXsa_NtCsj8myL1OaG6u_5alloc3vecINtB5_3VeclENtNtCs7etWgmIti2v_4core5clone5Clone5cloneCsl85L5uyUrpy_11bubble_sort.exit.thread
  %target.val11 = load i64, ptr %target, align 8, !range !16, !noundef !2
  %10 = icmp eq i64 %target.val11, 0
  br i1 %10, label %_RINvNtCs7etWgmIti2v_4core3ptr13drop_in_placeINtNtCsj8myL1OaG6u_5alloc3vec3VeclEECsl85L5uyUrpy_11bubble_sort.exit, label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb9
  %alloc_size.i.i.i.i.i = shl nuw i64 %target.val11, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCscmxNBVaFQk8_7___rustc14___rust_dealloc(ptr noundef nonnull %target.val, i64 noundef %alloc_size.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #9
  br label %_RINvNtCs7etWgmIti2v_4core3ptr13drop_in_placeINtNtCsj8myL1OaG6u_5alloc3vec3VeclEECsl85L5uyUrpy_11bubble_sort.exit

_RINvNtCs7etWgmIti2v_4core3ptr13drop_in_placeINtNtCsj8myL1OaG6u_5alloc3vec3VeclEECsl85L5uyUrpy_11bubble_sort.exit: ; preds = %bb9, %bb2.i.i.i.i
  ret void

bb8:                                              ; preds = %bb8.preheader, %bb2.loopexit
  %iter.sroa.0.016 = phi i64 [ %11, %bb2.loopexit ], [ 0, %bb8.preheader ]
  %11 = add nuw nsw i64 %iter.sroa.0.016, 1
  %_2613 = icmp samesign ult i64 %11, %target.val10
  br i1 %_2613, label %bb13, label %bb2.loopexit

bb13:                                             ; preds = %bb8, %bb6
  %iter1.sroa.0.014 = phi i64 [ %12, %bb6 ], [ %11, %bb8 ]
  %12 = add nuw i64 %iter1.sroa.0.014, 1
  %_10 = getelementptr inbounds nuw i32, ptr %6, i64 %iter1.sroa.0.014
  %_9 = load i32, ptr %_10, align 4, !noundef !2
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter1.sroa.0.014
  %_11 = load i32, ptr %gep, align 4, !noundef !2
  %_8 = icmp slt i32 %_9, %_11
  br i1 %_8, label %bb16, label %bb6

bb6:                                              ; preds = %bb13, %bb16
  %exitcond.not = icmp eq i64 %12, %target.val10
  br i1 %exitcond.not, label %bb2.loopexit, label %bb13

bb16:                                             ; preds = %bb13
  store i32 %_11, ptr %_10, align 4
  store i32 %_9, ptr %gep, align 4
  br label %bb6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define void @bubble_sort_mut(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %target) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %target, i64 16
  %iter2 = load i64, ptr %0, align 8, !noundef !2
  %_19 = icmp ult i64 %iter2, 2305843009213693952
  tail call void @llvm.assume(i1 %_19)
  %_2012.not = icmp eq i64 %iter2, 0
  br i1 %_2012.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %target, i64 8
  %_30 = load ptr, ptr %1, align 8, !nonnull !2
  %invariant.gep = getelementptr i8, ptr %_30, i64 -4
  br label %bb6

bb1.loopexit:                                     ; preds = %bb5, %bb6
  %exitcond15.not = icmp eq i64 %2, %iter2
  br i1 %exitcond15.not, label %bb7, label %bb6

bb7:                                              ; preds = %bb1.loopexit, %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %target, i64 24, i1 false)
  ret void

bb6:                                              ; preds = %bb6.lr.ph, %bb1.loopexit
  %iter.sroa.0.013 = phi i64 [ 0, %bb6.lr.ph ], [ %2, %bb1.loopexit ]
  %2 = add nuw nsw i64 %iter.sroa.0.013, 1
  %_2510 = icmp samesign ult i64 %2, %iter2
  br i1 %_2510, label %bb11, label %bb1.loopexit

bb11:                                             ; preds = %bb6, %bb5
  %iter1.sroa.0.011 = phi i64 [ %3, %bb5 ], [ %2, %bb6 ]
  %3 = add nuw nsw i64 %iter1.sroa.0.011, 1
  %_9 = getelementptr inbounds nuw i32, ptr %_30, i64 %iter1.sroa.0.011
  %_8 = load i32, ptr %_9, align 4, !noundef !2
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter1.sroa.0.011
  %_10 = load i32, ptr %gep, align 4, !noundef !2
  %_7 = icmp slt i32 %_8, %_10
  br i1 %_7, label %bb14, label %bb5

bb5:                                              ; preds = %bb11, %bb14
  %exitcond.not = icmp eq i64 %3, %iter2
  br i1 %exitcond.not, label %bb1.loopexit, label %bb11

bb14:                                             ; preds = %bb11
  store i32 %_10, ptr %_9, align 4
  store i32 %_8, ptr %gep, align 4
  br label %bb5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind uwtable
declare void @_RNvCscmxNBVaFQk8_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; __rustc::__rust_alloc
; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCscmxNBVaFQk8_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #4

declare i32 @__CxxFrameHandler3(...) unnamed_addr #5

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind optsize uwtable
declare void @_RNvNtCsj8myL1OaG6u_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #6

; __rustc::__rust_dealloc
; Function Attrs: nounwind allockind("free") uwtable
declare void @_RNvCscmxNBVaFQk8_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "target-cpu"="znver1" "target-features"="+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,-invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,-vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,-wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,-clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,-rdpid,-fma4,-avx512vbmi,-shstk,-vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a,+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable "target-cpu"="znver1" "target-features"="+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,-invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,-vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,-wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,-clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,-rdpid,-fma4,-avx512vbmi,-shstk,-vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a,+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCscmxNBVaFQk8_7___rustc19___rust_alloc_zeroed" "target-cpu"="znver1" "target-features"="+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,-invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,-vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,-wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,-clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,-rdpid,-fma4,-avx512vbmi,-shstk,-vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a,+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #5 = { "target-cpu"="znver1" }
attributes #6 = { cold minsize noreturn nounwind optsize uwtable "target-cpu"="znver1" "target-features"="+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,-invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,-vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,-wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,-clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,-rdpid,-fma4,-avx512vbmi,-shstk,-vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a,+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #7 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "target-cpu"="znver1" "target-features"="+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,-invpcid,+64bit,+xsavec,-avx10.1-512,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-avx10.1-256,-sha512,-avxvnni,-rtm,+adx,+avx2,-hreset,-movdiri,-serialize,-vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,-avx10.2-256,-gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,+clzero,+mwaitx,-lwp,+lzcnt,+sha,-movdir64b,-ppx,-wbnoinvd,-enqcmd,-amx-transpose,-avx10.2-512,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,-clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,-rdpid,-fma4,-avx512vbmi,-shstk,-vaes,-waitpkg,-sgx,+fxsr,-avx512dq,+sse4a,+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.94.0-nightly (8d670b93d 2025-12-31)"}
!2 = !{}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNvXsa_NtCsj8myL1OaG6u_5alloc3vecINtB5_3VeclENtNtCs7etWgmIti2v_4core5clone5Clone5cloneCsl85L5uyUrpy_11bubble_sort: %_0"}
!5 = distinct !{!5, !"_RNvXsa_NtCsj8myL1OaG6u_5alloc3vecINtB5_3VeclENtNtCs7etWgmIti2v_4core5clone5Clone5cloneCsl85L5uyUrpy_11bubble_sort"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvXs_NvMNtCsj8myL1OaG6u_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsl85L5uyUrpy_11bubble_sort: %v"}
!8 = distinct !{!8, !"_RINvXs_NvMNtCsj8myL1OaG6u_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsl85L5uyUrpy_11bubble_sort"}
!9 = !{!7, !4}
!10 = !{!11}
!11 = distinct !{!11, !8, !"_RINvXs_NvMNtCsj8myL1OaG6u_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsl85L5uyUrpy_11bubble_sort: %s.0"}
!12 = !{!13, !7, !11, !4}
!13 = distinct !{!13, !14, !"_RNvMs2_NtCsj8myL1OaG6u_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl85L5uyUrpy_11bubble_sort: %_0"}
!14 = distinct !{!14, !"_RNvMs2_NtCsj8myL1OaG6u_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl85L5uyUrpy_11bubble_sort"}
!15 = !{!7, !11, !4}
!16 = !{i64 0, i64 -9223372036854775808}
