package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public abstract class WNafUtil {
    private static final int[] a;
    private static final byte[] b;
    private static final int[] c;

    static {
        a = new int[]{13, 41, 121, 337, 897, 2305};
        b = new byte[0];
        c = new int[0];
    }

    public static int[] a(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        } else if (bigInteger.signum() == 0) {
            return c;
        } else {
            int i;
            BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
            int bitLength = add.bitLength();
            int[] iArr = new int[(bitLength >> 1)];
            BigInteger xor = add.xor(bigInteger);
            int i2 = bitLength - 1;
            int i3 = 0;
            bitLength = 0;
            int i4 = 1;
            while (i4 < i2) {
                if (xor.testBit(i4)) {
                    if (bigInteger.testBit(i4)) {
                        i = -1;
                    } else {
                        i = 1;
                    }
                    int i5 = bitLength + 1;
                    iArr[bitLength] = (i << 16) | i3;
                    i = i4 + 1;
                    i4 = 1;
                    bitLength = i5;
                } else {
                    int i6 = i4;
                    i4 = i3 + 1;
                    i = i6;
                }
                i3 = i4;
                i4 = i + 1;
            }
            i = bitLength + 1;
            iArr[bitLength] = 65536 | i3;
            return iArr.length > i ? a(iArr, i) : iArr;
        }
    }

    public static int[] a(int i, BigInteger bigInteger) {
        if (i == 2) {
            return a(bigInteger);
        }
        if (i < 2 || i > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        } else if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        } else if (bigInteger.signum() == 0) {
            return c;
        } else {
            int[] iArr = new int[((bigInteger.bitLength() / i) + 1)];
            int i2 = 1 << i;
            int i3 = i2 - 1;
            int i4 = i2 >>> 1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i5) == z) {
                    i5++;
                } else {
                    int i7;
                    bigInteger = bigInteger.shiftRight(i5);
                    int intValue = bigInteger.intValue() & i3;
                    if (z) {
                        intValue++;
                    }
                    z = (intValue & i4) != 0;
                    if (z) {
                        i7 = intValue - i2;
                    } else {
                        i7 = intValue;
                    }
                    if (i6 > 0) {
                        intValue = i5 - 1;
                    } else {
                        intValue = i5;
                    }
                    i5 = i6 + 1;
                    iArr[i6] = intValue | (i7 << 16);
                    i6 = i5;
                    i5 = i;
                }
            }
            return iArr.length > i6 ? a(iArr, i6) : iArr;
        }
    }

    public static byte[] b(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return b;
        }
        BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
        int bitLength = add.bitLength() - 1;
        byte[] bArr = new byte[bitLength];
        BigInteger xor = add.xor(bigInteger);
        int i = 1;
        while (i < bitLength) {
            int i2;
            if (xor.testBit(i)) {
                int i3 = i - 1;
                if (bigInteger.testBit(i)) {
                    i2 = -1;
                } else {
                    i2 = 1;
                }
                bArr[i3] = (byte) i2;
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2 + 1;
        }
        bArr[bitLength - 1] = (byte) 1;
        return bArr;
    }

    public static byte[] b(int i, BigInteger bigInteger) {
        if (i == 2) {
            return b(bigInteger);
        }
        if (i < 2 || i > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        } else if (bigInteger.signum() == 0) {
            return b;
        } else {
            byte[] bArr = new byte[(bigInteger.bitLength() + 1)];
            int i2 = 1 << i;
            int i3 = i2 - 1;
            int i4 = i2 >>> 1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i5) == z) {
                    i5++;
                } else {
                    bigInteger = bigInteger.shiftRight(i5);
                    int intValue = bigInteger.intValue() & i3;
                    if (z) {
                        intValue++;
                    }
                    z = (intValue & i4) != 0;
                    if (z) {
                        intValue -= i2;
                    }
                    if (i6 > 0) {
                        i5--;
                    }
                    i6 += i5;
                    i5 = i6 + 1;
                    bArr[i6] = (byte) intValue;
                    i6 = i5;
                    i5 = i;
                }
            }
            return bArr.length > i6 ? a(bArr, i6) : bArr;
        }
    }

    public static int c(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static WNafPreCompInfo a(ECPoint eCPoint) {
        return a(eCPoint.d().a(eCPoint, "bc_wnaf"));
    }

    public static WNafPreCompInfo a(PreCompInfo preCompInfo) {
        if (preCompInfo == null || !(preCompInfo instanceof WNafPreCompInfo)) {
            return new WNafPreCompInfo();
        }
        return (WNafPreCompInfo) preCompInfo;
    }

    public static int a(int i) {
        return a(i, a);
    }

    public static int a(int i, int[] iArr) {
        int i2 = 0;
        while (i2 < iArr.length && i >= iArr[i2]) {
            i2++;
        }
        return i2 + 2;
    }

    public static ECPoint a(ECPoint eCPoint, int i, boolean z, ECPointMap eCPointMap) {
        int i2 = 0;
        ECCurve d = eCPoint.d();
        WNafPreCompInfo a = a(eCPoint, i, z);
        ECPoint a2 = eCPointMap.a(eCPoint);
        PreCompInfo a3 = a(d.a(a2, "bc_wnaf"));
        ECPoint c = a.c();
        if (c != null) {
            a3.a(eCPointMap.a(c));
        }
        ECPoint[] a4 = a.a();
        ECPoint[] eCPointArr = new ECPoint[a4.length];
        for (int i3 = 0; i3 < a4.length; i3++) {
            eCPointArr[i3] = eCPointMap.a(a4[i3]);
        }
        a3.a(eCPointArr);
        if (z) {
            ECPoint[] eCPointArr2 = new ECPoint[eCPointArr.length];
            while (i2 < eCPointArr2.length) {
                eCPointArr2[i2] = eCPointArr[i2].u();
                i2++;
            }
            a3.b(eCPointArr2);
        }
        d.a(a2, "bc_wnaf", a3);
        return a2;
    }

    public static WNafPreCompInfo a(ECPoint eCPoint, int i, boolean z) {
        ECCurve d = eCPoint.d();
        PreCompInfo a = a(d.a(eCPoint, "bc_wnaf"));
        ECPoint[] a2 = a.a();
        if (a2 == null) {
            a2 = new ECPoint[]{eCPoint};
        }
        int length = a2.length;
        int max = 1 << Math.max(0, i - 2);
        if (length < max) {
            ECPoint[] a3 = a(a2, max);
            if (max == 2) {
                a3[1] = a3[0].w();
            } else {
                ECPoint c = a.c();
                if (c == null) {
                    c = a3[0].v();
                    a.a(c);
                }
                while (length < max) {
                    a3[length] = c.b(a3[length - 1]);
                    length++;
                }
            }
            d.a(a3);
            a2 = a3;
        }
        a.a(a2);
        if (z) {
            ECPoint[] eCPointArr;
            int i2;
            ECPoint[] b = a.b();
            if (b == null) {
                eCPointArr = new ECPoint[max];
                i2 = 0;
            } else {
                i2 = b.length;
                if (i2 < max) {
                    eCPointArr = a(b, max);
                } else {
                    eCPointArr = b;
                }
            }
            while (i2 < max) {
                eCPointArr[i2] = a2[i2].u();
                i2++;
            }
            a.b(eCPointArr);
        }
        d.a(eCPoint, "bc_wnaf", a);
        return a;
    }

    private static byte[] a(byte[] bArr, int i) {
        Object obj = new byte[i];
        System.arraycopy(bArr, 0, obj, 0, obj.length);
        return obj;
    }

    private static int[] a(int[] iArr, int i) {
        Object obj = new int[i];
        System.arraycopy(iArr, 0, obj, 0, obj.length);
        return obj;
    }

    private static ECPoint[] a(ECPoint[] eCPointArr, int i) {
        Object obj = new ECPoint[i];
        System.arraycopy(eCPointArr, 0, obj, 0, eCPointArr.length);
        return obj;
    }
}
