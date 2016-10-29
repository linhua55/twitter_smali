package rx.internal.operators;

import rx.am;
import rx.internal.util.s;

/* compiled from: Twttr */
final class do extends am {
    final s a;
    final /* synthetic */ Zip b;

    do(Zip zip) {
        this.b = zip;
        this.a = s.d();
    }

    public void c() {
        a((long) s.c);
    }

    public void b(long j) {
        a(j);
    }

    public void bs_() {
        this.a.f();
        this.b.a();
    }

    public void a(Throwable th) {
        this.b.child.a(th);
    }

    public void b_(Object obj) {
        try {
            this.a.a(obj);
        } catch (Throwable e) {
            a(e);
        }
        this.b.a();
    }
}
