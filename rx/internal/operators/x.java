package rx.internal.operators;

import defpackage.cyv;
import defpackage.dap;
import defpackage.daq;
import java.util.List;
import rx.am;
import rx.an;
import rx.exceptions.e;
import rx.o;
import rx.q;

/* compiled from: Twttr */
public final class x<T, TClosing> implements q<List<T>, T> {
    final cyv<? extends o<? extends TClosing>> a;
    final int b;

    public x(o<? extends TClosing> oVar, int i) {
        this.a = new y(this, oVar);
        this.b = i;
    }

    public am<? super T> a(am<? super List<T>> amVar) {
        try {
            o oVar = (o) this.a.call();
            an aaVar = new aa(this, new dap(amVar));
            an zVar = new z(this, aaVar);
            amVar.a(zVar);
            amVar.a(aaVar);
            oVar.a(zVar);
            return aaVar;
        } catch (Throwable th) {
            e.a(th, amVar);
            return daq.a();
        }
    }
}
