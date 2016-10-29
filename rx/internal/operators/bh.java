package rx.internal.operators;

import rx.am;
import rx.internal.util.s;

/* compiled from: Twttr */
final class bh<T> extends am<T> {
    static final int f;
    final bi<T> a;
    final long b;
    volatile boolean c;
    volatile s d;
    int e;

    static {
        f = s.c / 4;
    }

    public bh(bi<T> biVar, long j) {
        this.a = biVar;
        this.b = j;
    }

    public void c() {
        this.e = s.c;
        a((long) s.c);
    }

    public void b_(T t) {
        this.a.a(this, (Object) t);
    }

    public void a(Throwable th) {
        this.c = true;
        this.a.d().offer(th);
        this.a.g();
    }

    public void bs_() {
        this.c = true;
        this.a.g();
    }

    public void b(long j) {
        int i = this.e - ((int) j);
        if (i > f) {
            this.e = i;
            return;
        }
        this.e = s.c;
        i = s.c - i;
        if (i > 0) {
            a((long) i);
        }
    }
}
