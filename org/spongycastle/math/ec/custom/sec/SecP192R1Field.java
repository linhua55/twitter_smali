package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* compiled from: Twttr */
public class SecP192R1Field {
    static final int[] a;
    static final int[] b;
    private static final int[] c;

    static {
        a = new int[]{-1, -1, -2, -1, -1, -1};
        b = new int[]{1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};
        c = new int[]{-1, -1, -3, -1, -2, -1, 1, 0, 2};
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && Nat192.b(iArr3, a))) {
            a(iArr3);
        }
    }

    public static void a(int[] iArr, int[] iArr2) {
        if (Nat.d(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && Nat192.b(iArr2, a))) {
            a(iArr2);
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
        long j = ((long) iArr[6]) & 4294967295L;
        long j2 = ((long) iArr[7]) & 4294967295L;
        long j3 = ((long) iArr[8]) & 4294967295L;
        long j4 = ((long) iArr[9]) & 4294967295L;
        long j5 = (((long) iArr[10]) & 4294967295L) + j;
        long j6 = (((long) iArr[11]) & 4294967295L) + j2;
        long j7 = 0 + ((((long) iArr[0]) & 4294967295L) + j5);
        int i = (int) j7;
        j7 = (j7 >> 32) + ((((long) iArr[1]) & 4294967295L) + j6);
        iArr2[1] = (int) j7;
        j3 += j5;
        j4 += j6;
        j5 = ((((long) iArr[2]) & 4294967295L) + j3) + (j7 >> 32);
        j6 = 4294967295L & j5;
        j5 = (j5 >> 32) + ((((long) iArr[3]) & 4294967295L) + j4);
        iArr2[3] = (int) j5;
        j2 = j4 - j2;
        j = ((j3 - j) + (((long) iArr[4]) & 4294967295L)) + (j5 >> 32);
        iArr2[4] = (int) j;
        j = (j >> 32) + (j2 + (((long) iArr[5]) & 4294967295L));
        iArr2[5] = (int) j;
        j2 = j >> 32;
        j = j6 + j2;
        j2 += ((long) i) & 4294967295L;
        iArr2[0] = (int) j2;
        j2 >>= 32;
        if (j2 != 0) {
            j2 += ((long) iArr2[1]) & 4294967295L;
            iArr2[1] = (int) j2;
            j += j2 >> 32;
        }
        iArr2[2] = (int) j;
        if ((j >> 32) == 0 || Nat.b(6, iArr2, 3) == 0) {
            if (iArr2[5] == -1) {
                if (!Nat192.b(iArr2, a)) {
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
            j = ((((long) iArr[0]) & 4294967295L) + j2) + 0;
            iArr[0] = (int) j;
            j >>= 32;
            if (j != 0) {
                j += ((long) iArr[1]) & 4294967295L;
                iArr[1] = (int) j;
                j >>= 32;
            }
            j += j2 + (((long) iArr[2]) & 4294967295L);
            iArr[2] = (int) j;
            j >>= 32;
        } else {
            j = 0;
        }
        if ((j != 0 && Nat.b(6, iArr, 3) != 0) || (iArr[5] == -1 && Nat192.b(iArr, a))) {
            a(iArr);
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
            b(iArr3);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        if (Nat.a(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && Nat192.b(iArr2, a))) {
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
            j >>= 32;
        }
        j += (((long) iArr[2]) & 4294967295L) + 1;
        iArr[2] = (int) j;
        if ((j >> 32) != 0) {
            Nat.b(6, iArr, 3);
        }
    }

    private static void b(int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) - 1;
        iArr[0] = (int) j;
        j >>= 32;
        if (j != 0) {
            j += ((long) iArr[1]) & 4294967295L;
            iArr[1] = (int) j;
            j >>= 32;
        }
        j += (((long) iArr[2]) & 4294967295L) - 1;
        iArr[2] = (int) j;
        if ((j >> 32) != 0) {
            Nat.a(6, iArr, 3);
        }
    }
}
