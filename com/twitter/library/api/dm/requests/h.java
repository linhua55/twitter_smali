package com.twitter.library.api.dm.requests;

import android.content.Context;
import biw;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.database.dm.a;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.model.dms.DMPaginationStatus;
import com.twitter.model.dms.o;
import com.twitter.util.object.e;
import defpackage.bia;

/* compiled from: Twttr */
public class h extends c<d> {
    private static final String a;
    private boolean b;

    protected /* synthetic */ c f() {
        return g();
    }

    static {
        a = h.class.getName();
    }

    public h(Context context, Session session) {
        super(context, a, session);
        this.b = false;
    }

    public boolean e() {
        return !this.b;
    }

    protected boolean b(aa aaVar) {
        if (!e()) {
            aaVar.a(true);
            return false;
        } else if (biw.a(this.p)) {
            return true;
        } else {
            new l(this.p, (ab) e.a(N())).P();
            return true;
        }
    }

    protected com.twitter.library.service.e b() {
        com.twitter.library.service.e d = K().a("dm", "user_inbox").b().a("dm_users", true).a("include_groups", true).d();
        try {
            d.a("max_id", Long.parseLong(S().a(13, 0, N().c)));
        } catch (NumberFormatException e) {
        }
        return d;
    }

    protected d g() {
        return new d();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, d dVar) {
        boolean z = false;
        if (httpOperation.j()) {
            o oVar = (bia) dVar.b();
            com.twitter.library.provider.e T = T();
            di S = S();
            S.a(oVar, false, T);
            T.a();
            long j = N().c;
            S.a(13, 0, j, 0, String.valueOf(oVar.e()));
            a.a(this.p, j).a(oVar);
            if (DMPaginationStatus.b == oVar.b) {
                z = true;
            }
            this.b = z;
            return;
        }
        this.b = true;
    }
}
