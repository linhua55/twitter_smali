package com.twitter.model.dms;

import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public class h {
    public final String a;
    public final int b;
    public final long c;
    public final Collection<Participant> d;
    public final String e;
    public final String f;
    public final boolean g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;
    public final boolean l;

    private h(j jVar) {
        this.e = j.a(jVar);
        this.b = j.b(jVar);
        this.c = j.c(jVar);
        this.a = j.d(jVar);
        this.g = j.e(jVar);
        this.h = j.f(jVar);
        this.i = j.g(jVar);
        this.j = j.h(jVar);
        this.k = j.i(jVar);
        this.l = j.j(jVar);
        this.f = j.k(jVar);
        this.d = ar.a(j.l(jVar));
    }

    public String toString() {
        return this.a;
    }
}
