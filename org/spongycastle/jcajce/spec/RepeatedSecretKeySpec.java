package org.spongycastle.jcajce.spec;

import javax.crypto.SecretKey;

/* compiled from: Twttr */
public class RepeatedSecretKeySpec implements SecretKey {
    private String algorithm;

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return null;
    }

    public byte[] getEncoded() {
        return null;
    }
}
