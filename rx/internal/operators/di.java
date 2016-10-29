package rx.internal.operators;

import rx.am;

/* compiled from: Twttr */
class di extends am<E> {
    final /* synthetic */ am a;
    final /* synthetic */ dg b;

    di(dg dgVar, am amVar) {
        this.b = dgVar;
        this.a = amVar;
    }

    public void c() {
        a(Long.MAX_VALUE);
    }

    public void bs_() {
        this.a.bs_();
    }

    public void a(Throwable th) {
        this.a.a(th);
    }

    public void b_(E e) {
        bs_();
    }
}
