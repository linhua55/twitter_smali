package org.spongycastle.jcajce.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import javax.crypto.Cipher;
import org.spongycastle.crypto.io.InvalidCipherTextIOException;

/* compiled from: Twttr */
public class CipherOutputStream extends FilterOutputStream {
    private final Cipher a;
    private final byte[] b;

    public void write(int i) throws IOException {
        this.b[0] = (byte) i;
        write(this.b, 0, 1);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] update = this.a.update(bArr, i, i2);
        if (update != null) {
            this.out.write(update);
        }
    }

    public void flush() throws IOException {
        this.out.flush();
    }

    public void close() throws IOException {
        IOException iOException;
        IOException iOException2 = null;
        try {
            byte[] doFinal = this.a.doFinal();
            if (doFinal != null) {
                this.out.write(doFinal);
            }
        } catch (Throwable e) {
            iOException2 = new InvalidCipherTextIOException("Error during cipher finalisation", e);
        } catch (Exception e2) {
            iOException2 = new IOException("Error closing stream: " + e2);
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
