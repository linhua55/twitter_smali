package rx.internal.operators;

import defpackage.cyr;
import defpackage.czx;
import defpackage.daf;
import defpackage.dax;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.an;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.atomic.c;
import rx.internal.util.s;
import rx.t;
import rx.u;

/* compiled from: Twttr */
final class bk<T> extends am<T> implements cyr {
    final am<? super T> a;
    final u b;
    final NotificationLite<T> c;
    final boolean d;
    final Queue<Object> e;
    final int f;
    volatile boolean g;
    final AtomicLong h;
    final AtomicLong i;
    Throwable j;
    long k;

    public bk(t tVar, am<? super T> amVar, boolean z, int i) {
        this.h = new AtomicLong();
        this.i = new AtomicLong();
        this.a = amVar;
        this.b = tVar.a();
        this.d = z;
        this.c = NotificationLite.a();
        if (i <= 0) {
            i = s.c;
        }
        this.f = i - (i >> 2);
        if (daf.a()) {
            this.e = new czx(i);
        } else {
            this.e = new c(i);
        }
        a((long) i);
    }

    void d() {
        am amVar = this.a;
        amVar.a(new bl(this));
        amVar.a(this.b);
        amVar.a((an) this);
    }

    public void b_(T t) {
        if (!b() && !this.g) {
            if (this.e.offer(this.c.a((Object) t))) {
                e();
            } else {
                a(new MissingBackpressureException());
            }
        }
    }

    public void bs_() {
        if (!b() && !this.g) {
            this.g = true;
            e();
        }
    }

    public void a(Throwable th) {
        if (b() || this.g) {
            dax.a().b().a(th);
            return;
        }
        this.j = th;
        this.g = true;
        e();
    }

    protected void e() {
        if (this.i.getAndIncrement() == 0) {
            this.b.a(this);
        }
    }

    public void a() {
        long j = 1;
        long j2 = this.k;
        Queue queue = this.e;
        am amVar = this.a;
        NotificationLite notificationLite = this.c;
        do {
            long j3 = this.h.get();
            while (j3 != j2) {
                boolean z = this.g;
                Object poll = queue.poll();
                boolean z2 = poll == null;
                if (!a(z, z2, amVar, queue)) {
                    if (z2) {
                        break;
                    }
                    amVar.b_(notificationLite.d(poll));
                    long j4 = 1 + j2;
                    if (j4 == ((long) this.f)) {
                        j2 = a.b(this.h, j4);
                        a(j4);
                        j4 = 0;
                    } else {
                        j2 = j3;
                    }
                    j3 = j2;
                    j2 = j4;
                } else {
                    return;
                }
            }
            if (j3 != j2 || !a(this.g, queue.isEmpty(), amVar, queue)) {
                this.k = j2;
                j = this.i.addAndGet(-j);
            } else {
                return;
            }
        } while (j != 0);
    }

    boolean a(boolean z, boolean z2, am<? super T> amVar, Queue<Object> queue) {
        if (amVar.b()) {
            queue.clear();
            return true;
        }
        if (z) {
            if (!this.d) {
                Throwable th = this.j;
                if (th != null) {
                    queue.clear();
                    try {
                        amVar.a(th);
                        return true;
                    } finally {
                        this.b.K_();
                    }
                } else if (z2) {
                    try {
                        amVar.bs_();
                        return true;
                    } finally {
                        this.b.K_();
                    }
                }
            } else if (z2) {
                Throwable th2 = this.j;
                if (th2 != null) {
                    try {
                        amVar.a(th2);
                    } catch (Throwable th3) {
                        this.b.K_();
                    }
                } else {
                    amVar.bs_();
                }
                this.b.K_();
            }
        }
        return false;
    }
}
