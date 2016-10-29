package org.spongycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class IndefiniteLengthInputStream extends LimitedInputStream {
    private int b;
    private int c;
    private boolean d;
    private boolean e;

    IndefiniteLengthInputStream(InputStream inputStream, int i) throws IOException {
        super(inputStream, i);
        this.d = false;
        this.e = true;
        this.b = inputStream.read();
        this.c = inputStream.read();
        if (this.c < 0) {
            throw new EOFException();
        }
        b();
    }

    void a(boolean z) {
        this.e = z;
        b();
    }

    private boolean b() {
        if (!this.d && this.e && this.b == 0 && this.c == 0) {
            this.d = true;
            b(true);
        }
        return this.d;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.e || i2 < 3) {
            return super.read(bArr, i, i2);
        }
        if (this.d) {
            return -1;
        }
        int read = this.a.read(bArr, i + 2, i2 - 2);
        if (read < 0) {
            throw new EOFException();
        }
        bArr[i] = (byte) this.b;
        bArr[i + 1] = (byte) this.c;
        this.b = this.a.read();
        this.c = this.a.read();
        if (this.c >= 0) {
            return read + 2;
        }
        throw new EOFException();
    }

    public int read() throws IOException {
        if (b()) {
            return -1;
        }
        int read = this.a.read();
        if (read < 0) {
            throw new EOFException();
        }
        int i = this.b;
        this.b = this.c;
        this.c = read;
        return i;
    }
}
