package rx.internal.util;

import rx.ak;
import rx.al;
import rx.internal.schedulers.h;

/* compiled from: Twttr */
final class ah<T> implements ak<T> {
    private final h a;
    private final T b;

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    ah(h hVar, T t) {
        this.a = hVar;
        this.b = t;
    }

    public void a(al<? super T> alVar) {
        alVar.a(this.a.a(new aj(alVar, this.b)));
    }
}
