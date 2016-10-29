package defpackage;

import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: oz */
public final class oz extends a {
    private static final Reader a;
    private static final Object b;
    private final List<Object> c;

    static {
        a = new pa();
        b = new Object();
    }

    public oz(n nVar) {
        super(a);
        this.c = new ArrayList();
        this.c.add(nVar);
    }

    public void a() throws IOException {
        a(JsonToken.a);
        this.c.add(((l) r()).iterator());
    }

    public void b() throws IOException {
        a(JsonToken.b);
        s();
        s();
    }

    public void c() throws IOException {
        a(JsonToken.c);
        this.c.add(((p) r()).o().iterator());
    }

    public void d() throws IOException {
        a(JsonToken.d);
        s();
        s();
    }

    public boolean e() throws IOException {
        JsonToken f = f();
        return (f == JsonToken.d || f == JsonToken.b) ? false : true;
    }

    public JsonToken f() throws IOException {
        if (this.c.isEmpty()) {
            return JsonToken.j;
        }
        Object r = r();
        if (r instanceof Iterator) {
            boolean z = this.c.get(this.c.size() - 2) instanceof p;
            Iterator it = (Iterator) r;
            if (!it.hasNext()) {
                return z ? JsonToken.d : JsonToken.b;
            } else {
                if (z) {
                    return JsonToken.e;
                }
                this.c.add(it.next());
                return f();
            }
        } else if (r instanceof p) {
            return JsonToken.c;
        } else {
            if (r instanceof l) {
                return JsonToken.a;
            }
            if (r instanceof q) {
                q qVar = (q) r;
                if (qVar.q()) {
                    return JsonToken.f;
                }
                if (qVar.o()) {
                    return JsonToken.h;
                }
                if (qVar.p()) {
                    return JsonToken.g;
                }
                throw new AssertionError();
            } else if (r instanceof o) {
                return JsonToken.i;
            } else {
                if (r == b) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    private Object r() {
        return this.c.get(this.c.size() - 1);
    }

    private Object s() {
        return this.c.remove(this.c.size() - 1);
    }

    private void a(JsonToken jsonToken) throws IOException {
        if (f() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + f());
        }
    }

    public String g() throws IOException {
        a(JsonToken.e);
        Entry entry = (Entry) ((Iterator) r()).next();
        this.c.add(entry.getValue());
        return (String) entry.getKey();
    }

    public String h() throws IOException {
        JsonToken f = f();
        if (f == JsonToken.f || f == JsonToken.g) {
            return ((q) s()).b();
        }
        throw new IllegalStateException("Expected " + JsonToken.f + " but was " + f);
    }

    public boolean i() throws IOException {
        a(JsonToken.h);
        return ((q) s()).f();
    }

    public void j() throws IOException {
        a(JsonToken.i);
        s();
    }

    public double k() throws IOException {
        JsonToken f = f();
        if (f == JsonToken.g || f == JsonToken.f) {
            double c = ((q) r()).c();
            if (p() || !(Double.isNaN(c) || Double.isInfinite(c))) {
                s();
                return c;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + c);
        }
        throw new IllegalStateException("Expected " + JsonToken.g + " but was " + f);
    }

    public long l() throws IOException {
        JsonToken f = f();
        if (f == JsonToken.g || f == JsonToken.f) {
            long d = ((q) r()).d();
            s();
            return d;
        }
        throw new IllegalStateException("Expected " + JsonToken.g + " but was " + f);
    }

    public int m() throws IOException {
        JsonToken f = f();
        if (f == JsonToken.g || f == JsonToken.f) {
            int e = ((q) r()).e();
            s();
            return e;
        }
        throw new IllegalStateException("Expected " + JsonToken.g + " but was " + f);
    }

    public void close() throws IOException {
        this.c.clear();
        this.c.add(b);
    }

    public void n() throws IOException {
        if (f() == JsonToken.e) {
            g();
        } else {
            s();
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    public void o() throws IOException {
        a(JsonToken.e);
        Entry entry = (Entry) ((Iterator) r()).next();
        this.c.add(entry.getValue());
        this.c.add(new q((String) entry.getKey()));
    }
}
