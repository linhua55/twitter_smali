package rx.internal.operators;

import cyw;
import rx.am;
import rx.exceptions.OnErrorThrowable;
import rx.exceptions.e;
import rx.internal.util.r;
import rx.s;

/* compiled from: Twttr */
final class be<T, R> extends am<T> {
    final am<? super R> a;
    final cyw<? super T, ? extends R> b;
    boolean c;

    public be(am<? super R> amVar, cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        this.a = amVar;
        this.b = cyw__super_T___extends_R;
    }

    public void b_(T t) {
        try {
            this.a.b_(this.b.a(t));
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
