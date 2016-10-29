package rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import rx.am;
import rx.exceptions.e;

/* compiled from: Twttr */
class df<T> extends am<T> {
    private static final Object a;
    private final am<? super T> b;
    private T c;
    private final AtomicInteger d;

    static {
        a = new Object();
    }

    df(am<? super T> amVar) {
        this.c = a;
        this.d = new AtomicInteger(0);
        this.b = amVar;
    }

    void b(long j) {
        if (j > 0) {
            while (true) {
                int i = this.d.get();
                if (i == 0) {
                    if (this.d.compareAndSet(0, 2)) {
                        return;
                    }
                } else if (i != 1) {
                    return;
                } else {
                    if (this.d.compareAndSet(1, 3)) {
                        d();
                        return;
                    }
                }
            }
        }
    }

    public void bs_() {
        if (this.c == a) {
            this.b.bs_();
            return;
        }
        while (true) {
            int i = this.d.get();
            if (i == 0) {
                if (this.d.compareAndSet(0, 1)) {
                    return;
                }
            } else if (i != 2) {
                return;
            } else {
                if (this.d.compareAndSet(2, 3)) {
                    d();
                    return;
                }
            }
        }
    }

    private void d() {
        if (b()) {
            this.c = null;
            return;
        }
        Object obj = this.c;
        this.c = null;
        if (obj != a) {
            try {
                this.b.b_(obj);
            } catch (Throwable th) {
                e.a(th, this.b);
                return;
            }
        }
        if (!b()) {
            this.b.bs_();
        }
    }

    public void a(Throwable th) {
        this.b.a(th);
    }

    public void b_(T t) {
        this.c = t;
    }
}
