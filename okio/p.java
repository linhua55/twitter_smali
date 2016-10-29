package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.Inflater;

/* compiled from: Twttr */
public final class p implements ab {
    private final j a;
    private final Inflater b;
    private int c;
    private boolean d;

    public p(ab abVar, Inflater inflater) {
        this(q.a(abVar), inflater);
    }

    p(j jVar, Inflater inflater) {
        if (jVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.a = jVar;
            this.b = inflater;
        }
    }

    public long read(f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.d) {
            throw new IllegalStateException("closed");
        } else if (j == 0) {
            return 0;
        } else {
            boolean a;
            do {
                a = a();
                try {
                    y e = fVar.e(1);
                    int inflate = this.b.inflate(e.a, e.c, 2048 - e.c);
                    if (inflate > 0) {
                        e.c += inflate;
                        fVar.b += (long) inflate;
                        return (long) inflate;
                    } else if (this.b.finished() || this.b.needsDictionary()) {
                        b();
                        if (e.b == e.c) {
                            fVar.a = e.a();
                            z.a(e);
                        }
                        return -1;
                    }
                } catch (Throwable e2) {
                    throw new IOException(e2);
                }
            } while (!a);
            throw new EOFException("source exhausted prematurely");
        }
    }

    public boolean a() throws IOException {
        if (!this.b.needsInput()) {
            return false;
        }
        b();
        if (this.b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.a.f()) {
            return true;
        } else {
            y yVar = this.a.b().a;
            this.c = yVar.c - yVar.b;
            this.b.setInput(yVar.a, yVar.b, this.c);
            return false;
        }
    }

    private void b() throws IOException {
        if (this.c != 0) {
            int remaining = this.c - this.b.getRemaining();
            this.c -= remaining;
            this.a.g((long) remaining);
        }
    }

    public ac timeout() {
        return this.a.timeout();
    }

    public void close() throws IOException {
        if (!this.d) {
            this.b.end();
            this.d = true;
            this.a.close();
        }
    }
}
