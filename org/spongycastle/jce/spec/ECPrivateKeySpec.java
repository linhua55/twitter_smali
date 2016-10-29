package org.spongycastle.jce.spec;

import java.math.BigInteger;

/* compiled from: Twttr */
public class ECPrivateKeySpec extends ECKeySpec {
    private BigInteger a;

    public ECPrivateKeySpec(BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.a = bigInteger;
    }

    public BigInteger b() {
        return this.a;
    }
}
