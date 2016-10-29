package com.facebook.datasource;

/* compiled from: Twttr */
class k implements g<T> {
    final /* synthetic */ j a;

    private k(j jVar) {
        this.a = jVar;
    }

    public void b(d<T> dVar) {
        j.a(this.a, dVar);
    }

    public void c(d<T> dVar) {
    }

    public void a(d<T> dVar) {
        if (dVar.c()) {
            j.b(this.a, dVar);
        } else if (dVar.b()) {
            j.a(this.a, dVar);
        }
    }

    public void d(d<T> dVar) {
        this.a.a(Math.max(this.a.g(), dVar.g()));
    }
}
