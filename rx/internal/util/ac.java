package rx.internal.util;

import rx.am;
import rx.exceptions.e;
import rx.r;
import rx.s;

/* compiled from: Twttr */
final class ac<T> implements s {
    final am<? super T> a;
    final T b;
    boolean c;

    public ac(am<? super T> amVar, T t) {
        this.a = amVar;
        this.b = t;
    }

    public void a(long j) {
        if (!this.c) {
            if (j < 0) {
                throw new IllegalStateException("n >= required but it was " + j);
            } else if (j != 0) {
                this.c = true;
                r rVar = this.a;
                if (!rVar.b()) {
                    Object obj = this.b;
                    try {
                        rVar.b_(obj);
                        if (!rVar.b()) {
                            rVar.bs_();
                        }
                    } catch (Throwable th) {
                        e.a(th, rVar, obj);
                    }
                }
            }
        }
    }
}
