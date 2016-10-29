package defpackage;

import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.stream.c;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: pb */
public final class pb extends c {
    private static final Writer a;
    private static final q b;
    private final List<n> c;
    private String d;
    private n e;

    static {
        a = new pc();
        b = new q("closed");
    }

    public pb() {
        super(a);
        this.c = new ArrayList();
        this.e = o.a;
    }

    public n a() {
        if (this.c.isEmpty()) {
            return this.e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.c);
    }

    private n j() {
        return (n) this.c.get(this.c.size() - 1);
    }

    private void a(n nVar) {
        if (this.d != null) {
            if (!nVar.j() || i()) {
                ((p) j()).a(this.d, nVar);
            }
            this.d = null;
        } else if (this.c.isEmpty()) {
            this.e = nVar;
        } else {
            n j = j();
            if (j instanceof l) {
                ((l) j).a(nVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public c b() throws IOException {
        n lVar = new l();
        a(lVar);
        this.c.add(lVar);
        return this;
    }

    public c c() throws IOException {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof l) {
            this.c.remove(this.c.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c d() throws IOException {
        n pVar = new p();
        a(pVar);
        this.c.add(pVar);
        return this;
    }

    public c e() throws IOException {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof p) {
            this.c.remove(this.c.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c a(String str) throws IOException {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof p) {
            this.d = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        a(new q(str));
        return this;
    }

    public c f() throws IOException {
        a(o.a);
        return this;
    }

    public c a(boolean z) throws IOException {
        a(new q(Boolean.valueOf(z)));
        return this;
    }

    public c a(long j) throws IOException {
        a(new q(Long.valueOf(j)));
        return this;
    }

    public c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a(new q(number));
        return this;
    }

    public void flush() throws IOException {
    }

    public void close() throws IOException {
        if (this.c.isEmpty()) {
            this.c.add(b);
            return;
        }
        throw new IOException("Incomplete document");
    }
}
