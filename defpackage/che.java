package defpackage;

import com.twitter.util.collection.n;

/* compiled from: Twttr */
/* renamed from: che */
public class che<T> {
    private final n<T> a;

    public che() {
        this.a = n.d();
    }

    public che<T> a(T t) {
        this.a.c(t);
        return this;
    }

    public che<T> a(Iterable<? extends T> iterable) {
        this.a.c(iterable);
        return this;
    }

    public chd<T> a() {
        return new chd((Iterable) this.a.q());
    }
}
