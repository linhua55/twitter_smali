package rx.internal.util;

import cyw;
import defpackage.cyr;
import rx.am;
import rx.an;
import rx.p;

/* compiled from: Twttr */
final class ab<T> implements p<T> {
    final T a;
    final cyw<cyr, an> b;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    ab(T t, cyw<cyr, an> cyw_cyr__rx_an) {
        this.a = t;
        this.b = cyw_cyr__rx_an;
    }

    public void a(am<? super T> amVar) {
        amVar.a(new ScalarAsyncProducer(amVar, this.a, this.b));
    }
}
