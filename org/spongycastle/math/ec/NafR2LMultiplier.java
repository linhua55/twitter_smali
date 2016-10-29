package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class NafR2LMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        int i = 0;
        int[] a = WNafUtil.a(bigInteger);
        ECPoint e = eCPoint.d().e();
        int i2 = 0;
        while (i < a.length) {
            ECPoint u;
            int i3 = a[i];
            int i4 = i3 >> 16;
            eCPoint = eCPoint.b(i2 + (i3 & 65535));
            if (i4 < 0) {
                u = eCPoint.u();
            } else {
                u = eCPoint;
            }
            e = e.b(u);
            i2 = 1;
            i++;
        }
        return e;
    }
}
