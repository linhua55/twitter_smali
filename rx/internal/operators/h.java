package rx.internal.operators;

import rx.am;
import rx.s;

/* compiled from: Twttr */
final class h<T, R> extends am<R> {
    final i<T, R> a;
    long b;

    public h(i<T, R> iVar) {
        this.a = iVar;
    }

    public void a(s sVar) {
        this.a.d.a(sVar);
    }

    public void b_(R r) {
        this.b++;
        this.a.b((Object) r);
    }

    public void a(Throwable th) {
        this.a.a(th, this.b);
    }

    public void bs_() {
        this.a.c(this.b);
    }
}
