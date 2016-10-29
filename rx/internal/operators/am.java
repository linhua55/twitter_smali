package rx.internal.operators;

import cyw;
import rx.q;

/* compiled from: Twttr */
public final class am<T, U> implements q<T, T> {
    final cyw<? super T, ? extends U> a;

    public am(cyw<? super T, ? extends U> cyw__super_T___extends_U) {
        this.a = cyw__super_T___extends_U;
    }

    public rx.am<? super T> a(rx.am<? super T> amVar) {
        return new an(this, amVar, amVar);
    }
}
