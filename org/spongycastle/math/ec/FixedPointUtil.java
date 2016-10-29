package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class FixedPointUtil {
    public static int a(ECCurve eCCurve) {
        BigInteger i = eCCurve.i();
        return i == null ? eCCurve.a() + 1 : i.bitLength();
    }

    public static FixedPointPreCompInfo a(PreCompInfo preCompInfo) {
        if (preCompInfo == null || !(preCompInfo instanceof FixedPointPreCompInfo)) {
            return new FixedPointPreCompInfo();
        }
        return (FixedPointPreCompInfo) preCompInfo;
    }

    public static FixedPointPreCompInfo a(ECPoint eCPoint, int i) {
        ECCurve d = eCPoint.d();
        int i2 = 1 << i;
        PreCompInfo a = a(d.a(eCPoint, "bc_fixed_point"));
        ECPoint[] a2 = a.a();
        if (a2 == null || a2.length < i2) {
            int i3;
            int a3 = ((a(d) + i) - 1) / i;
            ECPoint[] eCPointArr = new ECPoint[i];
            eCPointArr[0] = eCPoint;
            for (i3 = 1; i3 < i; i3++) {
                eCPointArr[i3] = eCPointArr[i3 - 1].b(a3);
            }
            d.a(eCPointArr);
            ECPoint[] eCPointArr2 = new ECPoint[i2];
            eCPointArr2[0] = d.e();
            for (int i4 = i - 1; i4 >= 0; i4--) {
                ECPoint eCPoint2 = eCPointArr[i4];
                a3 = 1 << i4;
                for (i3 = a3; i3 < i2; i3 += a3 << 1) {
                    eCPointArr2[i3] = eCPointArr2[i3 - a3].b(eCPoint2);
                }
            }
            d.a(eCPointArr2);
            a.a(eCPointArr2);
            a.a(i);
            d.a(eCPoint, "bc_fixed_point", a);
        }
        return a;
    }
}
