package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: Twttr */
public final class o implements ab {
    private int a;
    private final j b;
    private final Inflater c;
    private final p d;
    private final CRC32 e;

    public o(ab abVar) {
        this.a = 0;
        this.e = new CRC32();
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.c = new Inflater(true);
        this.b = q.a(abVar);
        this.d = new p(this.b, this.c);
    }

    public long read(f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j == 0) {
            return 0;
        } else {
            if (this.a == 0) {
                a();
                this.a = 1;
            }
            if (this.a == 1) {
                long j2 = fVar.b;
                long read = this.d.read(fVar, j);
                if (read != -1) {
                    a(fVar, j2, read);
                    return read;
                }
                this.a = 2;
            }
            if (this.a == 2) {
                b();
                this.a = 3;
                if (!this.b.f()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1;
        }
    }

    private void a() throws IOException {
        Object obj;
        long a;
        this.b.a(10);
        byte b = this.b.b().b(3);
        if (((b >> 1) & 1) == 1) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj != null) {
            a(this.b.b(), 0, 10);
        }
        a("ID1ID2", 8075, this.b.j());
        this.b.g(8);
        if (((b >> 2) & 1) == 1) {
            this.b.a(2);
            if (obj != null) {
                a(this.b.b(), 0, 2);
            }
            short m = this.b.b().m();
            this.b.a((long) m);
            if (obj != null) {
                a(this.b.b(), 0, (long) m);
            }
            this.b.g((long) m);
        }
        if (((b >> 3) & 1) == 1) {
            a = this.b.a((byte) 0);
            if (a == -1) {
                throw new EOFException();
            }
            if (obj != null) {
                a(this.b.b(), 0, 1 + a);
            }
            this.b.g(1 + a);
        }
        if (((b >> 4) & 1) == 1) {
            a = this.b.a((byte) 0);
            if (a == -1) {
                throw new EOFException();
            }
            if (obj != null) {
                a(this.b.b(), 0, 1 + a);
            }
            this.b.g(1 + a);
        }
        if (obj != null) {
            a("FHCRC", this.b.m(), (short) ((int) this.e.getValue()));
            this.e.reset();
        }
    }

    private void b() throws IOException {
        a("CRC", this.b.n(), (int) this.e.getValue());
        a("ISIZE", this.b.n(), this.c.getTotalOut());
    }

    public ac timeout() {
        return this.b.timeout();
    }

    public void close() throws IOException {
        this.d.close();
    }

    private void a(f fVar, long j, long j2) {
        y yVar = fVar.a;
        while (j >= ((long) (yVar.c - yVar.b))) {
            j -= (long) (yVar.c - yVar.b);
            yVar = yVar.f;
        }
        while (j2 > 0) {
            int i = (int) (((long) yVar.b) + j);
            int min = (int) Math.min((long) (yVar.c - i), j2);
            this.e.update(yVar.a, i, min);
            j2 -= (long) min;
            yVar = yVar.f;
            j = 0;
        }
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}));
        }
    }
}
