package rx.internal.schedulers;

import dbg;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
final class b {
    private final ThreadFactory a;
    private final long b;
    private final ConcurrentLinkedQueue<g> c;
    private final dbg d;
    private final ScheduledExecutorService e;
    private final Future<?> f;

    b(ThreadFactory threadFactory, long j, TimeUnit timeUnit) {
        Future scheduleWithFixedDelay;
        ScheduledExecutorService scheduledExecutorService = null;
        this.a = threadFactory;
        this.b = timeUnit != null ? timeUnit.toNanos(j) : 0;
        this.c = new ConcurrentLinkedQueue();
        this.d = new dbg();
        if (timeUnit != null) {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new c(this, threadFactory));
            v.b(newScheduledThreadPool);
            scheduledExecutorService = newScheduledThreadPool;
            scheduleWithFixedDelay = newScheduledThreadPool.scheduleWithFixedDelay(new d(this), this.b, this.b, TimeUnit.NANOSECONDS);
        } else {
            scheduleWithFixedDelay = null;
        }
        this.e = scheduledExecutorService;
        this.f = scheduleWithFixedDelay;
    }

    g a() {
        if (this.d.b()) {
            return a.b;
        }
        g gVar;
        while (!this.c.isEmpty()) {
            gVar = (g) this.c.poll();
            if (gVar != null) {
                return gVar;
            }
        }
        gVar = new g(this.a);
        this.d.a(gVar);
        return gVar;
    }

    void a(g gVar) {
        gVar.a(c() + this.b);
        this.c.offer(gVar);
    }

    void b() {
        if (!this.c.isEmpty()) {
            long c = c();
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                if (gVar.d() > c) {
                    return;
                }
                if (this.c.remove(gVar)) {
                    this.d.b(gVar);
                }
            }
        }
    }

    long c() {
        return System.nanoTime();
    }

    void d() {
        try {
            if (this.f != null) {
                this.f.cancel(true);
            }
            if (this.e != null) {
                this.e.shutdownNow();
            }
            this.d.K_();
        } catch (Throwable th) {
            this.d.K_();
        }
    }
}
