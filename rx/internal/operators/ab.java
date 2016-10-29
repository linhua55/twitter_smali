package rx.internal.operators;

import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public class ab<T, R> implements q<R, T> {
    final Class<R> a;

    public ab(Class<R> cls) {
        this.a = cls;
    }

    public am<? super T> a(am<? super R> amVar) {
        an acVar = new ac(amVar, this.a);
        amVar.a(acVar);
        return acVar;
    }
}
