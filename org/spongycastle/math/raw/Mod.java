package org.spongycastle.math.raw;

import java.util.Random;

/* compiled from: Twttr */
public abstract class Mod {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = 0;
        int length = iArr.length;
        if (Nat.e(length, iArr2)) {
            throw new IllegalArgumentException("'x' cannot be 0");
        } else if (Nat.d(length, iArr2)) {
            System.arraycopy(iArr2, 0, iArr3, 0, length);
        } else {
            int a;
            int[] a2 = Nat.a(length, iArr2);
            int[] a3 = Nat.a(length);
            a3[0] = 1;
            if ((a2[0] & 1) == 0) {
                a = a(iArr, a2, length, a3, 0);
            } else {
                a = 0;
            }
            if (Nat.d(length, a2)) {
                a(iArr, a, a3, iArr3);
                return;
            }
            int[] a4 = Nat.a(length, iArr);
            int[] a5 = Nat.a(length);
            int i2 = a;
            a = length;
            while (true) {
                if (a2[a - 1] == 0 && a4[a - 1] == 0) {
                    a--;
                } else if (Nat.c(a, a2, a4)) {
                    Nat.e(a, a4, a2);
                    i2 = a(iArr, a2, a, a3, i2 + (Nat.e(length, a5, a3) - i));
                    if (Nat.d(a, a2)) {
                        a(iArr, i2, a3, iArr3);
                        return;
                    }
                } else {
                    Nat.e(a, a2, a4);
                    i = a(iArr, a4, a, a5, i + (Nat.e(length, a3, a5) - i2));
                    if (Nat.d(a, a4)) {
                        a(iArr, i, a5, iArr3);
                        return;
                    }
                }
            }
        }
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] a = Nat.a(length);
        int i = iArr[length - 1];
        i |= i >>> 1;
        i |= i >>> 2;
        i |= i >>> 4;
        i |= i >>> 8;
        int i2 = (i >>> 16) | i;
        do {
            for (i = 0; i != length; i++) {
                a[i] = random.nextInt();
            }
            i = length - 1;
            a[i] = a[i] & i2;
        } while (Nat.c(length, a, iArr));
        return a;
    }

    private static void a(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        if (i < 0) {
            Nat.a(iArr.length, iArr2, iArr, iArr3);
        } else {
            System.arraycopy(iArr2, 0, iArr3, 0, iArr.length);
        }
    }

    private static int a(int[] iArr, int[] iArr2, int i, int[] iArr3, int i2) {
        int length = iArr.length;
        int i3 = 0;
        while (iArr2[0] == 0) {
            Nat.d(i, iArr2, 0);
            i3 += 32;
        }
        int a = a(iArr2[0]);
        if (a > 0) {
            Nat.b(i, iArr2, a, 0);
            i3 += a;
        }
        a = i2;
        for (int i4 = 0; i4 < i3; i4++) {
            if ((iArr3[0] & 1) != 0) {
                if (a < 0) {
                    a += Nat.a(length, iArr, iArr3);
                } else {
                    a += Nat.e(length, iArr, iArr3);
                }
            }
            Nat.c(length, iArr3, a);
        }
        return a;
    }

    private static int a(int i) {
        int i2 = 0;
        while ((i & 1) == 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }
}
