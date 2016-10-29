package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

/* compiled from: Twttr */
public class SecP224K1Field {
    static final int[] a;
    static final int[] b;
    private static final int[] c;

    static {
        a = new int[]{-6803, -2, -1, -1, -1, -1, -1};
        b = new int[]{46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1};
        c = new int[]{-46280809, -13607, -2, -1, -1, -1, -1, 13605, 2};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && Nat224.c(iArr3, a))) {
            Nat.a(7, 6803, iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        if (Nat.d(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && Nat224.c(iArr2, a))) {
            Nat.a(7, 6803, iArr2);
        }
    }

    public static int[] a(BigInteger bigInteger) {
        int[] a = Nat224.a(bigInteger);
        if (a[6] == -1 && Nat224.c(a, a)) {
            Nat.a(7, 6803, a);
        }
        return a;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] b = Nat224.b();
        Nat224.c(iArr, iArr2, b);
        c(b, iArr3);
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat224.d(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && Nat.c(14, iArr3, b))) && Nat.a(c.length, c, iArr3) != 0) {
            Nat.b(14, iArr3, c.length);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (Nat224.b(iArr)) {
            Nat224.d(iArr2);
        } else {
            Nat224.e(a, iArr, iArr2);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (Nat224.a(6803, Nat224.a(6803, iArr, 7, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[6] == -1 && Nat224.c(iArr2, a))) {
            Nat.a(7, 6803, iArr2);
        }
    }

    public static void a(int i, int[] iArr) {
        if ((i != 0 && Nat224.a(6803, i, iArr, 0) != 0) || (iArr[6] == -1 && Nat224.c(iArr, a))) {
            Nat.a(7, 6803, iArr);
        }
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] b = Nat224.b();
        Nat224.d(iArr, b);
        c(b, iArr2);
    }

    public static void a(int[] iArr, int i, int[] iArr2) {
        int[] b = Nat224.b();
        Nat224.d(iArr, b);
        c(b, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat224.d(iArr2, b);
                c(b, iArr2);
            } else {
                return;
            }
        }
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.e(iArr, iArr2, iArr3) != 0) {
            Nat.c(7, 6803, iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        if (Nat.a(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && Nat224.c(iArr2, a))) {
            Nat.a(7, 6803, iArr2);
        }
    }
}
