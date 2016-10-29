package org.spongycastle.util.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class TeeInputStream extends InputStream {
    private final InputStream a;
    private final OutputStream b;

    public TeeInputStream(InputStream inputStream, OutputStream outputStream) {
        this.a = inputStream;
        this.b = outputStream;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.a.read(bArr, i, i2);
        if (read > 0) {
            this.b.write(bArr, i, read);
        }
        return read;
    }

    public int read() throws IOException {
        int read = this.a.read();
        if (read >= 0) {
            this.b.write(read);
        }
        return read;
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
    }
}
