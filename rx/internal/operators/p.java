package rx.internal.operators;

import dbg;
import defpackage.cyr;

/* compiled from: Twttr */
class p implements cyr {
    final /* synthetic */ dbg a;
    final /* synthetic */ m b;

    p(m mVar, dbg dbg) {
        this.b = mVar;
        this.a = dbg;
    }

    public void a() {
        this.b.c.lock();
        try {
            if (this.b.a == this.a && this.b.b.decrementAndGet() == 0) {
                this.b.a.K_();
                this.b.a = new dbg();
            }
            this.b.c.unlock();
        } catch (Throwable th) {
            this.b.c.unlock();
        }
    }
}
