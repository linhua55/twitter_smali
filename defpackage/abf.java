package defpackage;

import cjl;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: abf */
class abf implements Callable<cjl> {
    final /* synthetic */ String a;
    final /* synthetic */ abd b;

    abf(abd abd, String str) {
        this.b = abd;
        this.a = str;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public cjl a() throws Exception {
        return this.b.b(this.a);
    }
}
