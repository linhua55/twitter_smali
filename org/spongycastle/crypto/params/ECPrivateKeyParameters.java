package org.spongycastle.crypto.params;

import java.math.BigInteger;

/* compiled from: Twttr */
public class ECPrivateKeyParameters extends ECKeyParameters {
    BigInteger c;

    public ECPrivateKeyParameters(BigInteger bigInteger, ECDomainParameters eCDomainParameters) {
        super(true, eCDomainParameters);
        this.c = bigInteger;
    }

    public BigInteger c() {
        return this.c;
    }
}
