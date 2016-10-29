package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
final class w implements j {
    public final f a;
    public final ab b;
    private boolean c;

    public w(ab abVar, f fVar) {
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.a = fVar;
        this.b = abVar;
    }

    public w(ab abVar) {
        this(abVar, new f());
    }

    public f b() {
        return this.a;
    }

    public long read(f fVar, long j) throws IOException {
        if (fVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.c) {
            throw new IllegalStateException("closed");
        } else if (this.a.b == 0 && this.b.read(this.a, 2048) == -1) {
            return -1;
        } else {
            return this.a.read(fVar, Math.min(j, this.a.b));
        }
    }

    public boolean f() throws IOException {
        if (!this.c) {
            return this.a.f() && this.b.read(this.a, 2048) == -1;
        } else {
            throw new IllegalStateException("closed");
        }
    }

    public void a(long j) throws IOException {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    public boolean b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.c) {
            throw new IllegalStateException("closed");
        } else {
            while (this.a.b < j) {
                if (this.b.read(this.a, 2048) == -1) {
                    return false;
                }
            }
            return true;
        }
    }

    public byte i() throws IOException {
        a(1);
        return this.a.i();
    }

    public ByteString c(long j) throws IOException {
        a(j);
        return this.a.c(j);
    }

    public byte[] t() throws IOException {
        this.a.a(this.b);
        return this.a.t();
    }

    public byte[] f(long j) throws IOException {
        a(j);
        return this.a.f(j);
    }

    public void a(byte[] bArr) throws IOException {
        try {
            a((long) bArr.length);
            this.a.a(bArr);
        } catch (EOFException e) {
            EOFException eOFException = e;
            int i = 0;
            while (this.a.b > 0) {
                int a = this.a.a(bArr, i, (int) this.a.b);
                if (a == -1) {
                    throw new AssertionError();
                }
                i += a;
            }
            throw eOFException;
        }
    }

    public int a(byte[] bArr, int i, int i2) throws IOException {
        ae.a((long) bArr.length, (long) i, (long) i2);
        if (this.a.b == 0 && this.b.read(this.a, 2048) == -1) {
            return -1;
        }
        return this.a.a(bArr, i, (int) Math.min((long) i2, this.a.b));
    }

    public void a(f fVar, long j) throws IOException {
        try {
            a(j);
            this.a.a(fVar, j);
        } catch (EOFException e) {
            fVar.a(this.a);
            throw e;
        }
    }

    public String r() throws IOException {
        this.a.a(this.b);
        return this.a.r();
    }

    public String s() throws IOException {
        long a = a((byte) 10);
        if (a != -1) {
            return this.a.e(a);
        }
        f fVar = new f();
        this.a.a(fVar, 0, Math.min(32, this.a.a()));
        throw new EOFException("\\n not found: size=" + this.a.a() + " content=" + fVar.q().d() + "...");
    }

    public short j() throws IOException {
        a(2);
        return this.a.j();
    }

    public short m() throws IOException {
        a(2);
        return this.a.m();
    }

    public int k() throws IOException {
        a(4);
        return this.a.k();
    }

    public int n() throws IOException {
        a(4);
        return this.a.n();
    }

    public long l() throws IOException {
        a(8);
        return this.a.l();
    }

    public long o() throws IOException {
        a(1);
        int i = 0;
        while (b((long) (i + 1))) {
            byte b = this.a.b((long) i);
            if ((b < 48 || b > 57) && !(i == 0 && b == 45)) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", new Object[]{Byte.valueOf(b)}));
                }
                return this.a.o();
            }
            i++;
        }
        return this.a.o();
    }

    public long p() throws IOException {
        a(1);
        for (int i = 0; b((long) (i + 1)); i++) {
            byte b = this.a.b((long) i);
            if ((b < 48 || b > 57) && ((b < 97 || b > 102) && (b < 65 || b > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[]{Byte.valueOf(b)}));
                }
                return this.a.p();
            }
        }
        return this.a.p();
    }

    public void g(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.a.b == 0 && this.b.read(this.a, 2048) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.a.a());
            this.a.g(min);
            j -= min;
        }
    }

    public long a(byte b) throws IOException {
        return a(b, 0);
    }

    public long a(byte b, long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (j >= this.a.b) {
            if (this.b.read(this.a, 2048) == -1) {
                return -1;
            }
        }
        do {
            long a = this.a.a(b, j);
            if (a != -1) {
                return a;
            }
            j = this.a.b;
        } while (this.b.read(this.a, 2048) != -1);
        return -1;
    }

    public InputStream g() {
        return new x(this);
    }

    public void close() throws IOException {
        if (!this.c) {
            this.c = true;
            this.b.close();
            this.a.u();
        }
    }

    public ac timeout() {
        return this.b.timeout();
    }

    public String toString() {
        return "buffer(" + this.b + ")";
    }
}
