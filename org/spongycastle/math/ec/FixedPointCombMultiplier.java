package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class FixedPointCombMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve d = eCPoint.d();
        int a = FixedPointUtil.a(d);
        if (bigInteger.bitLength() > a) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        FixedPointPreCompInfo a2 = FixedPointUtil.a(eCPoint, a(a));
        ECPoint[] a3 = a2.a();
        int b = a2.b();
        int i = ((a + b) - 1) / b;
        int i2 = (i * b) - 1;
        b = 0;
        ECPoint e = d.e();
        while (b < i) {
            int i3 = 0;
            for (a = i2 - b; a >= 0; a -= i) {
                i3 <<= 1;
                if (bigInteger.testBit(a)) {
                    i3 |= 1;
                }
            }
            b++;
            e = e.c(a3[i3]);
        }
        return e;
    }

    protected int a(int i) {
        return i > 257 ? 6 : 5;
    }
}
