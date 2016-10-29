package org.spongycastle.crypto.engines;

/* compiled from: Twttr */
public class AESWrapEngine extends RFC3394WrapEngine {
    public AESWrapEngine() {
        super(new AESEngine());
    }
}
