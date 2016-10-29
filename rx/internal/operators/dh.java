package rx.internal.operators;

import rx.am;

/* compiled from: Twttr */
class dh extends am<T> {
    final /* synthetic */ am a;
    final /* synthetic */ dg b;

    dh(dg dgVar, am amVar, boolean z, am amVar2) {
        this.b = dgVar;
        this.a = amVar2;
        super(amVar, z);
    }

    public void b_(T t) {
        this.a.b_(t);
    }

    public void a(Throwable th) {
        try {
            this.a.a(th);
        } finally {
            this.a.K_();
        }
    }

    public void bs_() {
        try {
            this.a.bs_();
        } finally {
            this.a.K_();
        }
    }
}
