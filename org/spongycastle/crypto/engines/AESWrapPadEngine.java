package org.spongycastle.crypto.engines;

/* compiled from: Twttr */
public class AESWrapPadEngine extends RFC5649WrapEngine {
    public AESWrapPadEngine() {
        super(new AESEngine());
    }
}
