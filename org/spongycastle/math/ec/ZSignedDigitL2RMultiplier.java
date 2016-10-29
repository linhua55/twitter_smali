package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class ZSignedDigitL2RMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint p = eCPoint.p();
        ECPoint u = p.u();
        int bitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        ECPoint eCPoint2 = p;
        while (true) {
            int i = bitLength - 1;
            if (i <= lowestSetBit) {
                return eCPoint2.b(lowestSetBit);
            }
            eCPoint2 = eCPoint2.c(bigInteger.testBit(i) ? p : u);
            bitLength = i;
        }
    }
}
