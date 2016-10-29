package rx.internal.operators;

import defpackage.dax;
import defpackage.dbj;
import rx.am;
import rx.exceptions.e;
import rx.internal.producers.a;
import rx.o;
import rx.s;

/* compiled from: Twttr */
class bp extends am<T> {
    long a;
    final /* synthetic */ am b;
    final /* synthetic */ a c;
    final /* synthetic */ dbj d;
    final /* synthetic */ bm e;
    private boolean f;

    bp(bm bmVar, am amVar, a aVar, dbj dbj) {
        this.e = bmVar;
        this.b = amVar;
        this.c = aVar;
        this.d = dbj;
    }

    public void bs_() {
        if (!this.f) {
            this.f = true;
            this.b.bs_();
        }
    }

    public void a(Throwable th) {
        if (this.f) {
            e.a(th);
            dax.a().b().a(th);
            return;
        }
        this.f = true;
        try {
            K_();
            am bqVar = new bq(this);
            this.d.a(bqVar);
            long j = this.a;
            if (j != 0) {
                this.c.b(j);
            }
            ((o) this.e.a.a(th)).a(bqVar);
        } catch (Throwable th2) {
            e.a(th2, this.b);
        }
    }

    public void b_(T t) {
        if (!this.f) {
            this.a++;
            this.b.b_(t);
        }
    }

    public void a(s sVar) {
        this.c.a(sVar);
    }
}
