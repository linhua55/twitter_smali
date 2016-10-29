package rx.internal.schedulers;

import defpackage.cyr;

/* compiled from: Twttr */
class k implements cyr {
    final /* synthetic */ cyr a;
    final /* synthetic */ i b;

    k(i iVar, cyr cyr) {
        this.b = iVar;
        this.a = cyr;
    }

    public void a() {
        if (!this.b.b()) {
            this.a.a();
        }
    }
}
