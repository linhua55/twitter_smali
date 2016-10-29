package rx.internal.operators;

import rx.am;
import rx.s;

/* compiled from: Twttr */
class cm extends am<T> {
    final /* synthetic */ Thread a;
    final /* synthetic */ cl b;

    cm(cl clVar, am amVar, Thread thread) {
        this.b = clVar;
        this.a = thread;
        super(amVar);
    }

    public void b_(T t) {
        this.b.a.b_(t);
    }

    public void a(Throwable th) {
        try {
            this.b.a.a(th);
        } finally {
            this.b.b.K_();
        }
    }

    public void bs_() {
        try {
            this.b.a.bs_();
        } finally {
            this.b.b.K_();
        }
    }

    public void a(s sVar) {
        this.b.a.a(new cn(this, sVar));
    }
}
