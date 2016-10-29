package rx.internal.operators;

import rx.am;
import rx.exceptions.e;

/* compiled from: Twttr */
class ce extends am<T> {
    boolean a;
    R b;
    final /* synthetic */ am c;
    final /* synthetic */ cc d;

    ce(cc ccVar, am amVar, am amVar2) {
        this.d = ccVar;
        this.c = amVar2;
        super(amVar);
    }

    public void b_(T t) {
        if (this.a) {
            try {
                t = this.d.a.a(this.b, t);
            } catch (Throwable th) {
                e.a(th, this.c, t);
                return;
            }
        }
        this.a = true;
        this.b = t;
        this.c.b_(t);
    }

    public void a(Throwable th) {
        this.c.a(th);
    }

    public void bs_() {
        this.c.bs_();
    }
}
