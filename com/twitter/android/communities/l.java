package com.twitter.android.communities;

import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.library.provider.di;
import com.twitter.platform.t;
import defpackage.avn;
import defpackage.avo;
import defpackage.avp;
import defpackage.avq;
import defpackage.cho;
import defpackage.chp;

/* compiled from: Twttr */
public class l implements k {
    private final com.twitter.database.model.l a;
    private final t b;
    private final d c;

    public l(di diVar, t tVar, d dVar) {
        this.a = diVar.b();
        this.b = tVar;
        this.c = dVar;
    }

    public void a(cho cho) {
        k b = this.a.c(avp.class).b();
        ((avq) b.d).a(cho.a).a(cho.b).b(cho.c).c(cho.d).b(this.b.a());
        b.b();
    }

    public cho a(long j) {
        j a = ((avn) this.a.a(avn.class)).f().a("community_id=?", new String[]{String.valueOf(j)});
        try {
            if (a.b() && this.c.a((avo) a.a)) {
                cho cho = (cho) new chp().a(((avo) a.a).b()).a(((avo) a.a).d()).b(((avo) a.a).e()).c(((avo) a.a).f()).q();
                return cho;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }
}
