package rx.internal.operators;

import defpackage.cyr;

/* compiled from: Twttr */
class bv implements cyr {
    final /* synthetic */ bu a;

    bv(bu buVar) {
        this.a = buVar;
    }

    public void a() {
        this.a.g.getAndSet(bu.f);
        this.a.c.compareAndSet(this.a, null);
    }
}
