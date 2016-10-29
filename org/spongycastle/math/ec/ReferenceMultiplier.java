package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class ReferenceMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        return ECAlgorithms.a(eCPoint, bigInteger);
    }
}
