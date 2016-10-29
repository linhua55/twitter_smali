package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* compiled from: Twttr */
public class SecP256K1Field {
    static final int[] a;
    static final int[] b;
    private static final int[] c;

    static {
        a = new int[]{-977, -2, -1, -1, -1, -1, -1, -1};
        b = new int[]{954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1};
        c = new int[]{-954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.a(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && Nat256.c(iArr3, a))) {
            Nat.a(8, 977, iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        if (Nat.d(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && Nat256.c(iArr2, a))) {
            Nat.a(8, 977, iArr2);
        }
    }

    public static int[] a(BigInteger bigInteger) {
        int[] a = Nat256.a(bigInteger);
        if (a[7] == -1 && Nat256.c(a, a)) {
            Nat256.e(a, a);
        }
        return a;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] b = Nat256.b();
        Nat256.c(iArr, iArr2, b);
        c(b, iArr3);
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat256.d(iArr, iArr2, iArr3) != 0 || (iArr3[15] == -1 && Nat.c(16, iArr3, b))) && Nat.a(c.length, c, iArr3) != 0) {
            Nat.b(16, iArr3, c.length);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (Nat256.b(iArr)) {
            Nat256.d(iArr2);
        } else {
            Nat256.e(a, iArr, iArr2);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (Nat256.a(977, Nat256.a(977, iArr, 8, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[7] == -1 && Nat256.c(iArr2, a))) {
            Nat.a(8, 977, iArr2);
        }
    }

    public static void a(int i, int[] iArr) {
        if ((i != 0 && Nat256.a(977, i, iArr, 0) != 0) || (iArr[7] == -1 && Nat256.c(iArr, a))) {
            Nat.a(8, 977, iArr);
        }
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] b = Nat256.b();
        Nat256.d(iArr, b);
        c(b, iArr2);
    }

    public static void a(int[] iArr, int i, int[] iArr2) {
        int[] b = Nat256.b();
        Nat256.d(iArr, b);
        c(b, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat256.d(iArr2, b);
                c(b, iArr2);
            } else {
                return;
            }
        }
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.e(iArr, iArr2, iArr3) != 0) {
            Nat.c(8, 977, iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        if (Nat.a(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && Nat256.c(iArr2, a))) {
            Nat.a(8, 977, iArr2);
        }
    }
}
