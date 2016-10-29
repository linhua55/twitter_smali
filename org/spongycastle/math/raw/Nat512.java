package org.spongycastle.math.raw;

/* compiled from: Twttr */
public abstract class Nat512 {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat256.c(iArr, iArr2, iArr3);
        Nat256.b(iArr, 8, iArr2, 8, iArr3, 16);
        int a = Nat256.a(iArr3, 8, iArr3, 16);
        int a2 = a + Nat256.a(iArr3, 24, iArr3, 16, Nat256.a(iArr3, 0, iArr3, 8, 0) + a);
        int[] a3 = Nat256.a();
        int[] a4 = Nat256.a();
        Object obj = Nat256.a(iArr, 8, iArr, 0, a3, 0) != Nat256.a(iArr2, 8, iArr2, 0, a4, 0) ? 1 : null;
        int[] b = Nat256.b();
        Nat256.c(a3, a4, b);
        Nat.a(32, (obj != null ? Nat.a(16, b, 0, iArr3, 8) : Nat.b(16, b, 0, iArr3, 8)) + a2, iArr3, 24);
    }

    public static void a(int[] iArr, int[] iArr2) {
        Nat256.d(iArr, iArr2);
        Nat256.c(iArr, 8, iArr2, 16);
        int a = Nat256.a(iArr2, 8, iArr2, 16);
        int a2 = a + Nat256.a(iArr2, 24, iArr2, 16, Nat256.a(iArr2, 0, iArr2, 8, 0) + a);
        int[] a3 = Nat256.a();
        Nat256.a(iArr, 8, iArr, 0, a3, 0);
        int[] b = Nat256.b();
        Nat256.d(a3, b);
        Nat.a(32, Nat.b(16, b, 0, iArr2, 8) + a2, iArr2, 24);
    }
}
