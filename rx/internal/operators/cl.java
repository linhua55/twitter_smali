package rx.internal.operators;

import defpackage.cyr;
import rx.am;
import rx.u;

/* compiled from: Twttr */
class cl implements cyr {
    final /* synthetic */ am a;
    final /* synthetic */ u b;
    final /* synthetic */ ck c;

    cl(ck ckVar, am amVar, u uVar) {
        this.c = ckVar;
        this.a = amVar;
        this.b = uVar;
    }

    public void a() {
        this.c.b.a(new cm(this, this.a, Thread.currentThread()));
    }
}
