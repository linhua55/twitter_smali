package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* compiled from: Twttr */
public class SecP256R1Field {
    static final int[] a;
    static final int[] b;

    static {
        a = new int[]{-1, -1, -1, 0, 0, 0, 1, -1};
        b = new int[]{1, 0, 0, -2, -1, -1, -2, 1, -2, 1, -2, 1, 1, -2, 2, -2};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.a(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && Nat256.c(iArr3, a))) {
            a(iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        if (Nat.d(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && Nat256.c(iArr2, a))) {
            a(iArr2);
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
        if (Nat256.d(iArr, iArr2, iArr3) != 0 || ((iArr3[15] & -1) == -1 && Nat.c(16, iArr3, b))) {
            Nat.e(16, b, iArr3);
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
        long j = ((long) iArr[8]) & 4294967295L;
        long j2 = ((long) iArr[9]) & 4294967295L;
        long j3 = ((long) iArr[10]) & 4294967295L;
        long j4 = ((long) iArr[11]) & 4294967295L;
        long j5 = ((long) iArr[12]) & 4294967295L;
        long j6 = ((long) iArr[13]) & 4294967295L;
        long j7 = ((long) iArr[14]) & 4294967295L;
        long j8 = ((long) iArr[15]) & 4294967295L;
        j -= 6;
        long j9 = j + j2;
        j2 += j3;
        j3 = (j3 + j4) - j8;
        j4 += j5;
        j5 += j6;
        long j10 = j6 + j7;
        long j11 = j7 + j8;
        long j12 = 0 + ((((((long) iArr[0]) & 4294967295L) + j9) - j4) - j10);
        iArr2[0] = (int) j12;
        j12 = (j12 >> 32) + ((((((long) iArr[1]) & 4294967295L) + j2) - j5) - j11);
        iArr2[1] = (int) j12;
        j12 = (j12 >> 32) + (((((long) iArr[2]) & 4294967295L) + j3) - j10);
        iArr2[2] = (int) j12;
        j4 <<= 1;
        j4 = ((((j4 + (((long) iArr[3]) & 4294967295L)) + j6) - j8) - j9) + (j12 >> 32);
        iArr2[3] = (int) j4;
        j2 = ((((((long) iArr[4]) & 4294967295L) + (j5 << 1)) + j7) - j2) + (j4 >> 32);
        iArr2[4] = (int) j2;
        j2 = (j2 >> 32) + (((((long) iArr[5]) & 4294967295L) + (j10 << 1)) - j3);
        iArr2[5] = (int) j2;
        j2 = (j2 >> 32) + ((((((long) iArr[6]) & 4294967295L) + (j11 << 1)) + j10) - j9);
        iArr2[6] = (int) j2;
        j = (((j + ((((long) iArr[7]) & 4294967295L) + (j8 << 1))) - j3) - j5) + (j2 >> 32);
        iArr2[7] = (int) j;
        a((int) ((j >> 32) + 6), iArr2);
    }

    public static void a(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = ((long) i) & 4294967295L;
            j = ((((long) iArr[0]) & 4294967295L) + j2) + 0;
            iArr[0] = (int) j;
            j >>= 32;
            if (j != 0) {
                j += ((long) iArr[1]) & 4294967295L;
                iArr[1] = (int) j;
                j = (j >> 32) + (((long) iArr[2]) & 4294967295L);
                iArr[2] = (int) j;
                j >>= 32;
            }
            j += (((long) iArr[3]) & 4294967295L) - j2;
            iArr[3] = (int) j;
            j >>= 32;
            if (j != 0) {
                j += ((long) iArr[4]) & 4294967295L;
                iArr[4] = (int) j;
                j = (j >> 32) + (((long) iArr[5]) & 4294967295L);
                iArr[5] = (int) j;
                j >>= 32;
            }
            j += (((long) iArr[6]) & 4294967295L) - j2;
            iArr[6] = (int) j;
            j = (j >> 32) + (j2 + (((long) iArr[7]) & 4294967295L));
            iArr[7] = (int) j;
            j >>= 32;
        } else {
            j = 0;
        }
        if (j != 0 || (iArr[7] == -1 && Nat256.c(iArr, a))) {
            a(iArr);
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
            b(iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        if (Nat.a(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && Nat256.c(iArr2, a))) {
            a(iArr2);
        }
    }

    private static void a(int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) + 1;
        iArr[0] = (int) j;
        j >>= 32;
        if (j != 0) {
            j += ((long) iArr[1]) & 4294967295L;
            iArr[1] = (int) j;
            j = (j >> 32) + (((long) iArr[2]) & 4294967295L);
            iArr[2] = (int) j;
            j >>= 32;
        }
        j += (((long) iArr[3]) & 4294967295L) - 1;
        iArr[3] = (int) j;
        j >>= 32;
        if (j != 0) {
            j += ((long) iArr[4]) & 4294967295L;
            iArr[4] = (int) j;
            j = (j >> 32) + (((long) iArr[5]) & 4294967295L);
            iArr[5] = (int) j;
            j >>= 32;
        }
        j += (((long) iArr[6]) & 4294967295L) - 1;
        iArr[6] = (int) j;
        iArr[7] = (int) ((j >> 32) + ((((long) iArr[7]) & 4294967295L) + 1));
    }

    private static void b(int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) - 1;
        iArr[0] = (int) j;
        j >>= 32;
        if (j != 0) {
            j += ((long) iArr[1]) & 4294967295L;
            iArr[1] = (int) j;
            j = (j >> 32) + (((long) iArr[2]) & 4294967295L);
            iArr[2] = (int) j;
            j >>= 32;
        }
        j += (((long) iArr[3]) & 4294967295L) + 1;
        iArr[3] = (int) j;
        j >>= 32;
        if (j != 0) {
            j += ((long) iArr[4]) & 4294967295L;
            iArr[4] = (int) j;
            j = (j >> 32) + (((long) iArr[5]) & 4294967295L);
            iArr[5] = (int) j;
            j >>= 32;
        }
        j += (((long) iArr[6]) & 4294967295L) + 1;
        iArr[6] = (int) j;
        iArr[7] = (int) ((j >> 32) + ((((long) iArr[7]) & 4294967295L) - 1));
    }
}
