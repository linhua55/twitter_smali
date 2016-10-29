package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: cur */
public class cur extends InputStream {
    private final InputStream a;
    private boolean b;

    public cur(InputStream inputStream) {
        this.a = inputStream;
    }

    public boolean a() {
        return this.b;
    }

    public int available() throws IOException {
        return this.a.available();
    }

    public void close() throws IOException {
        this.a.close();
        this.b = true;
    }

    public void mark(int i) {
        this.a.mark(i);
    }

    public boolean markSupported() {
        return this.a.markSupported();
    }

    public int read() throws IOException {
        return this.a.read();
    }

    public int read(byte[] bArr) throws IOException {
        return this.a.read(bArr);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.a.read(bArr, i, i2);
    }

    public synchronized void reset() throws IOException {
        this.a.reset();
    }

    public long skip(long j) throws IOException {
        return this.a.skip(j);
    }
}
