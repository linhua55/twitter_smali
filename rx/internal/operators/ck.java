package rx.internal.operators;

import rx.am;
import rx.an;
import rx.o;
import rx.p;
import rx.t;

/* compiled from: Twttr */
public final class ck<T> implements p<T> {
    final t a;
    final o<T> b;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public ck(o<T> oVar, t tVar) {
        this.a = tVar;
        this.b = oVar;
    }

    public void a(am<? super T> amVar) {
        an a = this.a.a();
        amVar.a(a);
        a.a(new cl(this, amVar, a));
    }
}
