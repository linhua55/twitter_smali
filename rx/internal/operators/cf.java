package rx.internal.operators;

import rx.am;
import rx.exceptions.e;
import rx.s;

/* compiled from: Twttr */
class cf extends am<T> {
    final /* synthetic */ Object a;
    final /* synthetic */ cg b;
    final /* synthetic */ cc c;
    private R d;

    cf(cc ccVar, Object obj, cg cgVar) {
        this.c = ccVar;
        this.a = obj;
        this.b = cgVar;
        this.d = this.a;
    }

    public void b_(T t) {
        try {
            Object a = this.c.a.a(this.d, t);
            this.d = a;
            this.b.b_(a);
        } catch (Throwable th) {
            e.a(th, this, t);
        }
    }

    public void a(Throwable th) {
        this.b.a(th);
    }

    public void bs_() {
        this.b.bs_();
    }

    public void a(s sVar) {
        this.b.a(sVar);
    }
}
