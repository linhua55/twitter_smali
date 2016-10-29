package rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.exceptions.e;
import rx.p;
import rx.r;
import rx.s;

/* compiled from: Twttr */
public final class OnSubscribeFromIterable<T> implements p<T> {
    final Iterable<? extends T> a;

    /* compiled from: Twttr */
    final class IterableProducer<T> extends AtomicLong implements s {
        private static final long serialVersionUID = -8730475647105475802L;
        private final Iterator<? extends T> it;
        private final am<? super T> o;

        IterableProducer(am<? super T> amVar, Iterator<? extends T> it) {
            this.o = amVar;
            this.it = it;
        }

        public void a(long j) {
            if (get() != Long.MAX_VALUE) {
                if (j == Long.MAX_VALUE && compareAndSet(0, Long.MAX_VALUE)) {
                    a();
                } else if (j > 0 && a.a((AtomicLong) this, j) == 0) {
                    b(j);
                }
            }
        }

        void b(long j) {
            r rVar = this.o;
            Iterator it = this.it;
            long j2 = 0;
            while (true) {
                if (j2 == j) {
                    j = get();
                    if (j2 == j) {
                        j = a.b(this, j2);
                        if (j != 0) {
                            j2 = 0;
                        } else {
                            return;
                        }
                    }
                    continue;
                } else if (!rVar.b()) {
                    try {
                        rVar.b_(it.next());
                        if (!rVar.b()) {
                            try {
                                if (!it.hasNext()) {
                                    break;
                                }
                                j2++;
                            } catch (Throwable th) {
                                e.a(th, rVar);
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th2) {
                        e.a(th2, rVar);
                        return;
                    }
                } else {
                    return;
                }
            }
            if (!rVar.b()) {
                rVar.bs_();
            }
        }

        void a() {
            r rVar = this.o;
            Iterator it = this.it;
            while (!rVar.b()) {
                try {
                    rVar.b_(it.next());
                    if (!rVar.b()) {
                        try {
                            if (!it.hasNext()) {
                                if (!rVar.b()) {
                                    rVar.bs_();
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            e.a(th, rVar);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    e.a(th2, rVar);
                    return;
                }
            }
        }
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public OnSubscribeFromIterable(Iterable<? extends T> iterable) {
        if (iterable == null) {
            throw new NullPointerException("iterable must not be null");
        }
        this.a = iterable;
    }

    public void a(am<? super T> amVar) {
        try {
            Iterator it = this.a.iterator();
            boolean hasNext = it.hasNext();
            if (!amVar.b()) {
                if (hasNext) {
                    amVar.a(new IterableProducer(amVar, it));
                } else {
                    amVar.bs_();
                }
            }
        } catch (Throwable th) {
            e.a(th, amVar);
        }
    }
}
