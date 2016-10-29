package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public final class l extends n implements Iterable<n> {
    private final List<n> a;

    public l() {
        this.a = new ArrayList();
    }

    public void a(n nVar) {
        if (nVar == null) {
            nVar = o.a;
        }
        this.a.add(nVar);
    }

    public Iterator<n> iterator() {
        return this.a.iterator();
    }

    public Number a() {
        if (this.a.size() == 1) {
            return ((n) this.a.get(0)).a();
        }
        throw new IllegalStateException();
    }

    public String b() {
        if (this.a.size() == 1) {
            return ((n) this.a.get(0)).b();
        }
        throw new IllegalStateException();
    }

    public double c() {
        if (this.a.size() == 1) {
            return ((n) this.a.get(0)).c();
        }
        throw new IllegalStateException();
    }

    public long d() {
        if (this.a.size() == 1) {
            return ((n) this.a.get(0)).d();
        }
        throw new IllegalStateException();
    }

    public int e() {
        if (this.a.size() == 1) {
            return ((n) this.a.get(0)).e();
        }
        throw new IllegalStateException();
    }

    public boolean f() {
        if (this.a.size() == 1) {
            return ((n) this.a.get(0)).f();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof l) && ((l) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
