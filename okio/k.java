package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: Twttr */
public final class k implements aa {
    private final i a;
    private final Deflater b;
    private boolean c;

    public k(aa aaVar, Deflater deflater) {
        this(q.a(aaVar), deflater);
    }

    k(i iVar, Deflater deflater) {
        if (iVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.a = iVar;
            this.b = deflater;
        }
    }

    public void write(f fVar, long j) throws IOException {
        ae.a(fVar.b, 0, j);
        while (j > 0) {
            y yVar = fVar.a;
            int min = (int) Math.min(j, (long) (yVar.c - yVar.b));
            this.b.setInput(yVar.a, yVar.b, min);
            a(false);
            fVar.b -= (long) min;
            yVar.b += min;
            if (yVar.b == yVar.c) {
                fVar.a = yVar.a();
                z.a(yVar);
            }
            j -= (long) min;
        }
    }

    @IgnoreJRERequirement
    private void a(boolean z) throws IOException {
        f b = this.a.b();
        while (true) {
            int deflate;
            y e = b.e(1);
            if (z) {
                deflate = this.b.deflate(e.a, e.c, 2048 - e.c, 2);
            } else {
                deflate = this.b.deflate(e.a, e.c, 2048 - e.c);
            }
            if (deflate > 0) {
                e.c += deflate;
                b.b += (long) deflate;
                this.a.x();
            } else if (this.b.needsInput()) {
                break;
            }
        }
        if (e.b == e.c) {
            b.a = e.a();
            z.a(e);
        }
    }

    public void flush() throws IOException {
        a(true);
        this.a.flush();
    }

    void a() throws IOException {
        this.b.finish();
        a(false);
    }

    public void close() throws IOException {
        if (!this.c) {
            Throwable th;
            Throwable th2 = null;
            try {
                a();
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.b.end();
                th = th2;
            } catch (Throwable th4) {
                th = th4;
                if (th2 != null) {
                    th = th2;
                }
            }
            try {
                this.a.close();
            } catch (Throwable th22) {
                if (th == null) {
                    th = th22;
                }
            }
            this.c = true;
            if (th != null) {
                ae.a(th);
            }
        }
    }

    public ac timeout() {
        return this.a.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.a + ")";
    }
}
