package rx.internal.operators;

import rx.am;
import rx.exceptions.OnErrorThrowable;
import rx.exceptions.e;
import rx.internal.util.r;
import rx.s;

/* compiled from: Twttr */
final class ac<T, R> extends am<T> {
    final am<? super R> a;
    final Class<R> b;
    boolean c;

    public ac(am<? super R> amVar, Class<R> cls) {
        this.a = amVar;
        this.b = cls;
    }

    public void b_(T t) {
        try {
            this.a.b_(this.b.cast(t));
        } catch (Throwable th) {
            e.a(th);
            K_();
            a(OnErrorThrowable.a(th, t));
        }
    }

    public void a(Throwable th) {
        if (this.c) {
            r.a(th);
            return;
        }
        this.c = true;
        this.a.a(th);
    }

    public void bs_() {
        if (!this.c) {
            this.a.bs_();
        }
    }

    public void a(s sVar) {
        this.a.a(sVar);
    }
}
