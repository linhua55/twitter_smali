package rx.internal.schedulers;

import defpackage.cyr;
import defpackage.dbe;
import defpackage.dbl;
import java.util.concurrent.TimeUnit;
import rx.an;
import rx.u;

/* compiled from: Twttr */
class t extends u implements an {
    final dbe a;
    final /* synthetic */ s b;

    t(s sVar) {
        this.b = sVar;
        this.a = new dbe();
    }

    public an a(cyr cyr, long j, TimeUnit timeUnit) {
        return a(new z(cyr, this, this.b.b() + timeUnit.toMillis(j)));
    }

    public an a(cyr cyr) {
        cyr.a();
        return dbl.b();
    }

    public void K_() {
        this.a.K_();
    }

    public boolean b() {
        return this.a.b();
    }
}
