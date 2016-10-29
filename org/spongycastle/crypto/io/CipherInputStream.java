package org.spongycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.SkippingCipher;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class CipherInputStream extends FilterInputStream {
    private SkippingCipher a;
    private byte[] b;
    private BufferedBlockCipher c;
    private StreamCipher d;
    private AEADBlockCipher e;
    private byte[] f;
    private byte[] g;
    private int h;
    private int i;
    private boolean j;
    private long k;
    private int l;

    private int a() throws IOException {
        if (this.j) {
            return -1;
        }
        this.h = 0;
        this.i = 0;
        while (this.i == 0) {
            int read = this.in.read(this.b);
            if (read == -1) {
                b();
                if (this.i == 0) {
                    return -1;
                }
                return this.i;
            }
            a(read, false);
            if (this.c != null) {
                this.i = this.c.a(this.b, 0, read, this.f, 0);
            } else {
                try {
                    if (this.e != null) {
                        this.i = this.e.a(this.b, 0, read, this.f, 0);
                    } else {
                        this.d.a(this.b, 0, read, this.f, 0);
                        this.i = read;
                    }
                } catch (Throwable e) {
                    throw new CipherIOException("Error processing stream ", e);
                }
            }
        }
        return this.i;
    }

    private void b() throws IOException {
        try {
            this.j = true;
            a(0, true);
            if (this.c != null) {
                this.i = this.c.a(this.f, 0);
            } else if (this.e != null) {
                this.i = this.e.a(this.f, 0);
            } else {
                this.i = 0;
            }
        } catch (Throwable e) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e);
        } catch (Exception e2) {
            throw new IOException("Error finalising cipher " + e2);
        }
    }

    public int read() throws IOException {
        if (this.h >= this.i && a() < 0) {
            return -1;
        }
        byte[] bArr = this.f;
        int i = this.h;
        this.h = i + 1;
        return bArr[i] & 255;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.h >= this.i && a() < 0) {
            return -1;
        }
        int min = Math.min(i2, available());
        System.arraycopy(this.f, this.h, bArr, i, min);
        this.h += min;
        return min;
    }

    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0;
        }
        int available;
        if (this.a != null) {
            available = available();
            if (j <= ((long) available)) {
                this.h = (int) (((long) this.h) + j);
                return j;
            }
            this.h = this.i;
            long skip = this.in.skip(j - ((long) available));
            if (skip == this.a.a(skip)) {
                return skip + ((long) available);
            }
            throw new IOException("Unable to skip cipher " + skip + " bytes.");
        }
        available = (int) Math.min(j, (long) available());
        this.h += available;
        return (long) available;
    }

    public int available() throws IOException {
        return this.i - this.h;
    }

    private void a(int i, boolean z) {
        if (z) {
            if (this.c != null) {
                i = this.c.b(i);
            } else if (this.e != null) {
                i = this.e.b(i);
            }
        } else if (this.c != null) {
            i = this.c.a(i);
        } else if (this.e != null) {
            i = this.e.a(i);
        }
        if (this.f == null || this.f.length < i) {
            this.f = new byte[i];
        }
    }

    public void close() throws IOException {
        try {
            this.in.close();
            this.h = 0;
            this.i = 0;
            this.l = 0;
            this.k = 0;
            if (this.g != null) {
                Arrays.a(this.g, (byte) 0);
                this.g = null;
            }
            if (this.f != null) {
                Arrays.a(this.f, (byte) 0);
                this.f = null;
            }
            Arrays.a(this.b, (byte) 0);
        } finally {
            if (!this.j) {
                b();
            }
        }
    }

    public void mark(int i) {
        this.in.mark(i);
        if (this.a != null) {
            this.k = this.a.d();
        }
        if (this.f != null) {
            this.g = new byte[this.f.length];
            System.arraycopy(this.f, 0, this.g, 0, this.f.length);
        }
        this.l = this.h;
    }

    public void reset() throws IOException {
        if (this.a == null) {
            throw new IOException("cipher must implement SkippingCipher to be used with reset()");
        }
        this.in.reset();
        this.a.b(this.k);
        if (this.g != null) {
            this.f = this.g;
        }
        this.h = this.l;
    }

    public boolean markSupported() {
        if (this.a != null) {
            return this.in.markSupported();
        }
        return false;
    }
}
