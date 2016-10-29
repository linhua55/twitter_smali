package defpackage;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
/* renamed from: cuz */
class cuz extends FilterOutputStream {
    final /* synthetic */ cuy a;

    private cuz(cuy cuy, OutputStream outputStream) {
        this.a = cuy;
        super(outputStream);
    }

    public void write(int i) throws IOException {
        try {
            this.out.write(i);
        } catch (IOException e) {
            this.a.c = true;
            throw e;
        }
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.out.write(bArr, i, i2);
        } catch (IOException e) {
            this.a.c = true;
            throw e;
        }
    }

    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e) {
            this.a.c = true;
            throw e;
        }
    }

    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e) {
            this.a.c = true;
            throw e;
        }
    }
}
