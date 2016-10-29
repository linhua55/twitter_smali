package rx.internal.operators;

import defpackage.cyr;

/* compiled from: Twttr */
class cb implements cyr {
    final /* synthetic */ ca a;

    cb(ca caVar) {
        this.a = caVar;
    }

    public void a() {
        if (!this.a.f) {
            synchronized (this.a.g) {
                if (!this.a.f) {
                    this.a.g.a();
                    ca caVar = this.a;
                    caVar.i++;
                    this.a.f = true;
                }
            }
        }
    }
}
