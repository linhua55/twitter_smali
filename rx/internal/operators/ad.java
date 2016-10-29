package rx.internal.operators;

import defpackage.dap;
import defpackage.dbj;
import java.util.concurrent.TimeUnit;
import rx.am;
import rx.an;
import rx.q;
import rx.t;
import rx.u;

/* compiled from: Twttr */
public final class ad<T> implements q<T, T> {
    final long a;
    final TimeUnit b;
    final t c;

    public ad(long j, TimeUnit timeUnit, t tVar) {
        this.a = j;
        this.b = timeUnit;
        this.c = tVar;
    }

    public am<? super T> a(am<? super T> amVar) {
        u a = this.c.a();
        dap dap = new dap(amVar);
        dbj dbj = new dbj();
        dap.a((an) a);
        dap.a((an) dbj);
        return new ae(this, amVar, dbj, a, dap);
    }
}
