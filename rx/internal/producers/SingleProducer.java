package rx.internal.producers;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.am;
import rx.exceptions.e;
import rx.r;
import rx.s;

/* compiled from: Twttr */
public final class SingleProducer<T> extends AtomicBoolean implements s {
    private static final long serialVersionUID = -3353584923995471404L;
    final am<? super T> child;
    final T value;

    public SingleProducer(am<? super T> amVar, T t) {
        this.child = amVar;
        this.value = t;
    }

    public void a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (j != 0 && compareAndSet(false, true)) {
            r rVar = this.child;
            Object obj = this.value;
            if (!rVar.b()) {
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
