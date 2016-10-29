package org.spongycastle.jcajce.io;

import java.io.FilterInputStream;
import java.io.IOException;
import javax.crypto.Cipher;
import org.spongycastle.crypto.io.InvalidCipherTextIOException;

/* compiled from: Twttr */
public class CipherInputStream extends FilterInputStream {
    private final Cipher a;
    private final byte[] b;
    private boolean c;
    private byte[] d;
    private int e;
    private int f;

    private int a() throws IOException {
        if (this.c) {
            return -1;
        }
        this.f = 0;
        this.e = 0;
        while (this.e == 0) {
            int read = this.in.read(this.b);
            if (read == -1) {
                this.d = b();
                if (this.d == null || this.d.length == 0) {
                    return -1;
                }
                this.e = this.d.length;
                return this.e;
            }
            this.d = this.a.update(this.b, 0, read);
            if (this.d != null) {
                this.e = this.d.length;
            }
        }
        return this.e;
    }

    private byte[] b() throws InvalidCipherTextIOException {
        try {
            this.c = true;
            return this.a.doFinal();
        } catch (Throwable e) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e);
        }
    }

    public int read() throws IOException {
        if (this.f >= this.e && a() < 0) {
            return -1;
        }
        byte[] bArr = this.d;
        int i = this.f;
        this.f = i + 1;
        return bArr[i] & 255;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f >= this.e && a() < 0) {
            return -1;
        }
        int min = Math.min(i2, available());
        System.arraycopy(this.d, this.f, bArr, i, min);
        this.f += min;
        return min;
    }

    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0;
        }
        int min = (int) Math.min(j, (long) available());
        this.f += min;
        return (long) min;
    }

    public int available() throws IOException {
        return this.e - this.f;
    }

    public void close() throws IOException {
        try {
            this.in.close();
            this.f = 0;
            this.e = 0;
        } finally {
            if (!this.c) {
                b();
            }
        }
    }

    public void mark(int i) {
    }

    public void reset() throws IOException {
    }

    public boolean markSupported() {
        return false;
    }
}
