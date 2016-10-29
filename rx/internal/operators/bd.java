package rx.internal.operators;

import cyw;
import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public final class bd<T, R> implements q<R, T> {
    final cyw<? super T, ? extends R> a;

    public bd(cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        this.a = cyw__super_T___extends_R;
    }

    public am<? super T> a(am<? super R> amVar) {
        an beVar = new be(amVar, this.a);
        amVar.a(beVar);
        return beVar;
    }
}
