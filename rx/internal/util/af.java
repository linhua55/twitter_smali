package rx.internal.util;

import cyw;
import rx.ak;
import rx.al;
import rx.am;
import rx.an;
import rx.w;

/* compiled from: Twttr */
class af implements ak<R> {
    final /* synthetic */ cyw a;
    final /* synthetic */ ad b;

    af(ad adVar, cyw cyw) {
        this.b = adVar;
        this.a = cyw;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super R> alVar) {
        w wVar = (w) this.a.a(this.b.c);
        if (wVar instanceof ad) {
            alVar.a(((ad) wVar).c);
            return;
        }
        am agVar = new ag(this, alVar);
        alVar.a((an) agVar);
        wVar.a(agVar);
    }
}
