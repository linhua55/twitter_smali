package rx.internal.operators;

import defpackage.dap;
import rx.am;
import rx.an;
import rx.o;
import rx.q;

/* compiled from: Twttr */
public final class dg<T, E> implements q<T, T> {
    private final o<? extends E> a;

    public dg(o<? extends E> oVar) {
        this.a = oVar;
    }

    public am<? super T> a(am<? super T> amVar) {
        an dap = new dap(amVar, false);
        an dhVar = new dh(this, dap, false, dap);
        an diVar = new di(this, dhVar);
        dap.a(dhVar);
        dap.a(diVar);
        amVar.a(dap);
        this.a.a(diVar);
        return dhVar;
    }
}
