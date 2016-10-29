package rx.internal.operators;

import defpackage.cyr;
import rx.am;
import rx.exceptions.e;

/* compiled from: Twttr */
class u implements cyr {
    long a;
    final /* synthetic */ am b;
    final /* synthetic */ rx.u c;
    final /* synthetic */ t d;

    u(t tVar, am amVar, rx.u uVar) {
        this.d = tVar;
        this.b = amVar;
        this.c = uVar;
    }

    public void a() {
        try {
            am amVar = this.b;
            long j = this.a;
            this.a = 1 + j;
            amVar.b_(Long.valueOf(j));
        } catch (Throwable th) {
            this.c.K_();
        } finally {
            e.a(th, this.b);
        }
    }
}
