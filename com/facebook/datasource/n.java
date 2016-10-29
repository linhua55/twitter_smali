package com.facebook.datasource;

/* compiled from: Twttr */
class n implements g<T> {
    final /* synthetic */ m a;
    private int b;

    public n(m mVar, int i) {
        this.a = mVar;
        this.b = i;
    }

    public void a(d<T> dVar) {
        if (dVar.c()) {
            m.a(this.a, this.b, dVar);
        } else if (dVar.b()) {
            m.b(this.a, this.b, dVar);
        }
    }

    public void b(d<T> dVar) {
        m.b(this.a, this.b, dVar);
    }

    public void c(d<T> dVar) {
    }

    public void d(d<T> dVar) {
        if (this.b == 0) {
            this.a.a(dVar.g());
        }
    }
}
