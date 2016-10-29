package org.spongycastle.math.ec;

import java.math.BigInteger;
import org.spongycastle.math.ec.endo.GLVEndomorphism;

/* compiled from: Twttr */
public class GLVMultiplier extends AbstractECMultiplier {
    protected final ECCurve a;
    protected final GLVEndomorphism b;

    public GLVMultiplier(ECCurve eCCurve, GLVEndomorphism gLVEndomorphism) {
        if (eCCurve == null || eCCurve.i() == null) {
            throw new IllegalArgumentException("Need curve with known group order");
        }
        this.a = eCCurve;
        this.b = gLVEndomorphism;
    }

    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        if (this.a.a(eCPoint.d())) {
            BigInteger[] a = this.b.a(bigInteger.mod(eCPoint.d().i()));
            BigInteger bigInteger2 = a[0];
            BigInteger bigInteger3 = a[1];
            ECPointMap a2 = this.b.a();
            if (this.b.b()) {
                return ECAlgorithms.a(eCPoint, bigInteger2, a2, bigInteger3);
            }
            return ECAlgorithms.b(eCPoint, bigInteger2, a2.a(eCPoint), bigInteger3);
        }
        throw new IllegalStateException();
    }
}
