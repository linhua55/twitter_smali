package okio;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class x extends InputStream {
    final /* synthetic */ w a;

    x(w wVar) {
        this.a = wVar;
    }

    public int read() throws IOException {
        if (this.a.c) {
            throw new IOException("closed");
        } else if (this.a.a.b == 0 && this.a.b.read(this.a.a, 2048) == -1) {
            return -1;
        } else {
            return this.a.a.i() & 255;
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.a.c) {
            throw new IOException("closed");
        }
        ae.a((long) bArr.length, (long) i, (long) i2);
        if (this.a.a.b == 0 && this.a.b.read(this.a.a, 2048) == -1) {
            return -1;
        }
        return this.a.a.a(bArr, i, i2);
    }

    public int available() throws IOException {
        if (!this.a.c) {
            return (int) Math.min(this.a.a.b, 2147483647L);
        }
        throw new IOException("closed");
    }

    public void close() throws IOException {
        this.a.close();
    }

    public String toString() {
        return this.a + ".inputStream()";
    }
}
