package defpackage;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
/* renamed from: bp */
public class bp extends FilterOutputStream {
    private long a;

    public bp(OutputStream outputStream) {
        super(outputStream);
        this.a = 0;
    }

    public long a() {
        return this.a;
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        this.a += (long) i2;
    }

    public void write(int i) throws IOException {
        this.out.write(i);
        this.a++;
    }

    public void close() throws IOException {
        this.out.close();
    }
}
