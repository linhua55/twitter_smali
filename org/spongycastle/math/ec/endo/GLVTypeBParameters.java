package org.spongycastle.math.ec.endo;

import java.math.BigInteger;

/* compiled from: Twttr */
public class GLVTypeBParameters {
    protected final BigInteger a;
    protected final BigInteger b;
    protected final BigInteger[] c;
    protected final BigInteger[] d;
    protected final BigInteger e;
    protected final BigInteger f;
    protected final int g;

    public GLVTypeBParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2, BigInteger bigInteger3, BigInteger bigInteger4, int i) {
        this.a = bigInteger;
        this.b = bigInteger2;
        this.c = bigIntegerArr;
        this.d = bigIntegerArr2;
        this.e = bigInteger3;
        this.f = bigInteger4;
        this.g = i;
    }

    public BigInteger a() {
        return this.a;
    }

    public BigInteger[] b() {
        return this.c;
    }

    public BigInteger[] c() {
        return this.d;
    }

    public BigInteger d() {
        return this.e;
    }

    public BigInteger e() {
        return this.f;
    }

    public int f() {
        return this.g;
    }
}
