package rx.internal.operators;

import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public class ba<T> implements q<T, T> {
    public static <T> ba<T> a() {
        return bc.a;
    }

    ba() {
    }

    public am<? super T> a(am<? super T> amVar) {
        an bbVar = new bb(this, amVar);
        amVar.a(bbVar);
        return bbVar;
    }
}
