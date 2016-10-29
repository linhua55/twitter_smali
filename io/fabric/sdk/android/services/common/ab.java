package io.fabric.sdk.android.services.common;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
final class ab extends InputStream {
    final /* synthetic */ y a;
    private int b;
    private int c;

    private ab(y yVar, aa aaVar) {
        this.a = yVar;
        this.b = yVar.b(aaVar.b + 4);
        this.c = aaVar.c;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        y.b(bArr, "buffer");
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException();
        } else if (this.c <= 0) {
            return -1;
        } else {
            if (i2 > this.c) {
                i2 = this.c;
            }
            this.a.b(this.b, bArr, i, i2);
            this.b = this.a.b(this.b + i2);
            this.c -= i2;
            return i2;
        }
    }

    public int read() throws IOException {
        if (this.c == 0) {
            return -1;
        }
        this.a.c.seek((long) this.b);
        int read = this.a.c.read();
        this.b = this.a.b(this.b + 1);
        this.c--;
        return read;
    }
}
