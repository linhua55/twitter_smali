package rx.internal.operators;

import defpackage.dbl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.internal.util.o;
import rx.s;

/* compiled from: Twttr */
final class ca<T> extends am<T> implements an {
    static final InnerProducer[] d;
    static final InnerProducer[] e;
    final bz<T> a;
    final NotificationLite<T> b;
    boolean c;
    volatile boolean f;
    final o<InnerProducer<T>> g;
    InnerProducer<T>[] h;
    volatile long i;
    long j;
    final AtomicBoolean k;
    boolean l;
    boolean m;
    long n;
    long o;
    volatile s p;
    List<InnerProducer<T>> q;
    boolean r;

    static {
        d = new InnerProducer[0];
        e = new InnerProducer[0];
    }

    public ca(AtomicReference<ca<T>> atomicReference, bz<T> bzVar) {
        this.a = bzVar;
        this.b = NotificationLite.a();
        this.g = new o();
        this.h = d;
        this.k = new AtomicBoolean();
        a(0);
    }

    void d() {
        a(dbl.a(new cb(this)));
    }

    boolean a(InnerProducer<T> innerProducer) {
        if (innerProducer == null) {
            throw new NullPointerException();
        } else if (this.f) {
            return false;
        } else {
            synchronized (this.g) {
                if (this.f) {
                    return false;
                }
                this.g.a((Object) innerProducer);
                this.i++;
                return true;
            }
        }
    }

    void b(InnerProducer<T> innerProducer) {
        if (!this.f) {
            synchronized (this.g) {
                if (this.f) {
                    return;
                }
                this.g.b(innerProducer);
                this.i++;
            }
        }
    }

    public void a(s sVar) {
        if (this.p != null) {
            throw new IllegalStateException("Only a single producer can be set on a Subscriber.");
        }
        this.p = sVar;
        c(null);
        f();
    }

    public void b_(T t) {
        if (!this.c) {
            this.a.a((Object) t);
            f();
        }
    }

    public void a(Throwable th) {
        if (!this.c) {
            this.c = true;
            try {
                this.a.a(th);
                f();
            } finally {
                K_();
            }
        }
    }

    public void bs_() {
        if (!this.c) {
            this.c = true;
            try {
                this.a.b();
                f();
            } finally {
                K_();
            }
        }
    }

    void c(InnerProducer<T> innerProducer) {
        if (!b()) {
            synchronized (this) {
                if (this.l) {
                    if (innerProducer != null) {
                        List list = this.q;
                        if (list == null) {
                            list = new ArrayList();
                            this.q = list;
                        }
                        list.add(innerProducer);
                    } else {
                        this.r = true;
                    }
                    this.m = true;
                    return;
                }
                long max;
                this.l = true;
                long j = this.n;
                if (innerProducer != null) {
                    max = Math.max(j, innerProducer.totalRequested.get());
                } else {
                    max = j;
                    for (InnerProducer innerProducer2 : e()) {
                        if (innerProducer2 != null) {
                            max = Math.max(max, innerProducer2.totalRequested.get());
                        }
                    }
                }
                a(max, j);
                while (!b()) {
                    synchronized (this) {
                        if (this.m) {
                            this.m = false;
                            List<InnerProducer> list2 = this.q;
                            this.q = null;
                            boolean z = this.r;
                            this.r = false;
                            j = this.n;
                            if (list2 != null) {
                                long j2 = j;
                                for (InnerProducer innerProducer3 : list2) {
                                    j2 = Math.max(j2, innerProducer3.totalRequested.get());
                                }
                                max = j2;
                            } else {
                                max = j;
                            }
                            if (z) {
                                for (InnerProducer innerProducer22 : e()) {
                                    if (innerProducer22 != null) {
                                        max = Math.max(max, innerProducer22.totalRequested.get());
                                    }
                                }
                            }
                            a(max, j);
                        } else {
                            this.l = false;
                            return;
                        }
                    }
                }
            }
        }
    }

    InnerProducer<T>[] e() {
        Object obj;
        synchronized (this.g) {
            Object c = this.g.c();
            int length = c.length;
            obj = new InnerProducer[length];
            System.arraycopy(c, 0, obj, 0, length);
        }
        return obj;
    }

    void a(long j, long j2) {
        long j3 = this.o;
        s sVar = this.p;
        long j4 = j - j2;
        if (j4 != 0) {
            this.n = j;
            if (sVar == null) {
                j3 += j4;
                if (j3 < 0) {
                    j3 = Long.MAX_VALUE;
                }
                this.o = j3;
            } else if (j3 != 0) {
                this.o = 0;
                sVar.a(j3 + j4);
            } else {
                sVar.a(j4);
            }
        } else if (j3 != 0 && sVar != null) {
            this.o = 0;
            sVar.a(j3);
        }
    }

    void f() {
        InnerProducer[] innerProducerArr = this.h;
        if (this.j != this.i) {
            synchronized (this.g) {
                innerProducerArr = this.h;
                Object c = this.g.c();
                int length = c.length;
                if (innerProducerArr.length != length) {
                    innerProducerArr = new InnerProducer[length];
                    this.h = innerProducerArr;
                }
                System.arraycopy(c, 0, innerProducerArr, 0, length);
                this.j = this.i;
            }
        }
        bz bzVar = this.a;
        for (InnerProducer innerProducer : r0) {
            if (innerProducer != null) {
                bzVar.a(innerProducer);
            }
        }
    }
}
