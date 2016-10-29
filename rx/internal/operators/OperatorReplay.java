package rx.internal.operators;

import cys;
import defpackage.cyv;
import defpackage.dai;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.exceptions.OnErrorThrowable;
import rx.exceptions.e;
import rx.o;
import rx.p;
import rx.s;

/* compiled from: Twttr */
public final class OperatorReplay<T> extends dai<T> {
    static final cyv f;
    final o<? extends T> c;
    final AtomicReference<ca<T>> d;
    final cyv<? extends bz<T>> e;

    /* compiled from: Twttr */
    class BoundedReplayBuffer<T> extends AtomicReference<Node> implements bz<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        long index;
        final NotificationLite<T> nl;
        int size;
        Node tail;

        public BoundedReplayBuffer() {
            this.nl = NotificationLite.a();
            Node node = new Node(null, 0);
            this.tail = node;
            set(node);
        }

        final void a(Node node) {
            this.tail.set(node);
            this.tail = node;
            this.size++;
        }

        final void a() {
            Node node = (Node) ((Node) get()).get();
            if (node == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            b(node);
        }

        final void b(Node node) {
            set(node);
        }

        public final void a(T t) {
            Object b = b(this.nl.a((Object) t));
            long j = this.index + 1;
            this.index = j;
            a(new Node(b, j));
            c();
        }

        public final void a(Throwable th) {
            Object b = b(this.nl.a(th));
            long j = this.index + 1;
            this.index = j;
            a(new Node(b, j));
            d();
        }

        public final void b() {
            Object b = b(this.nl.b());
            long j = this.index + 1;
            this.index = j;
            a(new Node(b, j));
            d();
        }

        public final void a(InnerProducer<T> innerProducer) {
            synchronized (innerProducer) {
                if (innerProducer.emitting) {
                    innerProducer.missed = true;
                    return;
                }
                innerProducer.emitting = true;
                while (!innerProducer.b()) {
                    Object obj;
                    long j = innerProducer.get();
                    if (j == Long.MAX_VALUE) {
                        obj = 1;
                    } else {
                        obj = null;
                    }
                    Node node = (Node) innerProducer.c();
                    if (node == null) {
                        node = (Node) get();
                        innerProducer.index = node;
                        innerProducer.b(node.index);
                    }
                    if (!innerProducer.b()) {
                        long j2 = j;
                        j = 0;
                        Node node2 = node;
                        while (j2 != 0) {
                            node = (Node) node2.get();
                            if (node == null) {
                                break;
                            }
                            Object c = c(node.value);
                            try {
                                if (this.nl.a(innerProducer.child, c)) {
                                    innerProducer.index = null;
                                    return;
                                }
                                long j3 = 1 + j;
                                j = j2 - 1;
                                if (!innerProducer.b()) {
                                    j2 = j;
                                    j = j3;
                                    node2 = node;
                                } else {
                                    return;
                                }
                            } catch (Throwable th) {
                                innerProducer.index = null;
                                e.a(th);
                                innerProducer.K_();
                                if (!this.nl.c(c) && !this.nl.b(c)) {
                                    innerProducer.child.a(OnErrorThrowable.a(th, this.nl.d(c)));
                                    return;
                                }
                                return;
                            }
                        }
                        if (j != 0) {
                            innerProducer.index = node2;
                            if (obj == null) {
                                innerProducer.c(j);
                            }
                        }
                        synchronized (innerProducer) {
                            if (innerProducer.missed) {
                                innerProducer.missed = false;
                            } else {
                                innerProducer.emitting = false;
                                return;
                            }
                        }
                    }
                    return;
                }
            }
        }

        Object b(Object obj) {
            return obj;
        }

        Object c(Object obj) {
            return obj;
        }

        void c() {
        }

        void d() {
        }
    }

    /* compiled from: Twttr */
    final class InnerProducer<T> extends AtomicLong implements an, s {
        private static final long serialVersionUID = -4453897557930727610L;
        final am<? super T> child;
        boolean emitting;
        Object index;
        boolean missed;
        final ca<T> parent;
        final AtomicLong totalRequested;

        public InnerProducer(ca<T> caVar, am<? super T> amVar) {
            this.parent = caVar;
            this.child = amVar;
            this.totalRequested = new AtomicLong();
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
                    if (j2 < 0 || j != 0) {
                        j3 = j2 + j;
                        if (j3 < 0) {
                            j3 = Long.MAX_VALUE;
                        }
                    } else {
                        return;
                    }
                } while (!compareAndSet(j2, j3));
                b(j);
                this.parent.c(this);
                this.parent.a.a(this);
            }
        }

        void b(long j) {
            long j2;
            long j3;
            do {
                j2 = this.totalRequested.get();
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = Long.MAX_VALUE;
                }
            } while (!this.totalRequested.compareAndSet(j2, j3));
        }

        public long c(long j) {
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                j2 = j3 - j;
                if (j2 < 0) {
                    throw new IllegalStateException("More produced (" + j + ") than requested (" + j3 + ")");
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
                this.parent.c(this);
            }
        }

        <U> U c() {
            return this.index;
        }
    }

    /* compiled from: Twttr */
    final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final long index;
        final Object value;

        public Node(Object obj, long j) {
            this.value = obj;
            this.index = j;
        }
    }

    /* compiled from: Twttr */
    final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int limit;

        public SizeBoundReplayBuffer(int i) {
            this.limit = i;
        }

        void c() {
            if (this.size > this.limit) {
                a();
            }
        }
    }

    /* compiled from: Twttr */
    final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements bz<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        final NotificationLite<T> nl;
        volatile int size;

        public UnboundedReplayBuffer(int i) {
            super(i);
            this.nl = NotificationLite.a();
        }

        public void a(T t) {
            add(this.nl.a((Object) t));
            this.size++;
        }

        public void a(Throwable th) {
            add(this.nl.a(th));
            this.size++;
        }

        public void b() {
            add(this.nl.b());
            this.size++;
        }

        public void a(InnerProducer<T> innerProducer) {
            synchronized (innerProducer) {
                if (innerProducer.emitting) {
                    innerProducer.missed = true;
                    return;
                }
                innerProducer.emitting = true;
                while (!innerProducer.b()) {
                    int i = this.size;
                    Integer num = (Integer) innerProducer.c();
                    int intValue = num != null ? num.intValue() : 0;
                    long j = innerProducer.get();
                    int i2 = intValue;
                    long j2 = 0;
                    long j3 = j;
                    while (j3 != 0 && i2 < i) {
                        r8 = get(i2);
                        try {
                            if (!this.nl.a(innerProducer.child, r8) && !innerProducer.b()) {
                                i2++;
                                j3--;
                                j2++;
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            e.a(th);
                            innerProducer.K_();
                            Object obj;
                            if (!this.nl.c(obj) && !this.nl.b(obj)) {
                                innerProducer.child.a(OnErrorThrowable.a(th, this.nl.d(obj)));
                                return;
                            }
                            return;
                        }
                    }
                    if (j2 != 0) {
                        innerProducer.index = Integer.valueOf(i2);
                        if (j != Long.MAX_VALUE) {
                            innerProducer.c(j2);
                        }
                    }
                    synchronized (innerProducer) {
                        if (innerProducer.missed) {
                            innerProducer.missed = false;
                        } else {
                            innerProducer.emitting = false;
                            return;
                        }
                    }
                }
            }
        }
    }

    static {
        f = new bw();
    }

    public static <T> dai<T> i(o<? extends T> oVar) {
        return a(oVar, f);
    }

    public static <T> dai<T> b(o<? extends T> oVar, int i) {
        if (i == Integer.MAX_VALUE) {
            return i(oVar);
        }
        return a(oVar, new bx(i));
    }

    static <T> dai<T> a(o<? extends T> oVar, cyv<? extends bz<T>> cyv__extends_rx_internal_operators_bz_T) {
        AtomicReference atomicReference = new AtomicReference();
        return new OperatorReplay(new by(atomicReference, cyv__extends_rx_internal_operators_bz_T), oVar, atomicReference, cyv__extends_rx_internal_operators_bz_T);
    }

    private OperatorReplay(p<T> pVar, o<? extends T> oVar, AtomicReference<ca<T>> atomicReference, cyv<? extends bz<T>> cyv__extends_rx_internal_operators_bz_T) {
        super(pVar);
        this.c = oVar;
        this.d = atomicReference;
        this.e = cyv__extends_rx_internal_operators_bz_T;
    }

    public void d(cys<? super an> cys__super_rx_an) {
        am amVar;
        am caVar;
        boolean z;
        do {
            amVar = (ca) this.d.get();
            if (amVar != null && !amVar.b()) {
                break;
            }
            caVar = new ca(this.d, (bz) this.e.call());
            caVar.d();
        } while (!this.d.compareAndSet(amVar, caVar));
        amVar = caVar;
        if (amVar.k.get() || !amVar.k.compareAndSet(false, true)) {
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
