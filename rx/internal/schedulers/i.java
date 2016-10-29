package rx.internal.schedulers;

import dbg;
import defpackage.cyr;
import defpackage.dbl;
import java.util.concurrent.TimeUnit;
import rx.an;
import rx.internal.util.ak;
import rx.u;

/* compiled from: Twttr */
class i extends u {
    private final ak a;
    private final dbg b;
    private final ak c;
    private final m d;

    i(m mVar) {
        this.a = new ak();
        this.b = new dbg();
        this.c = new ak(this.a, this.b);
        this.d = mVar;
    }

    public void K_() {
        this.c.K_();
    }

    public boolean b() {
        return this.c.b();
    }

    public an a(cyr cyr) {
        if (b()) {
            return dbl.b();
        }
        return this.d.a(new j(this, cyr), 0, null, this.a);
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        if (b()) {
            return dbl.b();
        }
        return this.d.a(new k(this, cyr), j, timeUnit, this.b);
    }
}
