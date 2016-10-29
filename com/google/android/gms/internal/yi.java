package com.google.android.gms.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

class yi extends FilterInputStream {
    private int a;

    private yi(InputStream inputStream) {
        super(inputStream);
        this.a = 0;
    }

    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.a++;
        }
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.a += read;
        }
        return read;
    }
}
