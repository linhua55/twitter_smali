package rx.internal.operators;

import rx.s;

/* compiled from: Twttr */
class cn implements s {
    final /* synthetic */ s a;
    final /* synthetic */ cm b;

    cn(cm cmVar, s sVar) {
        this.b = cmVar;
        this.a = sVar;
    }

    public void a(long j) {
        if (this.b.a == Thread.currentThread()) {
            this.a.a(j);
        } else {
            this.b.b.b.a(new co(this, j));
        }
    }
}
