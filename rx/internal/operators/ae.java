package rx.internal.operators;

import defpackage.dap;
import defpackage.dbj;
import rx.am;
import rx.u;

/* compiled from: Twttr */
class ae extends am<T> {
    final ag<T> a;
    final am<?> b;
    final /* synthetic */ dbj c;
    final /* synthetic */ u d;
    final /* synthetic */ dap e;
    final /* synthetic */ ad f;

    ae(ad adVar, am amVar, dbj dbj, u uVar, dap dap) {
        this.f = adVar;
        this.c = dbj;
        this.d = uVar;
        this.e = dap;
        super(amVar);
        this.a = new ag();
        this.b = this;
    }

    public void c() {
        a(Long.MAX_VALUE);
    }

    public void b_(T t) {
        this.c.a(this.d.a(new af(this, this.a.a(t)), this.f.a, this.f.b));
    }

    public void a(Throwable th) {
        this.e.a(th);
        K_();
        this.a.a();
    }

    public void bs_() {
        this.a.a(this.e, this);
    }
}
