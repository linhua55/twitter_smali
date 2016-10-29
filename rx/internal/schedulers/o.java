package rx.internal.schedulers;

import dbg;
import defpackage.cyr;
import defpackage.dax;
import defpackage.dbh;
import defpackage.dbl;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.an;
import rx.u;

/* compiled from: Twttr */
final class o extends u implements Runnable {
    final Executor a;
    final dbg b;
    final ConcurrentLinkedQueue<ScheduledAction> c;
    final AtomicInteger d;
    final ScheduledExecutorService e;

    public o(Executor executor) {
        this.a = executor;
        this.c = new ConcurrentLinkedQueue();
        this.d = new AtomicInteger();
        this.b = new dbg();
        this.e = r.b();
    }

    public an a(cyr cyr) {
        if (b()) {
            return dbl.b();
        }
        an scheduledAction = new ScheduledAction(cyr, this.b);
        this.b.a(scheduledAction);
        this.c.offer(scheduledAction);
        if (this.d.getAndIncrement() != 0) {
            return scheduledAction;
        }
        try {
            this.a.execute(this);
            return scheduledAction;
        } catch (Throwable e) {
            this.b.b(scheduledAction);
            this.d.decrementAndGet();
            dax.a().b().a(e);
            throw e;
        }
    }

    public void run() {
        while (!this.b.b()) {
            ScheduledAction scheduledAction = (ScheduledAction) this.c.poll();
            if (scheduledAction != null) {
                if (!scheduledAction.b()) {
                    if (this.b.b()) {
                        this.c.clear();
                        return;
                    }
                    scheduledAction.run();
                }
                if (this.d.decrementAndGet() == 0) {
                    return;
                }
            }
            return;
        }
        this.c.clear();
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        if (j <= 0) {
            return a(cyr);
        }
        if (b()) {
            return dbl.b();
        }
        dbh dbh = new dbh();
        dbh dbh2 = new dbh();
        dbh2.a(dbh);
        this.b.a(dbh2);
        an a = dbl.a(new p(this, dbh2));
        Object scheduledAction = new ScheduledAction(new q(this, dbh2, cyr, a));
        dbh.a(scheduledAction);
        try {
            scheduledAction.a(this.e.schedule(scheduledAction, j, timeUnit));
            return a;
        } catch (Throwable e) {
            dax.a().b().a(e);
            throw e;
        }
    }

    public boolean b() {
        return this.b.b();
    }

    public void K_() {
        this.b.K_();
        this.c.clear();
    }
}
