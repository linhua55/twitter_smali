package rx.internal.util;

import cyw;
import defpackage.daq;
import rx.am;
import rx.o;
import rx.p;

/* compiled from: Twttr */
class z implements p<R> {
    final /* synthetic */ cyw a;
    final /* synthetic */ ScalarSynchronousObservable b;

    z(ScalarSynchronousObservable scalarSynchronousObservable, cyw cyw) {
        this.b = scalarSynchronousObservable;
        this.a = cyw;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super R> amVar) {
        o oVar = (o) this.a.a(this.b.e);
        if (oVar instanceof ScalarSynchronousObservable) {
            amVar.a(ScalarSynchronousObservable.a(amVar, ((ScalarSynchronousObservable) oVar).e));
        } else {
            oVar.a(daq.a((am) amVar));
        }
    }
}
