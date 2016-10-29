package okio;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
final class u implements i {
    public final f a;
    public final aa b;
    private boolean c;

    public u(aa aaVar, f fVar) {
        if (aaVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.a = fVar;
        this.b = aaVar;
    }

    public u(aa aaVar) {
        this(aaVar, new f());
    }

    public f b() {
        return this.a;
    }

    public void write(f fVar, long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.write(fVar, j);
        x();
    }

    public i b(ByteString byteString) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.a(byteString);
        return x();
    }

    public i b(String str) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.a(str);
        return x();
    }

    public i c(byte[] bArr) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.b(bArr);
        return x();
    }

    public i c(byte[] bArr, int i, int i2) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.b(bArr, i, i2);
        return x();
    }

    public long a(ab abVar) throws IOException {
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = abVar.read(this.a, 2048);
            if (read == -1) {
                return j;
            }
            j += read;
            x();
        }
    }

    public i i(int i) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.b(i);
        return x();
    }

    public i h(int i) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.c(i);
        return x();
    }

    public i g(int i) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.d(i);
        return x();
    }

    public i m(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.h(j);
        return x();
    }

    public i l(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.i(j);
        return x();
    }

    public i k(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.j(j);
        return x();
    }

    public i x() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long h = this.a.h();
        if (h > 0) {
            this.b.write(this.a, h);
        }
        return this;
    }

    public i e() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long a = this.a.a();
        if (a > 0) {
            this.b.write(this.a, a);
        }
        return this;
    }

    public OutputStream c() {
        return new v(this);
    }

    public void flush() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (this.a.b > 0) {
            this.b.write(this.a, this.a.b);
        }
        this.b.flush();
    }

    public void close() throws IOException {
        if (!this.c) {
            Throwable th = null;
            try {
                if (this.a.b > 0) {
                    this.b.write(this.a, this.a.b);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.b.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.c = true;
            if (th != null) {
                ae.a(th);
            }
        }
    }

    public ac timeout() {
        return this.b.timeout();
    }

    public String toString() {
        return "buffer(" + this.b + ")";
    }
}
