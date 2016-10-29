package rx.internal.operators;

import rx.am;
import rx.s;

/* compiled from: Twttr */
class cx extends am<T> {
    int a;
    boolean b;
    final /* synthetic */ am c;
    final /* synthetic */ cw d;

    cx(cw cwVar, am amVar) {
        this.d = cwVar;
        this.c = amVar;
    }

    public void bs_() {
        if (!this.b) {
            this.b = true;
            this.c.bs_();
        }
    }

    public void a(Throwable th) {
        if (!this.b) {
            this.b = true;
            try {
                this.c.a(th);
            } finally {
                K_();
            }
        }
    }

    public void b_(T t) {
        if (!b()) {
            int i = this.a;
            this.a = i + 1;
            if (i < this.d.a) {
                boolean z = this.a == this.d.a;
                this.c.b_(t);
                if (z && !this.b) {
                    this.b = true;
                    try {
                        this.c.bs_();
                    } finally {
                        K_();
                    }
                }
            }
        }
    }

    public void a(s sVar) {
        this.c.a(new cy(this, sVar));
    }
}
