package defpackage;

import cjl;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: abe */
class abe implements Callable<cjl> {
    final /* synthetic */ cjl a;
    final /* synthetic */ abd b;

    abe(abd abd, cjl cjl) {
        this.b = abd;
        this.a = cjl;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public cjl a() throws Exception {
        this.b.b(this.a);
        return this.a;
    }
}
