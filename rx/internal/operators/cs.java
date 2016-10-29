package rx.internal.operators;

import rx.am;
import rx.s;

/* compiled from: Twttr */
final class cs<T> extends am<T> {
    private final long a;
    private final ct<T> b;

    cs(long j, ct<T> ctVar) {
        this.a = j;
        this.b = ctVar;
    }

    public void a(s sVar) {
        this.b.a(sVar, this.a);
    }

    public void b_(T t) {
        this.b.a((Object) t, this);
    }

    public void a(Throwable th) {
        this.b.a(th, this.a);
    }

    public void bs_() {
        this.b.b(this.a);
    }
}
