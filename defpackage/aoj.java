package defpackage;

import aoh;
import aok;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: aoj */
class aoj implements Callable<aof<C>> {
    final /* synthetic */ aof a;
    final /* synthetic */ Object b;
    final /* synthetic */ aok c;
    final /* synthetic */ aoh d;

    aoj(aoh aoh, aof aof, Object obj, aok aok) {
        this.d = aoh;
        this.a = aof;
        this.b = obj;
        this.c = aok;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public aof<C> a() throws Exception {
        aoh.a(this.d, this.a, this.b, this.c);
        return this.a;
    }
}
