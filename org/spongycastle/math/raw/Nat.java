package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;

/* compiled from: Twttr */
public abstract class Nat {
    public static int a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i2]) & 4294967295L);
            iArr3[i2] = (int) j;
            j >>>= 32;
        }
        return (int) j;
    }

    public static int a(int i, int i2, int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) + (((long) i2) & 4294967295L);
        iArr[0] = (int) j;
        j = (j >>> 32) + ((((long) iArr[1]) & 4294967295L) + 1);
        iArr[1] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return b(i, iArr, 2);
    }

    public static int b(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += ((((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i2]) & 4294967295L)) + (((long) iArr3[i2]) & 4294967295L);
            iArr3[i2] = (int) j;
            j >>>= 32;
        }
        return (int) j;
    }

    public static int a(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i2]) & 4294967295L);
            iArr2[i2] = (int) j;
            j >>>= 32;
        }
        return (int) j;
    }

    public static int a(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            j += (((long) iArr[i2 + i4]) & 4294967295L) + (((long) iArr2[i3 + i4]) & 4294967295L);
            iArr2[i3 + i4] = (int) j;
            j >>>= 32;
        }
        return (int) j;
    }

    public static int a(int i, int i2, int[] iArr, int i3) {
        long j = (((long) i2) & 4294967295L) + (((long) iArr[i3]) & 4294967295L);
        iArr[i3] = (int) j;
        return (j >>> 32) == 0 ? 0 : b(i, iArr, i3 + 1);
    }

    public static int b(int i, int i2, int[] iArr) {
        long j = (((long) i2) & 4294967295L) + (((long) iArr[0]) & 4294967295L);
        iArr[0] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return b(i, iArr, 1);
    }

    public static int[] a(int i, int[] iArr) {
        Object obj = new int[i];
        System.arraycopy(iArr, 0, obj, 0, i);
        return obj;
    }

    public static int[] a(int i) {
        return new int[i];
    }

    public static int b(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
        }
        return -1;
    }

    public static int a(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
            i2++;
        }
        return -1;
    }

    public static boolean b(int i, int[] iArr, int[] iArr2) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] a(int i, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
            throw new IllegalArgumentException();
        }
        int[] a = a((i + 31) >> 5);
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            int i3 = i2 + 1;
            a[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2 = i3;
        }
        return a;
    }

    public static int a(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= iArr.length) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean c(int i, int[] iArr, int[] iArr2) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            int i4 = iArr2[i2] ^ Integer.MIN_VALUE;
            if (i3 < i4) {
                return false;
            }
            if (i3 > i4) {
                return true;
            }
        }
        return true;
    }

    public static int c(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int d(int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr2[i2] = i3;
            i2++;
            if (i3 != 0) {
                while (i2 < i) {
                    iArr2[i2] = iArr[i2];
                    i2++;
                }
                return 0;
            }
        }
        return 1;
    }

    public static int b(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
            i2++;
        }
        return 1;
    }

    public static int a(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] + 1;
            iArr[i4] = i5;
            if (i5 != 0) {
                return 0;
            }
            i3++;
        }
        return 1;
    }

    public static boolean d(int i, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean e(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int a(int i, int i2, int[] iArr, int i3, int[] iArr2, int[] iArr3, int i4) {
        long j = 0;
        long j2 = 4294967295L & ((long) i2);
        long j3 = 4294967295L & ((long) i3);
        int i5 = 0;
        do {
            j += (((((long) iArr[i5]) & 4294967295L) * j2) + ((((long) iArr2[i5]) & 4294967295L) * j3)) + (((long) iArr3[i4 + i5]) & 4294967295L);
            iArr3[i4 + i5] = (int) j;
            j >>>= 32;
            i5++;
        } while (i5 < i);
        return (int) j;
    }

    public static int a(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        long j = 0;
        long j2 = 4294967295L & ((long) i2);
        int i5 = 0;
        do {
            j += ((((long) iArr[i3 + i5]) & 4294967295L) * j2) + (((long) iArr2[i4 + i5]) & 4294967295L);
            iArr2[i4 + i5] = (int) j;
            j >>>= 32;
            i5++;
        } while (i5 < i);
        return (int) j;
    }

    public static int c(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr[i] = (i3 >>> 1) | (i2 << 31);
            i2 = i3;
        }
    }

    public static int b(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr[i] = (i4 >>> i2) | (i3 << (-i2));
            i3 = i4;
        }
    }

    public static int a(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i6 = iArr[i2 + i];
            iArr2[i5 + i] = (i6 >>> i3) | (i4 << (-i3));
            i4 = i6;
        }
    }

    public static int d(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            int i3 = iArr[i];
            iArr[i] = i2;
            i2 = i3;
        }
    }

    public static int a(int i, int[] iArr, int i2, int[] iArr2) {
        int i3 = 0;
        while (i3 < i) {
            int i4 = iArr[i3];
            iArr2[i3] = (i4 << 1) | (i2 >>> 31);
            i3++;
            i2 = i4;
        }
        return i2 >>> 31;
    }

    public static int a(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        int i5 = 0;
        while (i5 < i) {
            int i6 = iArr[i2 + i5];
            iArr2[i4 + i5] = (i6 << 1) | (i3 >>> 31);
            i5++;
            i3 = i6;
        }
        return i3 >>> 31;
    }

    public static int c(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i4];
            iArr[i4] = (i5 << i2) | (i3 >>> (-i2));
            i4++;
            i3 = i5;
        }
        return i3 >>> (-i2);
    }

    public static int a(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i4];
            iArr2[i4] = (i5 << i2) | (i3 >>> (-i2));
            i4++;
            i3 = i5;
        }
        return i3 >>> (-i2);
    }

    public static int c(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (((long) iArr[i2]) & 4294967295L) - (((long) iArr2[i2]) & 4294967295L);
            iArr3[i2] = (int) j;
            j >>= 32;
        }
        return (int) j;
    }

    public static int c(int i, int i2, int[] iArr) {
        long j = (((long) iArr[0]) & 4294967295L) - (((long) i2) & 4294967295L);
        iArr[0] = (int) j;
        j = (j >> 32) + ((((long) iArr[1]) & 4294967295L) - 1);
        iArr[1] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return a(i, iArr, 2);
    }

    public static int e(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (((long) iArr2[i2]) & 4294967295L) - (((long) iArr[i2]) & 4294967295L);
            iArr2[i2] = (int) j;
            j >>= 32;
        }
        return (int) j;
    }

    public static int b(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            j += (((long) iArr2[i3 + i4]) & 4294967295L) - (((long) iArr[i2 + i4]) & 4294967295L);
            iArr2[i3 + i4] = (int) j;
            j >>= 32;
        }
        return (int) j;
    }

    public static BigInteger f(int i, int[] iArr) {
        byte[] bArr = new byte[(i << 2)];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.a(i3, bArr, ((i - 1) - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void g(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = 0;
        }
    }
}
