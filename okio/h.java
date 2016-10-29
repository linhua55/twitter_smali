package okio;

import java.io.InputStream;

/* compiled from: Twttr */
class h extends InputStream {
    final /* synthetic */ f a;

    h(f fVar) {
        this.a = fVar;
    }

    public int read() {
        if (this.a.b > 0) {
            return this.a.i() & 255;
        }
        return -1;
    }

    public int read(byte[] bArr, int i, int i2) {
        return this.a.a(bArr, i, i2);
    }

    public int available() {
        return (int) Math.min(this.a.b, 2147483647L);
    }

    public void close() {
    }

    public String toString() {
        return this.a + ".inputStream()";
    }
}
