package rx.internal.operators;

import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public final class ch<T> implements q<T, T> {
    private final boolean a;
    private final T b;

    public static <T> ch<T> a() {
        return ci.a;
    }

    ch() {
        this(false, null);
    }

    public ch(T t) {
        this(true, t);
    }

    private ch(boolean z, T t) {
        this.a = z;
        this.b = t;
    }

    public am<? super T> a(am<? super T> amVar) {
        an cjVar = new cj(amVar, this.a, this.b);
        amVar.a(cjVar);
        return cjVar;
    }
}
