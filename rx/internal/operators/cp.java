package rx.internal.operators;

import rx.am;
import rx.an;
import rx.o;
import rx.q;

/* compiled from: Twttr */
public final class cp<T> implements q<T, o<? extends T>> {
    final boolean a;

    public static <T> cp<T> a(boolean z) {
        if (z) {
            return cr.a;
        }
        return cq.a;
    }

    cp(boolean z) {
        this.a = z;
    }

    public am<? super o<? extends T>> a(am<? super T> amVar) {
        an ctVar = new ct(amVar, this.a);
        amVar.a(ctVar);
        ctVar.d();
        return ctVar;
    }
}
