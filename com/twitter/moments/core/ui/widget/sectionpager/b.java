package com.twitter.moments.core.ui.widget.sectionpager;

/* compiled from: Twttr */
public class b {
    private final com.twitter.util.object.b<d, a> a;
    private c b;
    private a c;

    public b(com.twitter.util.object.b<d, a> bVar) {
        this.a = bVar;
    }

    public a a(d dVar) {
        this.c = (a) this.a.a(dVar);
        return this.c;
    }

    public a a() {
        return this.c;
    }

    public void b() {
        if (this.c != null) {
            this.c.d();
            this.c = null;
        }
    }

    public c c() {
        return this.b;
    }

    public void a(c cVar) {
        this.b = cVar;
    }
}
