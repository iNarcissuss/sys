; ModuleID = 'add.bc'
source_filename = "add.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline norecurse nounwind readnone sspstrong uwtable
define i32 @add(i32, i32) local_unnamed_addr #0 {
  %3 = add nsw <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <i32 0, i32 1, i32 2, i32 3>
  %4 = extractelement <4 x i32> %3, i32 0
  %5 = extractelement <4 x i32> %3, i32 1	
  %6 = extractelement <4 x i32> %3, i32 2
  %7 = extractelement <4 x i32> %3, i32 3
  %8 = add i32 %7, %6
  %9 = add i32 %5, %4
  ret i32 %4
}

attributes #0 = { noinline norecurse nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}