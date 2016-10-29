package rx.internal.operators;

import dbg;
import rx.am;

/* compiled from: Twttr */
class o extends am<T> {
    final /* synthetic */ am a;
    final /* synthetic */ dbg b;
    final /* synthetic */ m c;

    o(m mVar, am amVar, am amVar2, dbg dbg) {
        this.c = mVar;
        this.a = amVar2;
        this.b = dbg;
        super(amVar);
    }

    public void a(Throwable th) {
        d();
        this.a.a(th);
    }

    public void b_(T t) {
        this.a.b_(t);
    }

    public void bs_() {
        d();
        this.a.bs_();
    }

    void d() {
        this.c.c.lock();
        try {
            if (this.c.a == this.b) {
                this.c.a.K_();
                this.c.a = new dbg();
                this.c.b.set(0);
            }
            this.c.c.unlock();
        } catch (Throwable th) {
            this.c.c.unlock();
        }
    }
}
