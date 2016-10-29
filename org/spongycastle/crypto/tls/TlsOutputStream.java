package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
class TlsOutputStream extends OutputStream {
    private byte[] a;
    private TlsProtocol b;

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.b.b(bArr, i, i2);
    }

    public void write(int i) throws IOException {
        this.a[0] = (byte) i;
        write(this.a, 0, 1);
    }

    public void close() throws IOException {
        this.b.j();
    }

    public void flush() throws IOException {
        this.b.k();
    }
}
