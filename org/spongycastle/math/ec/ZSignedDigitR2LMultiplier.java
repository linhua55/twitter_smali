package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class ZSignedDigitR2LMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint e = eCPoint.d().e();
        int bitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        ECPoint b = eCPoint.b(lowestSetBit);
        ECPoint eCPoint2 = e;
        while (true) {
            int i = lowestSetBit + 1;
            if (i >= bitLength) {
                return eCPoint2.b(b);
            }
            ECPoint b2 = eCPoint2.b(bigInteger.testBit(i) ? b : b.u());
            b = b.v();
            eCPoint2 = b2;
            lowestSetBit = i;
        }
    }
}
