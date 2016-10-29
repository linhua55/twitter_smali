package rx.internal.util;

import cyw;
import defpackage.cyr;
import defpackage.dav;
import defpackage.dax;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.am;
import rx.an;
import rx.exceptions.e;
import rx.internal.producers.SingleProducer;
import rx.internal.schedulers.h;
import rx.o;
import rx.r;
import rx.s;
import rx.t;

/* compiled from: Twttr */
public final class ScalarSynchronousObservable<T> extends o<T> {
    static dav c;
    static final boolean d;
    final T e;

    /* compiled from: Twttr */
    final class ScalarAsyncProducer<T> extends AtomicBoolean implements cyr, s {
        private static final long serialVersionUID = -2466317989629281651L;
        final am<? super T> actual;
        final cyw<cyr, an> onSchedule;
        final T value;

        public ScalarAsyncProducer(am<? super T> amVar, T t, cyw<cyr, an> cyw_cyr__rx_an) {
            this.actual = amVar;
            this.value = t;
            this.onSchedule = cyw_cyr__rx_an;
        }

        public void a(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            } else if (j != 0 && compareAndSet(false, true)) {
                this.actual.a((an) this.onSchedule.a(this));
            }
        }

        public void a() {
            r rVar = this.actual;
            if (!rVar.b()) {
                Object obj = this.value;
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

        public String toString() {
            return "ScalarAsyncProducer[" + this.value + ", " + get() + "]";
        }
    }

    static {
        c = dax.a().c();
        d = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();
    }

    static <T> s a(am<? super T> amVar, T t) {
        if (d) {
            return new SingleProducer(amVar, t);
        }
        return new ac(amVar, t);
    }

    public static <T> ScalarSynchronousObservable<T> a(T t) {
        return new ScalarSynchronousObservable(t);
    }

    protected ScalarSynchronousObservable(T t) {
        super(c.a(new aa(t)));
        this.e = t;
    }

    public T a() {
        return this.e;
    }

    public o<T> c(t tVar) {
        cyw wVar;
        if (tVar instanceof h) {
            wVar = new w(this, (h) tVar);
        } else {
            wVar = new x(this, tVar);
        }
        return a(new ab(this.e, wVar));
    }

    public <R> o<R> l(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R) {
        return a(new z(this, cyw__super_T___extends_rx_o__extends_R));
    }
}
