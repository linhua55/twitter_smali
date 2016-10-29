package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class TlsInputStream extends InputStream {
    private byte[] a;
    private TlsProtocol b;

    public int available() throws IOException {
        return this.b.e();
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.b.a(bArr, i, i2);
    }

    public int read() throws IOException {
        if (read(this.a) < 0) {
            return -1;
        }
        return this.a[0] & 255;
    }

    public void close() throws IOException {
        this.b.j();
    }
}
