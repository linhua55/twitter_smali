package rx;

import rx.internal.producers.SingleDelayedProducer;

/* compiled from: Twttr */
class y extends al<T> {
    final /* synthetic */ SingleDelayedProducer a;
    final /* synthetic */ am b;
    final /* synthetic */ x c;

    y(x xVar, SingleDelayedProducer singleDelayedProducer, am amVar) {
        this.c = xVar;
        this.a = singleDelayedProducer;
        this.b = amVar;
    }

    public void a(T t) {
        this.a.a((Object) t);
    }

    public void a(Throwable th) {
        this.b.a(th);
    }
}
