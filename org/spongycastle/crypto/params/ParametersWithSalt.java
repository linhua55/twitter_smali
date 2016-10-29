package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

/* compiled from: Twttr */
public class ParametersWithSalt implements CipherParameters {
    private byte[] a;
    private CipherParameters b;

    public byte[] a() {
        return this.a;
    }

    public CipherParameters b() {
        return this.b;
    }
}
