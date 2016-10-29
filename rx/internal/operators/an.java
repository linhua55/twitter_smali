package rx.internal.operators;

import java.util.HashSet;
import java.util.Set;
import rx.am;

/* compiled from: Twttr */
class an extends am<T> {
    Set<U> a;
    final /* synthetic */ am b;
    final /* synthetic */ am c;

    an(am amVar, am amVar2, am amVar3) {
        this.c = amVar;
        this.b = amVar3;
        super(amVar2);
        this.a = new HashSet();
    }

    public void b_(T t) {
        if (this.a.add(this.c.a.a(t))) {
            this.b.b_(t);
        } else {
            a(1);
        }
    }

    public void a(Throwable th) {
        this.a = null;
        this.b.a(th);
    }

    public void bs_() {
        this.a = null;
        this.b.bs_();
    }
}
