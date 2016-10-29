package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat512;

/* compiled from: Twttr */
public class SecP521R1Field {
    static final int[] a;

    static {
        a = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int a = (Nat.a(16, iArr, iArr2, iArr3) + iArr[16]) + iArr2[16];
        if (a > 511 || (a == 511 && Nat.b(16, iArr3, a))) {
            a = (a + Nat.c(16, iArr3)) & 511;
        }
        iArr3[16] = a;
    }

    public static void a(int[] iArr, int[] iArr2) {
        int d = Nat.d(16, iArr, iArr2) + iArr[16];
        if (d > 511 || (d == 511 && Nat.b(16, iArr2, a))) {
            d = (d + Nat.c(16, iArr2)) & 511;
        }
        iArr2[16] = d;
    }

    public static int[] a(BigInteger bigInteger) {
        int[] a = Nat.a(521, bigInteger);
        if (Nat.b(17, a, a)) {
            Nat.g(17, a);
        }
        return a;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] a = Nat.a(33);
        d(iArr, iArr2, a);
        c(a, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (Nat.e(17, iArr)) {
            Nat.g(17, iArr2);
        } else {
            Nat.c(17, a, iArr, iArr2);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        int i = iArr[32];
        int a = ((Nat.a(16, iArr, 16, 9, i, iArr2, 0) >>> 23) + (i >>> 9)) + Nat.a(16, iArr, iArr2);
        if (a > 511 || (a == 511 && Nat.b(16, iArr2, a))) {
            a = (a + Nat.c(16, iArr2)) & 511;
        }
        iArr2[16] = a;
    }

    public static void a(int[] iArr) {
        int i = iArr[16];
        i = (i & 511) + Nat.b(16, i >>> 9, iArr);
        if (i > 511 || (i == 511 && Nat.b(16, iArr, a))) {
            i = (i + Nat.c(16, iArr)) & 511;
        }
        iArr[16] = i;
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] a = Nat.a(33);
        f(iArr, a);
        c(a, iArr2);
    }

    public static void a(int[] iArr, int i, int[] iArr2) {
        int[] a = Nat.a(33);
        f(iArr, a);
        c(a, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                f(iArr2, a);
                c(a, iArr2);
            } else {
                return;
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        int c = (Nat.c(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (c < 0) {
            c = (c + Nat.b(16, iArr3)) & 511;
        }
        iArr3[16] = c;
    }

    public static void e(int[] iArr, int[] iArr2) {
        int i = iArr[16];
        iArr2[16] = ((i << 1) | Nat.a(16, iArr, i << 23, iArr2)) & 511;
    }

    protected static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat512.a(iArr, iArr2, iArr3);
        int i = iArr[16];
        int i2 = iArr2[16];
        iArr3[32] = Nat.a(16, i, iArr2, i2, iArr, iArr3, 16) + (i * i2);
    }

    protected static void f(int[] iArr, int[] iArr2) {
        Nat512.a(iArr, iArr2);
        int i = iArr[16];
        iArr2[32] = Nat.a(16, i << 1, iArr, 0, iArr2, 16) + (i * i);
    }
}
