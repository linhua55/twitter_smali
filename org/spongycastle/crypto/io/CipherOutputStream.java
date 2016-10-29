package org.spongycastle.crypto.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.modes.AEADBlockCipher;

/* compiled from: Twttr */
public class CipherOutputStream extends FilterOutputStream {
    private BufferedBlockCipher a;
    private StreamCipher b;
    private AEADBlockCipher c;
    private final byte[] d;
    private byte[] e;

    public void write(int i) throws IOException {
        this.d[0] = (byte) i;
        if (this.b != null) {
            this.out.write(this.b.a((byte) i));
        } else {
            write(this.d, 0, 1);
        }
    }

    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        a(i2, false);
        int a;
        if (this.a != null) {
            a = this.a.a(bArr, i, i2, this.e, 0);
            if (a != 0) {
                this.out.write(this.e, 0, a);
            }
        } else if (this.c != null) {
            a = this.c.a(bArr, i, i2, this.e, 0);
            if (a != 0) {
                this.out.write(this.e, 0, a);
            }
        } else {
            this.b.a(bArr, i, i2, this.e, 0);
            this.out.write(this.e, 0, i2);
        }
    }

    private void a(int i, boolean z) {
        if (z) {
            if (this.a != null) {
                i = this.a.b(i);
            } else if (this.c != null) {
                i = this.c.b(i);
            }
        } else if (this.a != null) {
            i = this.a.a(i);
        } else if (this.c != null) {
            i = this.c.a(i);
        }
        if (this.e == null || this.e.length < i) {
            this.e = new byte[i];
        }
    }

    public void flush() throws IOException {
        this.out.flush();
    }

    public void close() throws IOException {
        IOException iOException;
        a(0, true);
        IOException iOException2 = null;
        try {
            int a;
            if (this.a != null) {
                a = this.a.a(this.e, 0);
                if (a != 0) {
                    this.out.write(this.e, 0, a);
                }
            } else if (this.c != null) {
                a = this.c.a(this.e, 0);
                if (a != 0) {
                    this.out.write(this.e, 0, a);
                }
            }
        } catch (Throwable e) {
            iOException2 = new InvalidCipherTextIOException("Error finalising cipher data", e);
        } catch (Throwable e2) {
            iOException2 = new CipherIOException("Error closing stream: ", e2);
        }
        try {
            flush();
            this.out.close();
            iOException = iOException2;
        } catch (IOException e3) {
            iOException = e3;
            if (iOException2 != null) {
                iOException = iOException2;
            }
        }
        if (iOException != null) {
            throw iOException;
        }
    }
}
