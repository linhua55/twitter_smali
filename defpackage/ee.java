package defpackage;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: ee */
class ee implements Callable<Void> {
    final /* synthetic */ eb a;

    ee(eb ebVar) {
        this.a = ebVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.a.g.b();
        this.a.b.a();
        return null;
    }
}
