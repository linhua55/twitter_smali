package rx.internal.schedulers;

import defpackage.cyr;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.an;
import rx.internal.util.RxThreadFactory;
import rx.t;
import rx.u;

/* compiled from: Twttr */
public final class h extends t implements y {
    static final int b;
    static final m c;
    static final l d;
    final ThreadFactory e;
    final AtomicReference<l> f;

    static {
        int intValue = Integer.getInteger("rx.scheduler.max-computation-threads", 0).intValue();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (intValue <= 0 || intValue > availableProcessors) {
            intValue = availableProcessors;
        }
        b = intValue;
        c = new m(RxThreadFactory.a);
        c.K_();
        d = new l(null, 0);
    }

    public h(ThreadFactory threadFactory) {
        this.e = threadFactory;
        this.f = new AtomicReference(d);
        c();
    }

    public u a() {
        return new i(((l) this.f.get()).a());
    }

    public void c() {
        l lVar = new l(this.e, b);
        if (!this.f.compareAndSet(d, lVar)) {
            lVar.b();
        }
    }

    public void d() {
        l lVar;
        do {
            lVar = (l) this.f.get();
            if (lVar == d) {
                return;
            }
        } while (!this.f.compareAndSet(lVar, d));
        lVar.b();
    }

    public an a(cyr cyr) {
        return ((l) this.f.get()).a().b(cyr, -1, TimeUnit.NANOSECONDS);
    }
}
