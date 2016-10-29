package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.Digest;

/* compiled from: Twttr */
public class KDF2BytesGenerator extends BaseKDFBytesGenerator {
    public KDF2BytesGenerator(Digest digest) {
        super(1, digest);
    }
}
