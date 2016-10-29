package rx;

import rx.internal.util.ak;

/* compiled from: Twttr */
class d implements m {
    final /* synthetic */ t a;
    final /* synthetic */ a b;

    d(a aVar, t tVar) {
        this.b = aVar;
        this.a = tVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((n) obj);
    }

    public void a(n nVar) {
        an akVar = new ak();
        an a = this.a.a();
        akVar.a(a);
        nVar.a(akVar);
        this.b.a(new e(this, a, nVar, akVar));
    }
}
