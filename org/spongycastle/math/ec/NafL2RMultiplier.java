package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class NafL2RMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        int[] a = WNafUtil.a(bigInteger);
        ECPoint p = eCPoint.p();
        ECPoint u = p.u();
        ECPoint e = eCPoint.d().e();
        int length = a.length;
        ECPoint eCPoint2 = e;
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return eCPoint2;
            }
            ECPoint eCPoint3;
            length = a[i];
            int i2 = 65535 & length;
            if ((length >> 16) < 0) {
                eCPoint3 = u;
            } else {
                eCPoint3 = p;
            }
            eCPoint2 = eCPoint2.c(eCPoint3).b(i2);
            length = i;
        }
    }
}
