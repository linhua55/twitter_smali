package defpackage;

import dax;
import dba;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.schedulers.n;
import rx.internal.schedulers.s;
import rx.internal.schedulers.y;
import rx.t;

/* compiled from: Twttr */
/* renamed from: dbd */
public final class dbd {
    private static final AtomicReference<dbd> d;
    private final t a;
    private final t b;
    private final t c;

    static {
        d = new AtomicReference();
    }

    private static dbd f() {
        dbd dbd;
        while (true) {
            dbd = (dbd) d.get();
            if (dbd == null) {
                dbd = new dbd();
                if (d.compareAndSet(null, dbd)) {
                    break;
                }
                dbd.e();
            } else {
                break;
            }
        }
        return dbd;
    }

    private dbd() {
        dba f = dax.a().f();
        t d = f.d();
        if (d != null) {
            this.a = d;
        } else {
            this.a = dba.a();
        }
        d = f.e();
        if (d != null) {
            this.b = d;
        } else {
            this.b = dba.b();
        }
        t f2 = f.f();
        if (f2 != null) {
            this.c = f2;
        } else {
            this.c = dba.c();
        }
    }

    public static t a() {
        return s.b;
    }

    public static t b() {
        return dbd.f().c;
    }

    public static t c() {
        return dbd.f().a;
    }

    public static t d() {
        return dbd.f().b;
    }

    public static t a(Executor executor) {
        return new n(executor);
    }

    synchronized void e() {
        if (this.a instanceof y) {
            ((y) this.a).d();
        }
        if (this.b instanceof y) {
            ((y) this.b).d();
        }
        if (this.c instanceof y) {
            ((y) this.c).d();
        }
    }
}
