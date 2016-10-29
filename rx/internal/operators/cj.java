package rx.internal.operators;

import java.util.NoSuchElementException;
import rx.am;
import rx.internal.producers.SingleProducer;
import rx.internal.util.r;

/* compiled from: Twttr */
final class cj<T> extends am<T> {
    private final am<? super T> a;
    private final boolean b;
    private final T c;
    private T d;
    private boolean e;
    private boolean f;

    cj(am<? super T> amVar, boolean z, T t) {
        this.a = amVar;
        this.b = z;
        this.c = t;
        a(2);
    }

    public void b_(T t) {
        if (!this.f) {
            if (this.e) {
                this.f = true;
                this.a.a(new IllegalArgumentException("Sequence contains too many elements"));
                K_();
                return;
            }
            this.d = t;
            this.e = true;
        }
    }

    public void bs_() {
        if (!this.f) {
            if (this.e) {
                this.a.a(new SingleProducer(this.a, this.d));
            } else if (this.b) {
                this.a.a(new SingleProducer(this.a, this.c));
            } else {
                this.a.a(new NoSuchElementException("Sequence contains no elements"));
            }
        }
    }

    public void a(Throwable th) {
        if (this.f) {
            r.a(th);
        } else {
            this.a.a(th);
        }
    }
}
