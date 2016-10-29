package defpackage;

import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: cvj */
public class cvj extends InputStream {
    private final InputStream a;
    private long b;
    private long c;
    private long d;
    private long e;
    private IOException f;

    public cvj(InputStream inputStream) {
        this.a = inputStream;
    }

    public long a() {
        return this.b / 1000000;
    }

    public long b() {
        return this.c;
    }

    public long c() {
        return this.e;
    }

    public boolean d() {
        return this.f != null;
    }

    public IOException e() {
        return this.f;
    }

    public int available() throws IOException {
        try {
            return this.a.available();
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }

    public void close() throws IOException {
        try {
            this.a.close();
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }

    public void mark(int i) {
        this.a.mark(i);
    }

    public boolean markSupported() {
        return this.a.markSupported();
    }

    public int read() throws IOException {
        try {
            f();
            int read = this.a.read();
            a((long) read);
            return read;
        } catch (IOException e) {
            this.f = e;
            throw e;
        } catch (Throwable th) {
            a((long) -1);
        }
    }

    public int read(byte[] bArr) throws IOException {
        try {
            f();
            int read = this.a.read(bArr);
            a((long) read);
            return read;
        } catch (IOException e) {
            this.f = e;
            throw e;
        } catch (Throwable th) {
            a((long) -1);
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            f();
            int read = this.a.read(bArr, i, i2);
            a((long) read);
            return read;
        } catch (IOException e) {
            this.f = e;
            throw e;
        } catch (Throwable th) {
            a((long) -1);
        }
    }

    public synchronized void reset() throws IOException {
        try {
            this.a.reset();
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }

    public long skip(long j) throws IOException {
        try {
            f();
            long skip = this.a.skip(j);
            a(skip);
            return skip;
        } catch (IOException e) {
            this.f = e;
            throw e;
        } catch (Throwable th) {
            a(-1);
        }
    }

    private void f() {
        this.d = PlatformContext.f().a().c();
    }

    private void a(long j) {
        t a = PlatformContext.f().a();
        long c = a.c() - this.d;
        if (c > 1000000) {
            this.c = a.b();
        }
        this.b += c;
        if (j != -1) {
            this.e += j;
        }
    }
}
