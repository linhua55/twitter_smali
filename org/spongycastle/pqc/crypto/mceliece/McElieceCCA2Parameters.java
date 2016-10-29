package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA256Digest;

/* compiled from: Twttr */
public class McElieceCCA2Parameters extends McElieceParameters {
    public Digest a;

    public McElieceCCA2Parameters() {
        this.a = new SHA256Digest();
    }

    public McElieceCCA2Parameters(int i, int i2) {
        super(i, i2);
        this.a = new SHA256Digest();
    }

    public Digest a() {
        return this.a;
    }
}
