package rx.internal.util;

import rx.am;
import rx.r;

/* compiled from: Twttr */
public final class n<T> extends am<T> {
    final r<? super T> a;

    public n(r<? super T> rVar) {
        this.a = rVar;
    }

    public void b_(T t) {
        this.a.b_(t);
    }

    public void a(Throwable th) {
        this.a.a(th);
    }

    public void bs_() {
        this.a.bs_();
    }
}
