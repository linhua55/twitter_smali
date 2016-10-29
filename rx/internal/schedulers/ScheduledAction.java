package rx.internal.schedulers;

import dbg;
import defpackage.cyr;
import defpackage.dax;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.an;
import rx.exceptions.OnErrorNotImplementedException;
import rx.internal.util.ak;

/* compiled from: Twttr */
public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, an {
    private static final long serialVersionUID = -3962399486978279857L;
    final cyr action;
    final ak cancel;

    /* compiled from: Twttr */
    final class Remover2 extends AtomicBoolean implements an {
        private static final long serialVersionUID = 247232374289553518L;
        final ak parent;
        final ScheduledAction s;

        public Remover2(ScheduledAction scheduledAction, ak akVar) {
            this.s = scheduledAction;
            this.parent = akVar;
        }

        public boolean b() {
            return this.s.b();
        }

        public void K_() {
            if (compareAndSet(false, true)) {
                this.parent.b(this.s);
            }
        }
    }

    /* compiled from: Twttr */
    final class Remover extends AtomicBoolean implements an {
        private static final long serialVersionUID = 247232374289553518L;
        final dbg parent;
        final ScheduledAction s;

        public Remover(ScheduledAction scheduledAction, dbg dbg) {
            this.s = scheduledAction;
            this.parent = dbg;
        }

        public boolean b() {
            return this.s.b();
        }

        public void K_() {
            if (compareAndSet(false, true)) {
                this.parent.b(this.s);
            }
        }
    }

    public ScheduledAction(cyr cyr) {
        this.action = cyr;
        this.cancel = new ak();
    }

    public ScheduledAction(cyr cyr, dbg dbg) {
        this.action = cyr;
        this.cancel = new ak(new Remover(this, dbg));
    }

    public ScheduledAction(cyr cyr, ak akVar) {
        this.action = cyr;
        this.cancel = new ak(new Remover2(this, akVar));
    }

    public void run() {
        try {
            lazySet(Thread.currentThread());
            this.action.a();
        } catch (Throwable th) {
            Throwable th2;
            if (th2 instanceof OnErrorNotImplementedException) {
                th2 = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th2);
            } else {
                th2 = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th2);
            }
            dax.a().b().a(th2);
            Thread currentThread = Thread.currentThread();
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
        } finally {
            K_();
        }
    }

    public boolean b() {
        return this.cancel.b();
    }

    public void K_() {
        if (!this.cancel.b()) {
            this.cancel.K_();
        }
    }

    public void a(an anVar) {
        this.cancel.a(anVar);
    }

    public void a(Future<?> future) {
        this.cancel.a(new x(this, future));
    }

    public void a(dbg dbg) {
        this.cancel.a(new Remover(this, dbg));
    }
}
