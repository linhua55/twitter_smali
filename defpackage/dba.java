package defpackage;

import java.util.concurrent.ThreadFactory;
import rx.internal.schedulers.a;
import rx.internal.schedulers.h;
import rx.internal.schedulers.u;
import rx.internal.util.RxThreadFactory;
import rx.t;

/* compiled from: Twttr */
/* renamed from: dba */
public class dba {
    private static final dba a;

    public static t a() {
        return dba.a(new RxThreadFactory("RxComputationScheduler-"));
    }

    public static t a(ThreadFactory threadFactory) {
        if (threadFactory != null) {
            return new h(threadFactory);
        }
        throw new NullPointerException("threadFactory == null");
    }

    public static t b() {
        return dba.b(new RxThreadFactory("RxIoScheduler-"));
    }

    public static t b(ThreadFactory threadFactory) {
        if (threadFactory != null) {
            return new a(threadFactory);
        }
        throw new NullPointerException("threadFactory == null");
    }

    public static t c() {
        return dba.c(new RxThreadFactory("RxNewThreadScheduler-"));
    }

    public static t c(ThreadFactory threadFactory) {
        if (threadFactory != null) {
            return new u(threadFactory);
        }
        throw new NullPointerException("threadFactory == null");
    }

    protected dba() {
    }

    static {
        a = new dba();
    }

    public t d() {
        return null;
    }

    public t e() {
        return null;
    }

    public t f() {
        return null;
    }

    public cyr a(cyr cyr) {
        return cyr;
    }

    public static dba g() {
        return a;
    }
}
