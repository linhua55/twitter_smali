package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class DoubleAddMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint[] eCPointArr = new ECPoint[]{eCPoint.d().e(), eCPoint};
        int bitLength = bigInteger.bitLength();
        for (int i = 0; i < bitLength; i++) {
            int i2;
            if (bigInteger.testBit(i)) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            int i3 = 1 - i2;
            eCPointArr[i3] = eCPointArr[i3].c(eCPointArr[i2]);
        }
        return eCPointArr[0];
    }
}
