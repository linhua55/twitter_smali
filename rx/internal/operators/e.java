package rx.internal.operators;

import cyw;
import defpackage.dap;
import rx.am;
import rx.an;
import rx.o;
import rx.p;

/* compiled from: Twttr */
public final class e<T, R> implements p<R> {
    final o<? extends T> a;
    final cyw<? super T, ? extends o<? extends R>> b;
    final int c;
    final int d;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public e(o<? extends T> oVar, cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R, int i, int i2) {
        this.a = oVar;
        this.b = cyw__super_T___extends_rx_o__extends_R;
        this.c = i;
        this.d = i2;
    }

    public void a(am<? super R> amVar) {
        am dap;
        if (this.d == 0) {
            dap = new dap(amVar);
        } else {
            am<? super R> amVar2 = amVar;
        }
        an iVar = new i(dap, this.b, this.c, this.d);
        amVar.a(iVar);
        amVar.a(iVar.h);
        amVar.a(new f(this, iVar));
        if (!amVar.b()) {
            this.a.a(iVar);
        }
    }
}
