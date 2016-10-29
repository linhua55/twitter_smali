package rx.internal.operators;

import defpackage.dav;
import defpackage.dax;
import rx.am;
import rx.exceptions.e;
import rx.p;
import rx.q;

/* compiled from: Twttr */
public final class k<T, R> implements p<R> {
    static final dav a;
    final p<T> b;
    final q<? extends R, ? super T> c;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    static {
        a = dax.a().c();
    }

    public k(p<T> pVar, q<? extends R, ? super T> qVar) {
        this.b = pVar;
        this.c = qVar;
    }

    public void a(am<? super R> amVar) {
        am amVar2;
        try {
            amVar2 = (am) a.a(this.c).a(amVar);
            amVar2.c();
            this.b.call(amVar2);
        } catch (Throwable th) {
            e.a(th);
            amVar.a(th);
        }
    }
}
