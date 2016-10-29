package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

/* compiled from: Twttr */
public class SecP224R1Field {
    static final int[] a;
    static final int[] b;
    private static final int[] c;

    static {
        a = new int[]{1, 0, 0, -1, -1, -1, -1};
        b = new int[]{1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};
        c = new int[]{-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && Nat224.c(iArr3, a))) {
            a(iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        if (Nat.d(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && Nat224.c(iArr2, a))) {
            a(iArr2);
        }
    }

    public static int[] a(BigInteger bigInteger) {
        int[] a = Nat224.a(bigInteger);
        if (a[6] == -1 && Nat224.c(a, a)) {
            Nat224.e(a, a);
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
        long j = ((long) iArr[10]) & 4294967295L;
        long j2 = ((long) iArr[11]) & 4294967295L;
        long j3 = ((long) iArr[12]) & 4294967295L;
        long j4 = ((long) iArr[13]) & 4294967295L;
        long j5 = ((((long) iArr[7]) & 4294967295L) + j2) - 1;
        long j6 = (((long) iArr[8]) & 4294967295L) + j3;
        long j7 = (((long) iArr[9]) & 4294967295L) + j4;
        long j8 = 0 + ((((long) iArr[0]) & 4294967295L) - j5);
        long j9 = 4294967295L & j8;
        j8 = (j8 >> 32) + ((((long) iArr[1]) & 4294967295L) - j6);
        iArr2[1] = (int) j8;
        j8 = (j8 >> 32) + ((((long) iArr[2]) & 4294967295L) - j7);
        iArr2[2] = (int) j8;
        j5 = ((j5 + (((long) iArr[3]) & 4294967295L)) - j) + (j8 >> 32);
        j8 = 4294967295L & j5;
        j2 = ((j6 + (((long) iArr[4]) & 4294967295L)) - j2) + (j5 >> 32);
        iArr2[4] = (int) j2;
        j2 = (j2 >> 32) + (((((long) iArr[5]) & 4294967295L) + j7) - j3);
        iArr2[5] = (int) j2;
        j = ((j + (((long) iArr[6]) & 4294967295L)) - j4) + (j2 >> 32);
        iArr2[6] = (int) j;
        j2 = 1 + (j >> 32);
        j = j8 + j2;
        j2 = j9 - j2;
        iArr2[0] = (int) j2;
        j2 >>= 32;
        if (j2 != 0) {
            j2 += ((long) iArr2[1]) & 4294967295L;
            iArr2[1] = (int) j2;
            j2 = (j2 >> 32) + (((long) iArr2[2]) & 4294967295L);
            iArr2[2] = (int) j2;
            j += j2 >> 32;
        }
        iArr2[3] = (int) j;
        if ((j >> 32) == 0 || Nat.b(7, iArr2, 4) == 0) {
            if (iArr2[6] == -1) {
                if (!Nat224.c(iArr2, a)) {
                    return;
                }
            }
            return;
        }
        a(iArr2);
    }

    public static void a(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = ((long) i) & 4294967295L;
            j = ((((long) iArr[0]) & 4294967295L) - j2) + 0;
            iArr[0] = (int) j;
            j >>= 32;
            if (j != 0) {
                j += ((long) iArr[1]) & 4294967295L;
                iArr[1] = (int) j;
                j = (j >> 32) + (((long) iArr[2]) & 4294967295L);
                iArr[2] = (int) j;
                j >>= 32;
            }
            j += j2 + (((long) iArr[3]) & 4294967295L);
            iArr[3] = (int) j;
            j >>= 32;
        } else {
            j = 0;
        }
        if ((j != 0 && Nat.b(7, iArr, 4) != 0) || (iArr[6] == -1 && Nat224.c(iArr, a))) {
            a(iArr);
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
            b(iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        if (Nat.a(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && Nat224.c(iArr2, a))) {
            a(iArr2);
        }
    }

    private static void a(int[] iArr) {
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
        if ((j >> 32) != 0) {
            Nat.b(7, iArr, 4);
        }
    }

    private static void b(int[] iArr) {
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
        if ((j >> 32) != 0) {
            Nat.a(7, iArr, 4);
        }
    }
}
