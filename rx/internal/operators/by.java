package rx.internal.operators;

import defpackage.cyv;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.p;
import rx.s;

/* compiled from: Twttr */
final class by implements p<T> {
    final /* synthetic */ AtomicReference a;
    final /* synthetic */ cyv b;

    by(AtomicReference atomicReference, cyv cyv) {
        this.a = atomicReference;
        this.b = cyv;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super T> amVar) {
        ca caVar;
        ca caVar2;
        do {
            caVar = (ca) this.a.get();
            if (caVar != null) {
                break;
            }
            caVar2 = new ca(this.a, (bz) this.b.call());
            caVar2.d();
        } while (!this.a.compareAndSet(caVar, caVar2));
        caVar = caVar2;
        s innerProducer = new InnerProducer(caVar, amVar);
        caVar.a((InnerProducer) innerProducer);
        amVar.a((an) innerProducer);
        caVar.a.a((InnerProducer) innerProducer);
        amVar.a(innerProducer);
    }
}
