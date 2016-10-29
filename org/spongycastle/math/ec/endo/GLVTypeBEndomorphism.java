package org.spongycastle.math.ec.endo;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPointMap;
import org.spongycastle.math.ec.ScaleXPointMap;

/* compiled from: Twttr */
public class GLVTypeBEndomorphism implements GLVEndomorphism {
    protected final ECCurve a;
    protected final GLVTypeBParameters b;
    protected final ECPointMap c;

    public GLVTypeBEndomorphism(ECCurve eCCurve, GLVTypeBParameters gLVTypeBParameters) {
        this.a = eCCurve;
        this.b = gLVTypeBParameters;
        this.c = new ScaleXPointMap(eCCurve.a(gLVTypeBParameters.a()));
    }

    public BigInteger[] a(BigInteger bigInteger) {
        int f = this.b.f();
        BigInteger a = a(bigInteger, this.b.d(), f);
        BigInteger a2 = a(bigInteger, this.b.e(), f);
        BigInteger[] b = this.b.b();
        BigInteger[] c = this.b.c();
        BigInteger subtract = bigInteger.subtract(a.multiply(b[0]).add(a2.multiply(c[0])));
        a2 = a.multiply(b[1]).add(a2.multiply(c[1])).negate();
        return new BigInteger[]{subtract, a2};
    }

    public ECPointMap a() {
        return this.c;
    }

    public boolean b() {
        return true;
    }

    protected BigInteger a(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        Object obj = bigInteger2.signum() < 0 ? 1 : null;
        BigInteger multiply = bigInteger.multiply(bigInteger2.abs());
        boolean testBit = multiply.testBit(i - 1);
        multiply = multiply.shiftRight(i);
        if (testBit) {
            multiply = multiply.add(ECConstants.d);
        }
        return obj != null ? multiply.negate() : multiply;
    }
}
