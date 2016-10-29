package defpackage;

import java.util.concurrent.Executor;

/* compiled from: Twttr */
/* renamed from: k */
class k implements g<TResult, Void> {
    final /* synthetic */ m a;
    final /* synthetic */ g b;
    final /* synthetic */ Executor c;
    final /* synthetic */ h d;

    k(h hVar, m mVar, g gVar, Executor executor) {
        this.d = hVar;
        this.a = mVar;
        this.b = gVar;
        this.c = executor;
    }

    public /* synthetic */ Object a(h hVar) throws Exception {
        return b(hVar);
    }

    public Void b(h<TResult> hVar) {
        h.b(this.a, this.b, hVar, this.c);
        return null;
    }
}
