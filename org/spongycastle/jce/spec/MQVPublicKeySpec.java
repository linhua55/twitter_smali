package org.spongycastle.jce.spec;

import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.spongycastle.jce.interfaces.MQVPublicKey;

/* compiled from: Twttr */
public class MQVPublicKeySpec implements KeySpec, MQVPublicKey {
    private PublicKey ephemeralKey;
    private PublicKey staticKey;

    public PublicKey a() {
        return this.staticKey;
    }

    public PublicKey b() {
        return this.ephemeralKey;
    }

    public String getAlgorithm() {
        return "ECMQV";
    }

    public String getFormat() {
        return null;
    }

    public byte[] getEncoded() {
        return null;
    }
}
