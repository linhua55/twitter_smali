package org.spongycastle.jce.spec;

import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class ECPublicKeySpec extends ECKeySpec {
    private ECPoint a;

    public ECPublicKeySpec(ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        if (eCPoint.d() != null) {
            this.a = eCPoint.p();
        } else {
            this.a = eCPoint;
        }
    }

    public ECPoint b() {
        return this.a;
    }
}
