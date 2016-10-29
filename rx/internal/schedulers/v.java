package rx.internal.schedulers;

import dbg;
import defpackage.cyr;
import defpackage.dax;
import defpackage.dba;
import defpackage.dbl;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.an;
import rx.exceptions.e;
import rx.internal.util.RxThreadFactory;
import rx.internal.util.ak;
import rx.internal.util.p;
import rx.u;

/* compiled from: Twttr */
public class v extends u implements an {
    public static final int b;
    private static final boolean e;
    private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f;
    private static final AtomicReference<ScheduledExecutorService> g;
    private static volatile Object h;
    private static final Object i;
    volatile boolean a;
    private final ScheduledExecutorService c;
    private final dba d;

    static {
        f = new ConcurrentHashMap();
        g = new AtomicReference();
        b = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();
        boolean z = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
        int b = p.b();
        if (z || (b != 0 && b < 21)) {
            z = false;
        } else {
            z = true;
        }
        e = z;
        i = new Object();
    }

    public static void a(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        while (((ScheduledExecutorService) g.get()) == null) {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge-"));
            if (g.compareAndSet(null, newScheduledThreadPool)) {
                newScheduledThreadPool.scheduleAtFixedRate(new w(), (long) b, (long) b, TimeUnit.MILLISECONDS);
                break;
            }
            newScheduledThreadPool.shutdownNow();
        }
        f.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
    }

    public static void a(ScheduledExecutorService scheduledExecutorService) {
        f.remove(scheduledExecutorService);
    }

    static void e() {
        try {
            Iterator it = f.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    it.remove();
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        } catch (Throwable th) {
            e.a(th);
            dax.a().b().a(th);
        }
    }

    public static boolean b(ScheduledExecutorService scheduledExecutorService) {
        if (e) {
            Method c;
            if (scheduledExecutorService instanceof ScheduledThreadPoolExecutor) {
                Object obj = h;
                if (obj == i) {
                    return false;
                }
                if (obj == null) {
                    c = c(scheduledExecutorService);
                    if (c != null) {
                        obj = c;
                    } else {
                        obj = i;
                    }
                    h = obj;
                } else {
                    c = (Method) obj;
                }
            } else {
                c = c(scheduledExecutorService);
            }
            if (c != null) {
                try {
                    c.invoke(scheduledExecutorService, new Object[]{Boolean.valueOf(true)});
                    return true;
                } catch (Throwable e) {
                    dax.a().b().a(e);
                }
            }
        }
        return false;
    }

    static Method c(ScheduledExecutorService scheduledExecutorService) {
        for (Method method : scheduledExecutorService.getClass().getMethods()) {
            if (method.getName().equals("setRemoveOnCancelPolicy")) {
                Class[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == Boolean.TYPE) {
                    return method;
                }
            }
        }
        return null;
    }

    public v(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!b(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            a((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
        this.d = dax.a().f();
        this.c = newScheduledThreadPool;
    }

    public an a(cyr cyr) {
        return a(cyr, 0, null);
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        if (this.a) {
            return dbl.b();
        }
        return b(cyr, j, timeUnit);
    }

    public ScheduledAction b(cyr cyr, long j, TimeUnit timeUnit) {
        Future submit;
        Runnable scheduledAction = new ScheduledAction(this.d.a(cyr));
        if (j <= 0) {
            submit = this.c.submit(scheduledAction);
        } else {
            submit = this.c.schedule(scheduledAction, j, timeUnit);
        }
        scheduledAction.a(submit);
        return scheduledAction;
    }

    public ScheduledAction a(cyr cyr, long j, TimeUnit timeUnit, dbg dbg) {
        Future submit;
        Runnable scheduledAction = new ScheduledAction(this.d.a(cyr), dbg);
        dbg.a(scheduledAction);
        if (j <= 0) {
            submit = this.c.submit(scheduledAction);
        } else {
            submit = this.c.schedule(scheduledAction, j, timeUnit);
        }
        scheduledAction.a(submit);
        return scheduledAction;
    }

    public ScheduledAction a(cyr cyr, long j, TimeUnit timeUnit, ak akVar) {
        Future submit;
        an scheduledAction = new ScheduledAction(this.d.a(cyr), akVar);
        akVar.a(scheduledAction);
        if (j <= 0) {
            submit = this.c.submit(scheduledAction);
        } else {
            submit = this.c.schedule(scheduledAction, j, timeUnit);
        }
        scheduledAction.a(submit);
        return scheduledAction;
    }

    public void K_() {
        this.a = true;
        this.c.shutdownNow();
        a(this.c);
    }

    public boolean b() {
        return this.a;
    }
}
