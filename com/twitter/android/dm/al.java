package com.twitter.android.dm;

/* compiled from: Twttr */
public class al {
    private final as a;
    private final as b;
    private final as c;
    private final as d;

    private al(an anVar) {
        this.b = anVar.b;
        this.d = anVar.d;
        this.a = anVar.a;
        this.c = anVar.c;
    }

    public void a(ao aoVar) {
        if (!aoVar.b || aoVar.f) {
            this.c.b(aoVar);
        } else {
            this.c.a(aoVar);
        }
    }

    public void b(ao aoVar) {
        if (!aoVar.d || (aoVar.c && !aoVar.a)) {
            this.b.a(aoVar);
            this.a.b(aoVar);
            this.d.b(aoVar);
            return;
        }
        this.b.b(aoVar);
        if (aoVar.a && aoVar.c) {
            this.d.a(aoVar);
            this.a.b(aoVar);
            return;
        }
        this.d.b(aoVar);
        this.a.a(aoVar);
    }
}
