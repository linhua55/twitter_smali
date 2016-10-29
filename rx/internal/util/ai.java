package rx.internal.util;

import rx.ak;
import rx.al;
import rx.an;
import rx.t;

/* compiled from: Twttr */
final class ai<T> implements ak<T> {
    private final t a;
    private final T b;

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    ai(t tVar, T t) {
        this.a = tVar;
        this.b = t;
    }

    public void a(al<? super T> alVar) {
        an a = this.a.a();
        alVar.a(a);
        a.a(new aj(alVar, this.b));
    }
}
