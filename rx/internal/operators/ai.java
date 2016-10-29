package rx.internal.operators;

import rx.am;
import rx.u;

/* compiled from: Twttr */
class ai extends am<T> {
    boolean a;
    final /* synthetic */ u b;
    final /* synthetic */ am c;
    final /* synthetic */ ah d;

    ai(ah ahVar, am amVar, u uVar, am amVar2) {
        this.d = ahVar;
        this.b = uVar;
        this.c = amVar2;
        super(amVar);
    }

    public void bs_() {
        this.b.a(new aj(this), this.d.a, this.d.b);
    }

    public void a(Throwable th) {
        this.b.a(new ak(this, th));
    }

    public void b_(T t) {
        this.b.a(new al(this, t), this.d.a, this.d.b);
    }
}
