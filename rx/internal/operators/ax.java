package rx.internal.operators;

import defpackage.cyr;

/* compiled from: Twttr */
class ax implements cyr {
    final /* synthetic */ aw a;

    ax(aw awVar) {
        this.a = awVar;
    }

    public void a() {
        this.a.g = true;
        if (this.a.h.getAndIncrement() == 0) {
            this.a.e();
        }
    }
}
