package org.spongycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.crypto.Mac;

/* compiled from: Twttr */
public class MacInputStream extends FilterInputStream {
    protected Mac a;

    public MacInputStream(InputStream inputStream, Mac mac) {
        super(inputStream);
        this.a = mac;
    }

    public int read() throws IOException {
        int read = this.in.read();
        if (read >= 0) {
            this.a.a((byte) read);
        }
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.in.read(bArr, i, i2);
        if (read >= 0) {
            this.a.a(bArr, i, read);
        }
        return read;
    }
}
