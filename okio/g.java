package okio;

import java.io.OutputStream;

/* compiled from: Twttr */
class g extends OutputStream {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void write(int i) {
        this.a.b((byte) i);
    }

    public void write(byte[] bArr, int i, int i2) {
        this.a.b(bArr, i, i2);
    }

    public void flush() {
    }

    public void close() {
    }

    public String toString() {
        return this + ".outputStream()";
    }
}
