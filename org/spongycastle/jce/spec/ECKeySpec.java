package org.spongycastle.jce.spec;

import java.security.spec.KeySpec;

/* compiled from: Twttr */
public class ECKeySpec implements KeySpec {
    private ECParameterSpec a;

    protected ECKeySpec(ECParameterSpec eCParameterSpec) {
        this.a = eCParameterSpec;
    }

    public ECParameterSpec a() {
        return this.a;
    }
}
