package defpackage;

import cgd;
import java.util.concurrent.Callable;
import sb;

/* compiled from: Twttr */
/* renamed from: sd */
class sd implements Callable<cgd> {
    final /* synthetic */ long a;
    final /* synthetic */ sb b;

    sd(sb sbVar, long j) {
        this.b = sbVar;
        this.a = j;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public cgd a() throws Exception {
        return sb.a(this.b, this.a);
    }
}
