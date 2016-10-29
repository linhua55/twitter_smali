package rx.internal.operators;

import cyw;
import rx.am;
import rx.q;

/* compiled from: Twttr */
public final class ao<T, U> implements q<T, T> {
    final cyw<? super T, ? extends U> a;

    public static <T> ao<T, T> a() {
        return aq.a;
    }

    public ao(cyw<? super T, ? extends U> cyw__super_T___extends_U) {
        this.a = cyw__super_T___extends_U;
    }

    public am<? super T> a(am<? super T> amVar) {
        return new ap(this, amVar, amVar);
    }
}
