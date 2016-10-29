package defpackage;

import cly;
import com.twitter.library.provider.di;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: bzw */
class bzw implements Callable<Void> {
    final /* synthetic */ di a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ cly d;
    final /* synthetic */ bzv e;

    bzw(bzv bzv, di diVar, long j, long j2, cly cly) {
        this.e = bzv;
        this.a = diVar;
        this.b = j;
        this.c = j2;
        this.d = cly;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.a.a(this.b, this.c, this.d);
        return null;
    }
}
