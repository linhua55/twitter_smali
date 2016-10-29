package rx.internal.schedulers;

import defpackage.cyr;
import defpackage.dbh;
import rx.an;

/* compiled from: Twttr */
class q implements cyr {
    final /* synthetic */ dbh a;
    final /* synthetic */ cyr b;
    final /* synthetic */ an c;
    final /* synthetic */ o d;

    q(o oVar, dbh dbh, cyr cyr, an anVar) {
        this.d = oVar;
        this.a = dbh;
        this.b = cyr;
        this.c = anVar;
    }

    public void a() {
        if (!this.a.b()) {
            an a = this.d.a(this.b);
            this.a.a(a);
            if (a.getClass() == ScheduledAction.class) {
                ((ScheduledAction) a).a(this.c);
            }
        }
    }
}
