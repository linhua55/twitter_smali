package rx;

import defpackage.cyr;
import defpackage.dbh;

/* compiled from: Twttr */
class i implements n {
    boolean a;
    final /* synthetic */ cyr b;
    final /* synthetic */ dbh c;
    final /* synthetic */ a d;

    i(a aVar, cyr cyr, dbh dbh) {
        this.d = aVar;
        this.b = cyr;
        this.c = dbh;
    }

    public void a() {
        if (!this.a) {
            this.a = true;
            try {
                this.b.a();
            } catch (Throwable th) {
                a.a.a(th);
                a.c(th);
            } finally {
                this.c.K_();
            }
        }
    }

    public void a(Throwable th) {
        a.a.a(th);
        this.c.K_();
        a.c(th);
    }

    public void a(an anVar) {
        this.c.a(anVar);
    }
}
