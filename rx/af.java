package rx;

import rx.exceptions.e;

/* compiled from: Twttr */
class af implements p<R> {
    final /* synthetic */ q a;
    final /* synthetic */ w b;

    af(w wVar, q qVar) {
        this.b = wVar;
        this.a = qVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super R> amVar) {
        am amVar2;
        try {
            amVar2 = (am) w.b.a(this.a).a(amVar);
            amVar2.c();
            this.b.a.call(amVar2);
        } catch (Throwable th) {
            e.a(th, amVar);
        }
    }
}
