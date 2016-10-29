package rx;

import rx.internal.producers.SingleDelayedProducer;

/* compiled from: Twttr */
class x implements p<T> {
    final /* synthetic */ ak a;
    final /* synthetic */ w b;

    x(w wVar, ak akVar) {
        this.b = wVar;
        this.a = akVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super T> amVar) {
        s singleDelayedProducer = new SingleDelayedProducer(amVar);
        amVar.a(singleDelayedProducer);
        an yVar = new y(this, singleDelayedProducer, amVar);
        amVar.a(yVar);
        this.a.call(yVar);
    }
}
