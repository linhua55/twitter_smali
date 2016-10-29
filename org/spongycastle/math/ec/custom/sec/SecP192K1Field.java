package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* compiled from: Twttr */
public class SecP192K1Field {
    static final int[] a;
    static final int[] b;
    private static final int[] c;

    static {
        a = new int[]{-4553, -2, -1, -1, -1, -1};
        b = new int[]{20729809, 9106, 1, 0, 0, 0, -9106, -3, -1, -1, -1, -1};
        c = new int[]{-20729809, -9107, -2, -1, -1, -1, 9105, 2};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && Nat192.b(iArr3, a))) {
            Nat.a(6, 4553, iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        if (Nat.d(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && Nat192.b(iArr2, a))) {
            Nat.a(6, 4553, iArr2);
        }
    }

    public static int[] a(BigInteger bigInteger) {
        int[] a = Nat192.a(bigInteger);
        if (a[5] == -1 && Nat192.b(a, a)) {
            Nat192.d(a, a);
        }
        return a;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] b = Nat192.b();
        Nat192.c(iArr, iArr2, b);
        c(b, iArr3);
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat192.d(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && Nat.c(12, iArr3, b))) && Nat.a(c.length, c, iArr3) != 0) {
            Nat.b(12, iArr3, c.length);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (Nat192.b(iArr)) {
            Nat192.d(iArr2);
        } else {
            Nat192.e(a, iArr, iArr2);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (Nat192.a(4553, Nat192.a(4553, iArr, 6, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[5] == -1 && Nat192.b(iArr2, a))) {
            Nat.a(6, 4553, iArr2);
        }
    }

    public static void a(int i, int[] iArr) {
        if ((i != 0 && Nat192.a(4553, i, iArr, 0) != 0) || (iArr[5] == -1 && Nat192.b(iArr, a))) {
            Nat.a(6, 4553, iArr);
        }
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] b = Nat192.b();
        Nat192.c(iArr, b);
        c(b, iArr2);
    }

    public static void a(int[] iArr, int i, int[] iArr2) {
        int[] b = Nat192.b();
        Nat192.c(iArr, b);
        c(b, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat192.c(iArr2, b);
                c(b, iArr2);
            } else {
                return;
            }
        }
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.e(iArr, iArr2, iArr3) != 0) {
            Nat.c(6, 4553, iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        if (Nat.a(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && Nat192.b(iArr2, a))) {
            Nat.a(6, 4553, iArr2);
        }
    }
}
