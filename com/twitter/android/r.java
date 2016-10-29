package com.twitter.android;

import cga;
import com.twitter.library.provider.a;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import defpackage.cfp;
import java.util.List;

/* compiled from: Twttr */
public class r {
    public final boolean a;
    public final cga b;

    public r(cga cga, boolean z) {
        this.a = z;
        this.b = cga;
    }

    public List<Tweet> a() {
        if (this.b.i == 2) {
            return this.b.j.a;
        }
        h.a(false, "Attempted to access tweet targets when type was " + cfp.a(this.b.i));
        return n.g();
    }

    public List<Tweet> b() {
        if (this.b.l == 2) {
            return this.b.m.a;
        }
        h.a(false, "Attempted to access tweet target objects when type was " + cfp.a(this.b.l));
        return n.g();
    }

    public List<a> c() {
        if (this.b.l == 3) {
            return this.b.m.a;
        }
        h.a(false, "Attempted to access list target objects when type was " + cfp.a(this.b.l));
        return n.g();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof r) && a((r) obj));
    }

    public boolean a(r rVar) {
        return this == rVar || (rVar != null && this.b.a(rVar.b));
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
