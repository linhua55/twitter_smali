package okio;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
class v extends OutputStream {
    final /* synthetic */ u a;

    v(u uVar) {
        this.a = uVar;
    }

    public void write(int i) throws IOException {
        if (this.a.c) {
            throw new IOException("closed");
        }
        this.a.a.b((byte) i);
        this.a.x();
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.a.c) {
            throw new IOException("closed");
        }
        this.a.a.b(bArr, i, i2);
        this.a.x();
    }

    public void flush() throws IOException {
        if (!this.a.c) {
            this.a.flush();
        }
    }

    public void close() throws IOException {
        this.a.close();
    }

    public String toString() {
        return this.a + ".outputStream()";
    }
}
