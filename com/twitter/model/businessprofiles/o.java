package com.twitter.model.businessprofiles;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class o extends f<m> {
    long a;
    x b;
    i c;
    KeyEngagementType d;
    e e;
    t f;
    q g;

    public o() {
        this.d = KeyEngagementType.NONE;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public o a(long j) {
        this.a = j;
        return this;
    }

    public o a(x xVar) {
        this.b = xVar;
        return this;
    }

    public o a(i iVar) {
        this.c = iVar;
        return this;
    }

    public o a(KeyEngagementType keyEngagementType) {
        this.d = keyEngagementType;
        return this;
    }

    public o a(e eVar) {
        this.e = eVar;
        return this;
    }

    public o a(t tVar) {
        this.f = tVar;
        return this;
    }

    public o a(q qVar) {
        this.g = qVar;
        return this;
    }

    protected m d() {
        return new m(this);
    }
}
