package rx.internal.operators;

import cys;
import cyw;
import defpackage.dai;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.o;
import rx.p;
import rx.s;

/* compiled from: Twttr */
public final class OperatorPublish<T> extends dai<T> {
    final o<? extends T> c;
    final AtomicReference<bu<T>> d;

    /* compiled from: Twttr */
    final class InnerProducer<T> extends AtomicLong implements an, s {
        private static final long serialVersionUID = -4453897557930727610L;
        final am<? super T> child;
        final bu<T> parent;

        public InnerProducer(bu<T> buVar, am<? super T> amVar) {
            this.parent = buVar;
            this.child = amVar;
            lazySet(-4611686018427387904L);
        }

        public void a(long j) {
            if (j >= 0) {
                long j2;
                long j3;
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE) {
                        return;
                    }
                    if (j2 >= 0 && j == 0) {
                        return;
                    }
                    if (j2 == -4611686018427387904L) {
                        j3 = j;
                    } else {
                        j3 = j2 + j;
                        if (j3 < 0) {
                            j3 = Long.MAX_VALUE;
                        }
                    }
                } while (!compareAndSet(j2, j3));
                this.parent.e();
            }
        }

        public long b(long j) {
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 == -4611686018427387904L) {
                    throw new IllegalStateException("Produced without request");
                } else if (j3 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                } else {
                    j2 = j3 - j;
                    if (j2 < 0) {
                        throw new IllegalStateException("More produced (" + j + ") than requested (" + j3 + ")");
                    }
                }
            } while (!compareAndSet(j3, j2));
            return j2;
        }

        public boolean b() {
            return get() == Long.MIN_VALUE;
        }

        public void K_() {
            if (get() != Long.MIN_VALUE && getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.b(this);
                this.parent.e();
            }
        }
    }

    public static <T> dai<T> i(o<? extends T> oVar) {
        AtomicReference atomicReference = new AtomicReference();
        return new OperatorPublish(new br(atomicReference), oVar, atomicReference);
    }

    public static <T, R> o<R> a(o<? extends T> oVar, cyw<? super o<T>, ? extends o<R>> cyw__super_rx_o_T___extends_rx_o_R) {
        return a(oVar, cyw__super_rx_o_T___extends_rx_o_R, false);
    }

    public static <T, R> o<R> a(o<? extends T> oVar, cyw<? super o<T>, ? extends o<R>> cyw__super_rx_o_T___extends_rx_o_R, boolean z) {
        return a(new bs(z, cyw__super_rx_o_T___extends_rx_o_R, oVar));
    }

    private OperatorPublish(p<T> pVar, o<? extends T> oVar, AtomicReference<bu<T>> atomicReference) {
        super(pVar);
        this.c = oVar;
        this.d = atomicReference;
    }

    public void d(cys<? super an> cys__super_rx_an) {
        am amVar;
        am buVar;
        boolean z;
        do {
            amVar = (bu) this.d.get();
            if (amVar != null && !amVar.b()) {
                break;
            }
            buVar = new bu(this.d);
            buVar.d();
        } while (!this.d.compareAndSet(amVar, buVar));
        amVar = buVar;
        if (amVar.h.get() || !amVar.h.compareAndSet(false, true)) {
            z = false;
        } else {
            z = true;
        }
        cys__super_rx_an.call(amVar);
        if (z) {
            this.c.a(amVar);
        }
    }
}
