package org.spongycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Digest;

/* compiled from: Twttr */
public class DigestOutputStream extends OutputStream {
    protected Digest a;

    public DigestOutputStream(Digest digest) {
        this.a = digest;
    }

    public void write(int i) throws IOException {
        this.a.a((byte) i);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.a.a(bArr, i, i2);
    }

    public byte[] a() {
        byte[] bArr = new byte[this.a.b()];
        this.a.a(bArr, 0);
        return bArr;
    }
}
