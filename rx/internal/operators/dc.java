package rx.internal.operators;

import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public class dc<T> implements q<T, T> {
    public static <T> dc<T> a() {
        return de.a;
    }

    dc() {
    }

    public am<? super T> a(am<? super T> amVar) {
        an dfVar = new df(amVar);
        amVar.a(new dd(this, dfVar));
        amVar.a(dfVar);
        return dfVar;
    }
}
