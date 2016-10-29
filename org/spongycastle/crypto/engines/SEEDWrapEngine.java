package org.spongycastle.crypto.engines;

/* compiled from: Twttr */
public class SEEDWrapEngine extends RFC3394WrapEngine {
    public SEEDWrapEngine() {
        super(new SEEDEngine());
    }
}
