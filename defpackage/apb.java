package defpackage;

import aov;
import aoz;

/* compiled from: Twttr */
/* renamed from: apb */
public abstract class apb<R extends aoz<T>, T, U> implements aoz<U> {
    private final R a;

    public abstract U a(T t);

    protected apb(R r) {
        this.a = r;
    }

    public void a(aov<U> aov_U) {
        this.a.a(new apc(this, aov_U));
    }

    protected R b() {
        return this.a;
    }
}
