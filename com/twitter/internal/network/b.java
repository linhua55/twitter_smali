package com.twitter.internal.network;

import android.support.v7.widget.RecyclerView.ItemAnimator;
import defpackage.cun;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class b implements i {
    private final byte[] a;
    private final OutputStream b;
    private final p c;

    public b() {
        this(null, null);
    }

    public b(OutputStream outputStream, p pVar) {
        this.a = new byte[ItemAnimator.FLAG_MOVED];
        this.b = outputStream;
        this.c = pVar;
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        OutputStream outputStream;
        if (this.b == null || this.c == null) {
            outputStream = this.b;
        } else {
            outputStream = new a(this.b, (long) i2, this.c);
        }
        byte[] bArr = this.a;
        int read;
        if (i2 < 0) {
            while (true) {
                try {
                    read = inputStream.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        break;
                    } else if (outputStream != null) {
                        outputStream.write(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    cun.a(inputStream);
                    if (outputStream != null) {
                        try {
                            outputStream.flush();
                            outputStream.close();
                        } catch (IOException e) {
                        }
                    }
                }
            }
        } else {
            while (i2 > 0) {
                read = inputStream.read(bArr, 0, Math.min(i2, bArr.length));
                if (read == -1) {
                    throw new IOException("Invalid content length: " + i2);
                } else if (read > 0) {
                    i2 -= read;
                    if (outputStream != null) {
                        outputStream.write(bArr, 0, read);
                    } else {
                        continue;
                    }
                }
            }
        }
        cun.a(inputStream);
        if (outputStream != null) {
            try {
                outputStream.flush();
                outputStream.close();
            } catch (IOException e2) {
            }
        }
    }

    public void a(k kVar) {
    }
}
