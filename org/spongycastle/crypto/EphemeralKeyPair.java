package org.spongycastle.crypto;

/* compiled from: Twttr */
public class EphemeralKeyPair {
    private AsymmetricCipherKeyPair a;
    private KeyEncoder b;

    public EphemeralKeyPair(AsymmetricCipherKeyPair asymmetricCipherKeyPair, KeyEncoder keyEncoder) {
        this.a = asymmetricCipherKeyPair;
        this.b = keyEncoder;
    }

    public AsymmetricCipherKeyPair a() {
        return this.a;
    }

    public byte[] b() {
        return this.b.a(this.a.a());
    }
}
