package defpackage;

import cgd;
import java.util.concurrent.Callable;
import sb;

/* compiled from: Twttr */
/* renamed from: sc */
class sc implements Callable<cgd> {
    final /* synthetic */ cgd a;
    final /* synthetic */ sb b;

    sc(sb sbVar, cgd cgd) {
        this.b = sbVar;
        this.a = cgd;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public cgd a() throws Exception {
        sb.a(this.b, this.a);
        sb.b(this.b, this.a);
        return this.a;
    }
}
