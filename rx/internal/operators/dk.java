package rx.internal.operators;

import rx.am;

/* compiled from: Twttr */
class dk extends am<T> {
    final /* synthetic */ am a;
    final /* synthetic */ dj b;
    private long c;

    dk(dj djVar, am amVar, am amVar2) {
        this.b = djVar;
        this.a = amVar2;
        super(amVar);
        this.c = 0;
    }

    public void c() {
        a(Long.MAX_VALUE);
    }

    public void b_(T t) {
        long b = this.b.b.b();
        if (this.c == 0 || b - this.c >= this.b.a) {
            this.c = b;
            this.a.b_(t);
        }
    }

    public void bs_() {
        this.a.bs_();
    }

    public void a(Throwable th) {
        this.a.a(th);
    }
}
