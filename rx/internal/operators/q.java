package rx.internal.operators;

import rx.ak;
import rx.al;
import rx.an;
import rx.o;

/* compiled from: Twttr */
public class q<T> implements ak<T> {
    private final o<T> a;

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public q(o<T> oVar) {
        this.a = oVar;
    }

    public void a(al<? super T> alVar) {
        an rVar = new r(this, alVar);
        alVar.a(rVar);
        this.a.a(rVar);
    }

    public static <T> q<T> a(o<T> oVar) {
        return new q(oVar);
    }
}
