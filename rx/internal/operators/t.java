package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.am;
import rx.an;
import rx.p;

/* compiled from: Twttr */
public final class t implements p<Long> {
    final long a;
    final long b;
    final TimeUnit c;
    final rx.t d;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public t(long j, long j2, TimeUnit timeUnit, rx.t tVar) {
        this.a = j;
        this.b = j2;
        this.c = timeUnit;
        this.d = tVar;
    }

    public void a(am<? super Long> amVar) {
        an a = this.d.a();
        amVar.a(a);
        a.a(new u(this, amVar, a), this.a, this.b, this.c);
    }
}
