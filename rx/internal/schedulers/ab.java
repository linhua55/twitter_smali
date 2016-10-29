package rx.internal.schedulers;

import defpackage.cyr;
import defpackage.dbe;
import defpackage.dbl;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.an;
import rx.u;

/* compiled from: Twttr */
class ab extends u implements an {
    final AtomicInteger a;
    final PriorityBlockingQueue<ad> b;
    private final dbe c;
    private final AtomicInteger d;

    ab() {
        this.a = new AtomicInteger();
        this.b = new PriorityBlockingQueue();
        this.c = new dbe();
        this.d = new AtomicInteger();
    }

    public an a(cyr cyr) {
        return a(cyr, c());
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        long c = c() + timeUnit.toMillis(j);
        return a(new z(cyr, this, c), c);
    }

    private an a(cyr cyr, long j) {
        if (this.c.b()) {
            return dbl.b();
        }
        ad adVar = new ad(cyr, Long.valueOf(j), this.a.incrementAndGet());
        this.b.add(adVar);
        if (this.d.getAndIncrement() != 0) {
            return dbl.a(new ac(this, adVar));
        }
        do {
            adVar = (ad) this.b.poll();
            if (adVar != null) {
                adVar.a.a();
            }
        } while (this.d.decrementAndGet() > 0);
        return dbl.b();
    }

    public void K_() {
        this.c.K_();
    }

    public boolean b() {
        return this.c.b();
    }
}
