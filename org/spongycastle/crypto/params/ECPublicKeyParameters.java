package org.spongycastle.crypto.params;

import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class ECPublicKeyParameters extends ECKeyParameters {
    ECPoint c;

    public ECPublicKeyParameters(ECPoint eCPoint, ECDomainParameters eCDomainParameters) {
        super(false, eCDomainParameters);
        this.c = eCPoint.p();
    }

    public ECPoint c() {
        return this.c;
    }
}
