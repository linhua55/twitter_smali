package org.spongycastle.math.ec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.endo.ECEndomorphism;
import org.spongycastle.math.ec.endo.GLVEndomorphism;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.PolynomialExtensionField;

/* compiled from: Twttr */
public class ECAlgorithms {
    public static boolean a(ECCurve eCCurve) {
        FiniteField f = eCCurve.f();
        if (f.b() > 1 && f.a().equals(ECConstants.e) && (f instanceof PolynomialExtensionField)) {
            return true;
        }
        return false;
    }

    public static boolean b(ECCurve eCCurve) {
        return eCCurve.f().b() == 1;
    }

    public static ECPoint a(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve d = eCPoint.d();
        ECPoint a = a(d, eCPoint2);
        if ((d instanceof F2m) && ((F2m) d).n()) {
            return a(eCPoint.a(bigInteger).b(a.a(bigInteger2)));
        }
        ECEndomorphism l = d.l();
        if (!(l instanceof GLVEndomorphism)) {
            return a(b(eCPoint, bigInteger, a, bigInteger2));
        }
        return a(a(new ECPoint[]{eCPoint, a}, new BigInteger[]{bigInteger, bigInteger2}, (GLVEndomorphism) l));
    }

    public static ECPoint a(ECCurve eCCurve, ECPoint eCPoint) {
        if (eCCurve.a(eCPoint.d())) {
            return eCCurve.a(eCPoint);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static void a(ECFieldElement[] eCFieldElementArr, int i, int i2) {
        int i3 = 0;
        ECFieldElement[] eCFieldElementArr2 = new ECFieldElement[i2];
        eCFieldElementArr2[0] = eCFieldElementArr[i];
        while (true) {
            i3++;
            if (i3 >= i2) {
                break;
            }
            eCFieldElementArr2[i3] = eCFieldElementArr2[i3 - 1].c(eCFieldElementArr[i + i3]);
        }
        int i4 = i3 - 1;
        ECFieldElement f = eCFieldElementArr2[i4].f();
        while (i4 > 0) {
            int i5 = i4 - 1;
            i4 += i;
            ECFieldElement eCFieldElement = eCFieldElementArr[i4];
            eCFieldElementArr[i4] = eCFieldElementArr2[i5].c(f);
            f = f.c(eCFieldElement);
            i4 = i5;
        }
        eCFieldElementArr[i] = f;
    }

    public static ECPoint a(ECPoint eCPoint, BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        ECPoint e = eCPoint.d().e();
        int bitLength = abs.bitLength();
        if (bitLength > 0) {
            if (abs.testBit(0)) {
                e = eCPoint;
            }
            for (int i = 1; i < bitLength; i++) {
                eCPoint = eCPoint.v();
                if (abs.testBit(i)) {
                    e = e.b(eCPoint);
                }
            }
        }
        return bigInteger.signum() < 0 ? e.u() : e;
    }

    public static ECPoint a(ECPoint eCPoint) {
        if (eCPoint.r()) {
            return eCPoint;
        }
        throw new IllegalArgumentException("Invalid point");
    }

    static ECPoint b(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        boolean z = false;
        boolean z2 = bigInteger.signum() < 0;
        if (bigInteger2.signum() < 0) {
            z = true;
        }
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int max = Math.max(2, Math.min(16, WNafUtil.a(abs.bitLength())));
        int max2 = Math.max(2, Math.min(16, WNafUtil.a(abs2.bitLength())));
        WNafPreCompInfo a = WNafUtil.a(eCPoint, max, true);
        WNafPreCompInfo a2 = WNafUtil.a(eCPoint2, max2, true);
        return a(z2 ? a.b() : a.a(), z2 ? a.a() : a.b(), WNafUtil.b(max, abs), z ? a2.b() : a2.a(), z ? a2.a() : a2.b(), WNafUtil.b(max2, abs2));
    }

    static ECPoint a(ECPoint eCPoint, BigInteger bigInteger, ECPointMap eCPointMap, BigInteger bigInteger2) {
        boolean z = false;
        boolean z2 = bigInteger.signum() < 0;
        if (bigInteger2.signum() < 0) {
            z = true;
        }
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int max = Math.max(2, Math.min(16, WNafUtil.a(Math.max(abs.bitLength(), abs2.bitLength()))));
        ECPoint a = WNafUtil.a(eCPoint, max, true, eCPointMap);
        WNafPreCompInfo a2 = WNafUtil.a(eCPoint);
        WNafPreCompInfo a3 = WNafUtil.a(a);
        return a(z2 ? a2.b() : a2.a(), z2 ? a2.a() : a2.b(), WNafUtil.b(max, abs), z ? a3.b() : a3.a(), z ? a3.a() : a3.b(), WNafUtil.b(max, abs2));
    }

    private static ECPoint a(ECPoint[] eCPointArr, ECPoint[] eCPointArr2, byte[] bArr, ECPoint[] eCPointArr3, ECPoint[] eCPointArr4, byte[] bArr2) {
        int max = Math.max(bArr.length, bArr2.length);
        ECPoint e = eCPointArr[0].d().e();
        int i = max - 1;
        int i2 = 0;
        ECPoint eCPoint = e;
        while (i >= 0) {
            int i3;
            if (i < bArr.length) {
                max = bArr[i];
            } else {
                max = 0;
            }
            if (i < bArr2.length) {
                i3 = bArr2[i];
            } else {
                i3 = 0;
            }
            if ((max | i3) == 0) {
                max = i2 + 1;
            } else {
                ECPoint b;
                ECPoint b2;
                if (max != 0) {
                    b = e.b((max < 0 ? eCPointArr2 : eCPointArr)[Math.abs(max) >>> 1]);
                } else {
                    b = e;
                }
                if (i3 != 0) {
                    ECPoint[] eCPointArr5;
                    int abs = Math.abs(i3);
                    if (i3 < 0) {
                        eCPointArr5 = eCPointArr4;
                    } else {
                        eCPointArr5 = eCPointArr3;
                    }
                    b = b.b(eCPointArr5[abs >>> 1]);
                }
                if (i2 > 0) {
                    b2 = eCPoint.b(i2);
                    max = 0;
                } else {
                    max = i2;
                    b2 = eCPoint;
                }
                eCPoint = b2.c(b);
            }
            i--;
            i2 = max;
        }
        if (i2 > 0) {
            return eCPoint.b(i2);
        }
        return eCPoint;
    }

    static ECPoint a(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        int length = eCPointArr.length;
        boolean[] zArr = new boolean[length];
        WNafPreCompInfo[] wNafPreCompInfoArr = new WNafPreCompInfo[length];
        byte[][] bArr = new byte[length][];
        for (int i = 0; i < length; i++) {
            boolean z;
            BigInteger bigInteger = bigIntegerArr[i];
            if (bigInteger.signum() < 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i] = z;
            BigInteger abs = bigInteger.abs();
            int max = Math.max(2, Math.min(16, WNafUtil.a(abs.bitLength())));
            wNafPreCompInfoArr[i] = WNafUtil.a(eCPointArr[i], max, true);
            bArr[i] = WNafUtil.b(max, abs);
        }
        return a(zArr, wNafPreCompInfoArr, bArr);
    }

    static ECPoint a(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr, GLVEndomorphism gLVEndomorphism) {
        int i = 0;
        BigInteger i2 = eCPointArr[0].d().i();
        BigInteger[] bigIntegerArr2 = new BigInteger[(r4 << 1)];
        int i3 = 0;
        for (int i4 = 0; i4 < r4; i4++) {
            BigInteger[] a = gLVEndomorphism.a(bigIntegerArr[i4].mod(i2));
            int i5 = i3 + 1;
            bigIntegerArr2[i3] = a[0];
            i3 = i5 + 1;
            bigIntegerArr2[i5] = a[1];
        }
        ECPointMap a2 = gLVEndomorphism.a();
        if (gLVEndomorphism.b()) {
            return a(eCPointArr, a2, bigIntegerArr2);
        }
        ECPoint[] eCPointArr2 = new ECPoint[(r4 << 1)];
        for (ECPoint eCPoint : eCPointArr) {
            ECPoint a3 = a2.a(eCPoint);
            int i6 = i + 1;
            eCPointArr2[i] = eCPoint;
            i = i6 + 1;
            eCPointArr2[i6] = a3;
        }
        return a(eCPointArr2, bigIntegerArr2);
    }

    static ECPoint a(ECPoint[] eCPointArr, ECPointMap eCPointMap, BigInteger[] bigIntegerArr) {
        int length = eCPointArr.length;
        int i = length << 1;
        boolean[] zArr = new boolean[i];
        WNafPreCompInfo[] wNafPreCompInfoArr = new WNafPreCompInfo[i];
        byte[][] bArr = new byte[i][];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 << 1;
            int i4 = i3 + 1;
            BigInteger bigInteger = bigIntegerArr[i3];
            zArr[i3] = bigInteger.signum() < 0;
            bigInteger = bigInteger.abs();
            BigInteger bigInteger2 = bigIntegerArr[i4];
            zArr[i4] = bigInteger2.signum() < 0;
            BigInteger abs = bigInteger2.abs();
            int max = Math.max(2, Math.min(16, WNafUtil.a(Math.max(bigInteger.bitLength(), abs.bitLength()))));
            ECPoint eCPoint = eCPointArr[i2];
            ECPoint a = WNafUtil.a(eCPoint, max, true, eCPointMap);
            wNafPreCompInfoArr[i3] = WNafUtil.a(eCPoint);
            wNafPreCompInfoArr[i4] = WNafUtil.a(a);
            bArr[i3] = WNafUtil.b(max, bigInteger);
            bArr[i4] = WNafUtil.b(max, abs);
        }
        return a(zArr, wNafPreCompInfoArr, bArr);
    }

    private static ECPoint a(boolean[] zArr, WNafPreCompInfo[] wNafPreCompInfoArr, byte[][] bArr) {
        int i;
        int i2 = 0;
        for (byte[] length : bArr) {
            i2 = Math.max(i2, length.length);
        }
        ECPoint e = wNafPreCompInfoArr[0].a()[0].d().e();
        int i3 = i2 - 1;
        int i4 = 0;
        ECPoint eCPoint = e;
        while (i3 >= 0) {
            int i5 = 0;
            ECPoint eCPoint2 = e;
            while (i5 < r8) {
                ECPoint b;
                byte[] bArr2 = bArr[i5];
                if (i3 < bArr2.length) {
                    i = bArr2[i3];
                } else {
                    i = 0;
                }
                if (i != 0) {
                    boolean z;
                    int abs = Math.abs(i);
                    WNafPreCompInfo wNafPreCompInfo = wNafPreCompInfoArr[i5];
                    if (i < 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    b = eCPoint2.b((z == zArr[i5] ? wNafPreCompInfo.a() : wNafPreCompInfo.b())[abs >>> 1]);
                } else {
                    b = eCPoint2;
                }
                i5++;
                eCPoint2 = b;
            }
            if (eCPoint2 == e) {
                i = i4 + 1;
            } else {
                ECPoint b2;
                if (i4 > 0) {
                    b2 = eCPoint.b(i4);
                    i = 0;
                } else {
                    i = i4;
                    b2 = eCPoint;
                }
                eCPoint = b2.c(eCPoint2);
            }
            i3--;
            i4 = i;
        }
        if (i4 > 0) {
            return eCPoint.b(i4);
        }
        return eCPoint;
    }
}
