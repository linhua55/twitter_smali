package rx.internal.operators;

import cyw;
import defpackage.czx;
import defpackage.daf;
import defpackage.dax;
import defpackage.dbj;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.exceptions.MissingBackpressureException;
import rx.exceptions.e;
import rx.internal.producers.a;
import rx.internal.util.ExceptionsUtils;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.atomic.c;
import rx.o;

/* compiled from: Twttr */
final class i<T, R> extends am<T> {
    final am<? super R> a;
    final cyw<? super T, ? extends o<? extends R>> b;
    final int c;
    final a d;
    final Queue<Object> e;
    final AtomicInteger f;
    final AtomicReference<Throwable> g;
    final dbj h;
    volatile boolean i;
    volatile boolean j;

    public i(am<? super R> amVar, cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R, int i, int i2) {
        Queue czx;
        this.a = amVar;
        this.b = cyw__super_T___extends_rx_o__extends_R;
        this.c = i2;
        this.d = new a();
        this.f = new AtomicInteger();
        this.g = new AtomicReference();
        if (daf.a()) {
            czx = new czx(i);
        } else {
            czx = new c(i);
        }
        this.e = czx;
        this.h = new dbj();
        a((long) i);
    }

    public void b_(T t) {
        if (this.e.offer(NotificationLite.a().a((Object) t))) {
            d();
            return;
        }
        K_();
        a(new MissingBackpressureException());
    }

    public void a(Throwable th) {
        if (ExceptionsUtils.a(this.g, th)) {
            this.i = true;
            if (this.c == 0) {
                Throwable a = ExceptionsUtils.a(this.g);
                if (!ExceptionsUtils.a(a)) {
                    this.a.a(a);
                }
                this.h.K_();
                return;
            }
            d();
            return;
        }
        b(th);
    }

    public void bs_() {
        this.i = true;
        d();
    }

    void b(long j) {
        if (j > 0) {
            this.d.a(j);
        } else if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + j);
        }
    }

    void b(R r) {
        this.a.b_(r);
    }

    void a(Throwable th, long j) {
        if (!ExceptionsUtils.a(this.g, th)) {
            b(th);
        } else if (this.c == 0) {
            Throwable a = ExceptionsUtils.a(this.g);
            if (!ExceptionsUtils.a(a)) {
                this.a.a(a);
            }
            K_();
        } else {
            if (j != 0) {
                this.d.b(j);
            }
            this.j = false;
            d();
        }
    }

    void c(long j) {
        if (j != 0) {
            this.d.b(j);
        }
        this.j = false;
        d();
    }

    void b(Throwable th) {
        dax.a().b().a(th);
    }

    void d() {
        if (this.f.getAndIncrement() == 0) {
            int i = this.c;
            while (!this.a.b()) {
                if (!this.j) {
                    Throwable a;
                    if (i != 1 || this.g.get() == null) {
                        boolean z = this.i;
                        Object poll = this.e.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            a = ExceptionsUtils.a(this.g);
                            if (a == null) {
                                this.a.bs_();
                                return;
                            } else if (!ExceptionsUtils.a(a)) {
                                this.a.a(a);
                                return;
                            } else {
                                return;
                            }
                        } else if (!z2) {
                            try {
                                o oVar = (o) this.b.a(NotificationLite.a().d(poll));
                                if (oVar == null) {
                                    c(new NullPointerException("The source returned by the mapper was null"));
                                    return;
                                } else if (oVar != o.c()) {
                                    if (oVar instanceof ScalarSynchronousObservable) {
                                        ScalarSynchronousObservable scalarSynchronousObservable = (ScalarSynchronousObservable) oVar;
                                        this.j = true;
                                        this.d.a(new g(scalarSynchronousObservable.a(), this));
                                    } else {
                                        am hVar = new h(this);
                                        this.h.a(hVar);
                                        if (!hVar.b()) {
                                            this.j = true;
                                            oVar.a(hVar);
                                        } else {
                                            return;
                                        }
                                    }
                                    a(1);
                                } else {
                                    a(1);
                                }
                            } catch (Throwable a2) {
                                e.a(a2);
                                c(a2);
                                return;
                            }
                        }
                    }
                    a2 = ExceptionsUtils.a(this.g);
                    if (!ExceptionsUtils.a(a2)) {
                        this.a.a(a2);
                        return;
                    }
                    return;
                }
                if (this.f.decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    void c(Throwable th) {
        K_();
        if (ExceptionsUtils.a(this.g, th)) {
            Throwable a = ExceptionsUtils.a(this.g);
            if (!ExceptionsUtils.a(a)) {
                this.a.a(a);
                return;
            }
            return;
        }
        b(th);
    }
}
