package org.spongycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Signer;

/* compiled from: Twttr */
public class SignerOutputStream extends OutputStream {
    protected Signer a;

    public void write(int i) throws IOException {
        this.a.a((byte) i);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.a.a(bArr, i, i2);
    }
}
