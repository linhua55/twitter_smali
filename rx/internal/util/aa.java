package rx.internal.util;

import rx.am;
import rx.p;

/* compiled from: Twttr */
final class aa<T> implements p<T> {
    final T a;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    aa(T t) {
        this.a = t;
    }

    public void a(am<? super T> amVar) {
        amVar.a(ScalarSynchronousObservable.a(amVar, this.a));
    }
}
