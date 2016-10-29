package org.spongycastle.crypto.params;

import java.math.BigInteger;

/* compiled from: Twttr */
public class DSAPublicKeyParameters extends DSAKeyParameters {
    private BigInteger b;

    public DSAPublicKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(false, dSAParameters);
        this.b = bigInteger;
    }

    public BigInteger c() {
        return this.b;
    }
}
