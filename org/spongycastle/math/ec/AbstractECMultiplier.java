package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public abstract class AbstractECMultiplier implements ECMultiplier {
    protected abstract ECPoint b(ECPoint eCPoint, BigInteger bigInteger);

    public ECPoint a(ECPoint eCPoint, BigInteger bigInteger) {
        int signum = bigInteger.signum();
        if (signum == 0 || eCPoint.q()) {
            return eCPoint.d().e();
        }
        ECPoint b = b(eCPoint, bigInteger.abs());
        if (signum <= 0) {
            b = b.u();
        }
        return ECAlgorithms.a(b);
    }
}
