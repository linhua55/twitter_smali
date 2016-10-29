package rx.internal.util;

import cyw;
import rx.internal.schedulers.h;
import rx.t;
import rx.w;

/* compiled from: Twttr */
public final class ad<T> extends w<T> {
    final T c;

    public static final <T> ad<T> b(T t) {
        return new ad(t);
    }

    protected ad(T t) {
        super(new ae(t));
        this.c = t;
    }

    public w<T> c(t tVar) {
        if (tVar instanceof h) {
            return w.a(new ah((h) tVar, this.c));
        }
        return w.a(new ai(tVar, this.c));
    }

    public <R> w<R> d(cyw<? super T, ? extends w<? extends R>> cyw__super_T___extends_rx_w__extends_R) {
        return w.a(new af(this, cyw__super_T___extends_rx_w__extends_R));
    }
}
