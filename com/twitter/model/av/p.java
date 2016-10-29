package com.twitter.model.av;

import com.twitter.util.collection.ar;
import java.util.Collection;
import java.util.Set;

/* compiled from: Twttr */
public class p {
    private boolean a;
    private final ar<Integer> b;
    private final ar<Integer> c;
    private final ar<Integer> d;
    private final ar<Integer> e;
    private final ar<Integer> f;

    public p() {
        this.b = ar.d();
        this.c = ar.d();
        this.d = ar.d();
        this.e = ar.d();
        this.f = ar.d();
    }

    public p(n nVar) {
        this.b = ar.d();
        this.c = ar.d();
        this.d = ar.d();
        this.e = ar.d();
        this.f = ar.d();
        this.a = nVar.a();
        this.b.b(nVar.b());
        this.c.b(nVar.c());
        this.d.b(nVar.d());
        this.e.b(nVar.e());
        this.f.b(nVar.f());
    }

    public p a(boolean z) {
        this.a = z;
        return this;
    }

    public boolean a() {
        return this.a;
    }

    public p a(Collection<Integer> collection) {
        a(this.b, collection);
        return this;
    }

    public Set<Integer> b() {
        return ar.a(this.b);
    }

    public p b(Collection<Integer> collection) {
        a(this.c, collection);
        return this;
    }

    public p c(Collection<Integer> collection) {
        a(this.d, collection);
        return this;
    }

    public p d(Collection<Integer> collection) {
        a(this.e, collection);
        return this;
    }

    public p e(Collection<Integer> collection) {
        a(this.f, collection);
        return this;
    }

    public n c() {
        return new n((Set) this.b.q(), (Set) this.c.q(), (Set) this.d.q(), (Set) this.e.q(), (Set) this.f.q(), null);
    }

    private static void a(ar<Integer> arVar, Collection<Integer> collection) {
        arVar.i();
        arVar.b((Iterable) collection);
    }
}
