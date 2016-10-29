package com.google.gson;

import com.google.gson.internal.aa;
import com.google.gson.stream.c;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

/* compiled from: Twttr */
public abstract class n {
    public boolean g() {
        return this instanceof l;
    }

    public boolean h() {
        return this instanceof p;
    }

    public boolean i() {
        return this instanceof q;
    }

    public boolean j() {
        return this instanceof o;
    }

    public p k() {
        if (h()) {
            return (p) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public l l() {
        if (g()) {
            return (l) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public q m() {
        if (i()) {
            return (q) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public boolean f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    Boolean n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            Writer stringWriter = new StringWriter();
            c cVar = new c(stringWriter);
            cVar.b(true);
            aa.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
