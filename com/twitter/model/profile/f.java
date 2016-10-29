package com.twitter.model.profile;

import com.twitter.util.aj;

/* compiled from: Twttr */
public final class f extends com.twitter.util.object.f<d> {
    String a;
    String b;
    long c;
    boolean d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public f(d dVar) {
        a(dVar.b);
        b(dVar.c);
        a(dVar.d);
        a(dVar.e);
    }

    public f a(String str) {
        this.a = str;
        return this;
    }

    public f b(String str) {
        this.b = str;
        return this;
    }

    public f a(long j) {
        this.c = j;
        return this;
    }

    public f a(boolean z) {
        this.d = z;
        return this;
    }

    protected d d() {
        return new d(this);
    }

    public boolean bo_() {
        return aj.b(this.b) && aj.b(this.a);
    }
}
