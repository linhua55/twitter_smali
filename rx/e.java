package rx;

import rx.internal.util.ak;

/* compiled from: Twttr */
class e implements n {
    final /* synthetic */ u a;
    final /* synthetic */ n b;
    final /* synthetic */ ak c;
    final /* synthetic */ d d;

    e(d dVar, u uVar, n nVar, ak akVar) {
        this.d = dVar;
        this.a = uVar;
        this.b = nVar;
        this.c = akVar;
    }

    public void a() {
        this.a.a(new f(this));
    }

    public void a(Throwable th) {
        this.a.a(new g(this, th));
    }

    public void a(an anVar) {
        this.c.a(anVar);
    }
}
