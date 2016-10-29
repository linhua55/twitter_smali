package org.spongycastle.crypto.engines;

/* compiled from: Twttr */
public class CamelliaWrapEngine extends RFC3394WrapEngine {
    public CamelliaWrapEngine() {
        super(new CamelliaEngine());
    }
}
