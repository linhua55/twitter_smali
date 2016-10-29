package org.spongycastle.math.raw;

/* compiled from: Twttr */
public abstract class Nat384 {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat192.c(iArr, iArr2, iArr3);
        Nat192.b(iArr, 6, iArr2, 6, iArr3, 12);
        int a = Nat192.a(iArr3, 6, iArr3, 12);
        int a2 = a + Nat192.a(iArr3, 18, iArr3, 12, Nat192.a(iArr3, 0, iArr3, 6, 0) + a);
        int[] a3 = Nat192.a();
        int[] a4 = Nat192.a();
        Object obj = Nat192.a(iArr, 6, iArr, 0, a3, 0) != Nat192.a(iArr2, 6, iArr2, 0, a4, 0) ? 1 : null;
        int[] b = Nat192.b();
        Nat192.c(a3, a4, b);
        Nat.a(24, (obj != null ? Nat.a(12, b, 0, iArr3, 6) : Nat.b(12, b, 0, iArr3, 6)) + a2, iArr3, 18);
    }

    public static void a(int[] iArr, int[] iArr2) {
        Nat192.c(iArr, iArr2);
        Nat192.c(iArr, 6, iArr2, 12);
        int a = Nat192.a(iArr2, 6, iArr2, 12);
        int a2 = a + Nat192.a(iArr2, 18, iArr2, 12, Nat192.a(iArr2, 0, iArr2, 6, 0) + a);
        int[] a3 = Nat192.a();
        Nat192.a(iArr, 6, iArr, 0, a3, 0);
        int[] b = Nat192.b();
        Nat192.c(a3, b);
        Nat.a(24, Nat.b(12, b, 0, iArr2, 6) + a2, iArr2, 18);
    }
}
