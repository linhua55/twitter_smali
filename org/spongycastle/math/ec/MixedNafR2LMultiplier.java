package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class MixedNafR2LMultiplier extends AbstractECMultiplier {
    protected int a;
    protected int b;

    public MixedNafR2LMultiplier() {
        this(2, 4);
    }

    public MixedNafR2LMultiplier(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        int i = 0;
        ECCurve d = eCPoint.d();
        ECCurve a = a(d, this.a);
        ECCurve a2 = a(d, this.b);
        int[] a3 = WNafUtil.a(bigInteger);
        ECPoint e = a.e();
        ECPoint a4 = a2.a(eCPoint);
        int i2 = 0;
        while (i < a3.length) {
            int i3 = a3[i];
            int i4 = i3 >> 16;
            a4 = a4.b(i2 + (i3 & 65535));
            ECPoint a5 = a.a(a4);
            if (i4 < 0) {
                a5 = a5.u();
            }
            e = e.b(a5);
            i2 = 1;
            i++;
        }
        return d.a(e);
    }

    protected ECCurve a(ECCurve eCCurve, int i) {
        if (eCCurve.k() == i) {
            return eCCurve;
        }
        if (eCCurve.a(i)) {
            return eCCurve.b().a(i).a();
        }
        throw new IllegalArgumentException("Coordinate system " + i + " not supported by this curve");
    }
}
