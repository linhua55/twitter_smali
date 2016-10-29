package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.exceptions.e;
import rx.internal.operators.a;
import rx.p;
import rx.r;
import rx.s;

/* compiled from: Twttr */
public final class ReplaySubject<T> extends k<T, T> {
    private static final Object[] d;
    final ReplayState<T> c;

    /* compiled from: Twttr */
    final class ReplayProducer<T> extends AtomicInteger implements an, s {
        private static final long serialVersionUID = -5006209596735204567L;
        final am<? super T> actual;
        boolean caughtUp;
        int index;
        Object node;
        final AtomicLong requested;
        final ReplayState<T> state;
        int tailIndex;

        public ReplayProducer(am<? super T> amVar, ReplayState<T> replayState) {
            this.actual = amVar;
            this.requested = new AtomicLong();
            this.state = replayState;
        }

        public void K_() {
            this.state.b(this);
        }

        public boolean b() {
            return this.actual.b();
        }

        public void a(long j) {
            if (j > 0) {
                a.a(this.requested, j);
                this.state.buffer.a(this);
            } else if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
        }
    }

    /* compiled from: Twttr */
    final class ReplayState<T> extends AtomicReference<ReplayProducer<T>[]> implements p<T>, r<T> {
        static final ReplayProducer[] a;
        static final ReplayProducer[] b;
        private static final long serialVersionUID = 5952362471246910544L;
        final g<T> buffer;

        public /* synthetic */ void call(Object obj) {
            a((am) obj);
        }

        static {
            a = new ReplayProducer[0];
            b = new ReplayProducer[0];
        }

        public ReplayState(g<T> gVar) {
            this.buffer = gVar;
            lazySet(a);
        }

        public void a(am<? super T> amVar) {
            ReplayProducer replayProducer = new ReplayProducer(amVar, this);
            amVar.a((an) replayProducer);
            amVar.a((s) replayProducer);
            if (a(replayProducer) && replayProducer.b()) {
                b(replayProducer);
            } else {
                this.buffer.a(replayProducer);
            }
        }

        boolean a(ReplayProducer<T> replayProducer) {
            ReplayProducer[] replayProducerArr;
            Object obj;
            do {
                replayProducerArr = (ReplayProducer[]) get();
                if (replayProducerArr == b) {
                    return false;
                }
                int length = replayProducerArr.length;
                obj = new ReplayProducer[(length + 1)];
                System.arraycopy(replayProducerArr, 0, obj, 0, length);
                obj[length] = replayProducer;
            } while (!compareAndSet(replayProducerArr, obj));
            return true;
        }

        void b(ReplayProducer<T> replayProducer) {
            ReplayProducer[] replayProducerArr;
            Object obj;
            do {
                replayProducerArr = (ReplayProducer[]) get();
                if (replayProducerArr != b && replayProducerArr != a) {
                    int length = replayProducerArr.length;
                    int i = -1;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (replayProducerArr[i2] == replayProducer) {
                            i = i2;
                            break;
                        }
                    }
                    if (i < 0) {
                        return;
                    }
                    if (length == 1) {
                        obj = a;
                    } else {
                        obj = new ReplayProducer[(length - 1)];
                        System.arraycopy(replayProducerArr, 0, obj, 0, i);
                        System.arraycopy(replayProducerArr, i + 1, obj, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(replayProducerArr, obj));
        }

        public void b_(T t) {
            g gVar = this.buffer;
            gVar.a((Object) t);
            for (ReplayProducer replayProducer : (ReplayProducer[]) get()) {
                if (replayProducer.caughtUp) {
                    replayProducer.actual.b_(t);
                } else if (gVar.a(replayProducer)) {
                    replayProducer.caughtUp = true;
                    replayProducer.node = null;
                }
            }
        }

        public void a(Throwable th) {
            g gVar = this.buffer;
            gVar.a(th);
            List list = null;
            for (ReplayProducer replayProducer : (ReplayProducer[]) getAndSet(b)) {
                try {
                    if (replayProducer.caughtUp) {
                        replayProducer.actual.a(th);
                    } else if (gVar.a(replayProducer)) {
                        replayProducer.caughtUp = true;
                        replayProducer.node = null;
                    }
                } catch (Throwable th2) {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(th2);
                }
            }
            e.a(list);
        }

        public void bs_() {
            g gVar = this.buffer;
            gVar.a();
            for (ReplayProducer replayProducer : (ReplayProducer[]) getAndSet(b)) {
                if (replayProducer.caughtUp) {
                    replayProducer.actual.bs_();
                } else if (gVar.a(replayProducer)) {
                    replayProducer.caughtUp = true;
                    replayProducer.node = null;
                }
            }
        }
    }

    public static <T> ReplaySubject<T> q() {
        return f(16);
    }

    public static <T> ReplaySubject<T> f(int i) {
        if (i > 0) {
            return new ReplaySubject(new ReplayState(new h(i)));
        }
        throw new IllegalArgumentException("capacity > 0 required but it was " + i);
    }

    ReplaySubject(ReplayState<T> replayState) {
        super(replayState);
        this.c = replayState;
    }

    public void b_(T t) {
        this.c.b_(t);
    }

    public void a(Throwable th) {
        this.c.a(th);
    }

    public void bs_() {
        this.c.bs_();
    }

    static {
        d = new Object[0];
    }
}
