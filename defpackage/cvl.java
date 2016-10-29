package defpackage;

import com.twitter.util.z;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: cvl */
public class cvl extends BufferedInputStream {
    private final int a;
    private final z<Double> b;
    private long c;
    private long d;
    private double e;

    public cvl(InputStream inputStream, int i, z<Double> zVar) {
        this(inputStream, i, zVar, 4096);
    }

    public cvl(InputStream inputStream, int i, z<Double> zVar, int i2) {
        super(inputStream, i2);
        this.a = i;
        this.b = zVar;
        this.c = 0;
        this.d = 0;
    }

    public int read() throws IOException {
        int read = super.read();
        a((long) read);
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        a((long) read);
        return read;
    }

    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        a(skip);
        return skip;
    }

    public void mark(int i) {
        super.mark(i);
        this.c = this.d;
    }

    public void reset() throws IOException {
        super.reset();
        this.d = this.c;
    }

    private synchronized void a(long j) throws IOException {
        double d = 100.0d;
        synchronized (this) {
            if (this.b != null && this.e >= 0.0d) {
                if (this.a <= 0) {
                    d = -1.0d;
                } else if (j >= 0) {
                    this.d += j;
                    double d2 = (((double) this.d) / ((double) this.a)) * 100.0d;
                    d = d2 > 100.0d ? -1.0d : d2;
                }
                if (d > this.e || (d == -1.0d && this.e != d)) {
                    this.e = d;
                    this.b.a(Double.valueOf(this.e));
                }
            }
        }
    }
}
