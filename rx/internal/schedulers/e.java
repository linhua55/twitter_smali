package rx.internal.schedulers;

import dbg;
import defpackage.cyr;
import defpackage.dbl;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.an;
import rx.u;

/* compiled from: Twttr */
final class e extends u {
    final AtomicBoolean a;
    private final dbg b;
    private final b c;
    private final g d;

    e(b bVar) {
        this.b = new dbg();
        this.c = bVar;
        this.a = new AtomicBoolean();
        this.d = bVar.a();
    }

    public void K_() {
        if (this.a.compareAndSet(false, true)) {
            this.c.a(this.d);
        }
        this.b.K_();
    }

    public boolean b() {
        return this.b.b();
    }

    public an a(cyr cyr) {
        return a(cyr, 0, null);
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        if (this.b.b()) {
            return dbl.b();
        }
        an b = this.d.b(new f(this, cyr), j, timeUnit);
        this.b.a(b);
        b.a(this.b);
        return b;
    }
}
