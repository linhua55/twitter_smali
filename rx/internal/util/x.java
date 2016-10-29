package rx.internal.util;

import cyw;
import defpackage.cyr;
import rx.an;
import rx.t;
import rx.u;

/* compiled from: Twttr */
class x implements cyw<cyr, an> {
    final /* synthetic */ t a;
    final /* synthetic */ ScalarSynchronousObservable b;

    x(ScalarSynchronousObservable scalarSynchronousObservable, t tVar) {
        this.b = scalarSynchronousObservable;
        this.a = tVar;
    }

    public an a(cyr cyr) {
        u a = this.a.a();
        a.a(new y(this, cyr, a));
        return a;
    }
}
