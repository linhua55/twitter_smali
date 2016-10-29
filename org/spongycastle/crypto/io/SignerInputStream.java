package org.spongycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import org.spongycastle.crypto.Signer;

/* compiled from: Twttr */
public class SignerInputStream extends FilterInputStream {
    protected Signer a;

    public int read() throws IOException {
        int read = this.in.read();
        if (read >= 0) {
            this.a.a((byte) read);
        }
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.in.read(bArr, i, i2);
        if (read > 0) {
            this.a.a(bArr, i, read);
        }
        return read;
    }
}
