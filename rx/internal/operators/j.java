package rx.internal.operators;

import java.util.concurrent.Callable;
import rx.am;
import rx.exceptions.e;
import rx.internal.producers.SingleDelayedProducer;
import rx.p;
import rx.s;

/* compiled from: Twttr */
public final class j<T> implements p<T> {
    private final Callable<? extends T> a;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public j(Callable<? extends T> callable) {
        this.a = callable;
    }

    public void a(am<? super T> amVar) {
        s singleDelayedProducer = new SingleDelayedProducer(amVar);
        amVar.a(singleDelayedProducer);
        try {
            singleDelayedProducer.a(this.a.call());
        } catch (Throwable th) {
            e.a(th, amVar);
        }
    }
}
