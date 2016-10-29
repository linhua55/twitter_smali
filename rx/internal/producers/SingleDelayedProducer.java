package rx.internal.producers;

import java.util.concurrent.atomic.AtomicInteger;
import rx.am;
import rx.exceptions.e;
import rx.s;

/* compiled from: Twttr */
public final class SingleDelayedProducer<T> extends AtomicInteger implements s {
    private static final long serialVersionUID = -2873467947112093874L;
    final am<? super T> child;
    T value;

    public SingleDelayedProducer(am<? super T> amVar) {
        this.child = amVar;
    }

    public void a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (j != 0) {
            int i;
            while (true) {
                i = get();
                if (i != 0) {
                    break;
                } else if (compareAndSet(0, 2)) {
                    return;
                }
            }
            if (i == 1 && compareAndSet(1, 3)) {
                a(this.child, this.value);
            }
        }
    }

    public void a(T t) {
        do {
            int i = get();
            if (i == 0) {
                this.value = t;
            } else if (i == 2 && compareAndSet(2, 3)) {
                a(this.child, t);
                return;
            } else {
                return;
            }
        } while (!compareAndSet(0, 1));
    }

    private static <T> void a(am<? super T> amVar, T t) {
        if (!amVar.b()) {
            try {
                amVar.b_(t);
                if (!amVar.b()) {
                    amVar.bs_();
                }
            } catch (Throwable th) {
                e.a(th, amVar, t);
            }
        }
    }
}
