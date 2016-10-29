package org.spongycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* compiled from: Twttr */
public class Curve25519Field {
    static final int[] a;
    private static final int[] b;

    static {
        a = new int[]{-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
        b = new int[]{361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat256.a(iArr, iArr2, iArr3);
        if (Nat256.c(iArr3, a)) {
            b(iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        Nat.d(8, iArr, iArr2);
        if (Nat256.c(iArr2, a)) {
            b(iArr2);
        }
    }

    public static int[] a(BigInteger bigInteger) {
        int[] a = Nat256.a(bigInteger);
        while (Nat256.c(a, a)) {
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
        Nat256.d(iArr, iArr2, iArr3);
        if (Nat.c(16, iArr3, b)) {
            c(iArr3);
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
        int i = iArr[7];
        Nat.a(8, iArr, 8, i, iArr2, 0);
        int a = Nat256.a(19, iArr, iArr2) << 1;
        int i2 = iArr2[7];
        iArr2[7] = Nat.b(7, (a + ((i2 >>> 31) - (i >>> 31))) * 19, iArr2) + (i2 & Integer.MAX_VALUE);
        if (Nat256.c(iArr2, a)) {
            b(iArr2);
        }
    }

    public static void a(int i, int[] iArr) {
        int i2 = iArr[7];
        iArr[7] = (i2 & Integer.MAX_VALUE) + Nat.b(7, ((i << 1) | (i2 >>> 31)) * 19, iArr);
        if (Nat256.c(iArr, a)) {
            b(iArr);
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
            a(iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        Nat.a(8, iArr, 0, iArr2);
        if (Nat256.c(iArr2, a)) {
            b(iArr2);
        }
    }

    private static int a(int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) - 19;
        iArr[0] = (int) j;
        j >>= 32;
        if (j != 0) {
            j = (long) Nat.a(7, iArr, 1);
        }
        j += (((long) iArr[7]) & 4294967295L) + 2147483648L;
        iArr[7] = (int) j;
        return (int) (j >> 32);
    }

    private static int b(int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) + 19;
        iArr[0] = (int) j;
        j >>= 32;
        if (j != 0) {
            j = (long) Nat.b(7, iArr, 1);
        }
        j += (((long) iArr[7]) & 4294967295L) - 2147483648L;
        iArr[7] = (int) j;
        return (int) (j >> 32);
    }

    private static int c(int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) - (((long) b[0]) & 4294967295L);
        iArr[0] = (int) j;
        j >>= 32;
        if (j != 0) {
            j = (long) Nat.a(8, iArr, 1);
        }
        j += (((long) iArr[8]) & 4294967295L) + 19;
        iArr[8] = (int) j;
        j >>= 32;
        if (j != 0) {
            j = (long) Nat.b(15, iArr, 9);
        }
        j += (((long) iArr[15]) & 4294967295L) - (((long) (b[15] + 1)) & 4294967295L);
        iArr[15] = (int) j;
        return (int) (j >> 32);
    }
}
