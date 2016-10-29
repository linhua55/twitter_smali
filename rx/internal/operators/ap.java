package rx.internal.operators;

import rx.am;
import rx.exceptions.e;

/* compiled from: Twttr */
class ap extends am<T> {
    U a;
    boolean b;
    final /* synthetic */ am c;
    final /* synthetic */ ao d;

    ap(ao aoVar, am amVar, am amVar2) {
        this.d = aoVar;
        this.c = amVar2;
        super(amVar);
    }

    public void b_(T t) {
        Object obj = this.a;
        try {
            Object a = this.d.a.a(t);
            this.a = a;
            if (!this.b) {
                this.b = true;
                this.c.b_(t);
            } else if (obj == a || (a != null && a.equals(obj))) {
                a(1);
            } else {
                this.c.b_(t);
            }
        } catch (Throwable th) {
            e.a(th, this.c, t);
        }
    }

    public void a(Throwable th) {
        this.c.a(th);
    }

    public void bs_() {
        this.c.bs_();
    }
}
