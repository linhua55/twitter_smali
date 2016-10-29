package defpackage;

import android.support.annotation.CallSuper;

/* compiled from: Twttr */
/* renamed from: aop */
public abstract class aop<T> implements aoz<T> {
    private T a;
    private boolean b;
    private aov<T> c;

    @CallSuper
    public void a(aov<T> aov_T) {
        this.c = aov_T;
        if (this.b) {
            this.c.a(this.a);
        }
    }

    @CallSuper
    public void b() {
        this.c = null;
    }

    protected final void a(T t) {
        this.a = t;
        this.b = true;
        if (this.c != null) {
            this.c.a(t);
        }
    }
}
