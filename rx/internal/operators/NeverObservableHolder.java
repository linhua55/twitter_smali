package rx.internal.operators;

import rx.am;
import rx.o;
import rx.p;

/* compiled from: Twttr */
public enum NeverObservableHolder implements p<Object> {
    INSTANCE;
    
    static final o<Object> b;

    static {
        b = o.a(INSTANCE);
    }

    public static <T> o<T> a() {
        return b;
    }

    public void a(am<? super Object> amVar) {
    }
}
