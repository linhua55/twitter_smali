package rx.internal.operators;

import java.util.List;
import rx.am;
import rx.an;
import rx.internal.producers.SingleDelayedProducer;
import rx.q;
import rx.s;

/* compiled from: Twttr */
public final class dl<T> implements q<List<T>, T> {
    public static <T> dl<T> a() {
        return dn.a;
    }

    dl() {
    }

    public am<? super T> a(am<? super List<T>> amVar) {
        s singleDelayedProducer = new SingleDelayedProducer(amVar);
        an dmVar = new dm(this, singleDelayedProducer, amVar);
        amVar.a(dmVar);
        amVar.a(singleDelayedProducer);
        return dmVar;
    }
}
