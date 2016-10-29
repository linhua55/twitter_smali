package com.twitter.model.dms;

/* compiled from: Twttr */
public abstract class s extends l {
    private final long d;
    private final boolean e;
    private final String f;

    public s(t tVar) {
        super(tVar);
        this.d = tVar.b;
        this.f = tVar.c;
        Boolean bool = (Boolean) a("enabled", Boolean.class);
        boolean z = bool == null || bool.booleanValue();
        this.e = z;
    }

    public long k() {
        return n();
    }

    public boolean l() {
        return super.l() && this.e;
    }

    public long n() {
        return this.d;
    }

    public String o() {
        return this.f;
    }
}
