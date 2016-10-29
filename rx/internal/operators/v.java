package rx.internal.operators;

import cyw;
import rx.am;
import rx.an;
import rx.internal.producers.SingleDelayedProducer;
import rx.q;
import rx.s;

/* compiled from: Twttr */
public final class v<T> implements q<Boolean, T> {
    final cyw<? super T, Boolean> a;
    final boolean b;

    public v(cyw<? super T, Boolean> cyw__super_T__java_lang_Boolean, boolean z) {
        this.a = cyw__super_T__java_lang_Boolean;
        this.b = z;
    }

    public am<? super T> a(am<? super Boolean> amVar) {
        s singleDelayedProducer = new SingleDelayedProducer(amVar);
        an wVar = new w(this, singleDelayedProducer, amVar);
        amVar.a(wVar);
        amVar.a(singleDelayedProducer);
        return wVar;
    }
}
