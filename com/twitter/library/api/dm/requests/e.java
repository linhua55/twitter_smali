package com.twitter.library.api.dm.requests;

import android.content.Context;
import android.database.Cursor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.model.dms.DMPaginationStatus;
import defpackage.bia;

/* compiled from: Twttr */
public class e extends c<d> {
    private final String a;
    private long b;
    private boolean c;

    protected /* synthetic */ c f() {
        return g();
    }

    public e(Context context, Session session, String str) {
        super(context, e.class.getName(), session);
        this.b = -1;
        this.c = true;
        this.a = com.twitter.util.object.e.a(str);
    }

    public boolean e() {
        return this.c;
    }

    protected boolean b(aa aaVar) {
        boolean z = true;
        Cursor d = S().d(this.a);
        if (d != null) {
            if (d.moveToFirst()) {
                this.b = d.getLong(0);
                if (d.getInt(1) == 0) {
                    z = false;
                }
                this.c = z;
                z = this.c;
            }
            d.close();
        }
        return z;
    }

    protected com.twitter.library.service.e b() {
        com.twitter.library.service.e d = K().a("dm", "conversation", this.a).b().a("dm_users", true).d();
        if (this.b != -1) {
            d.a("max_id", this.b);
        }
        return d;
    }

    protected d g() {
        return new d();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, d dVar) {
        if (httpOperation.k()) {
            bia bia = (bia) dVar.b();
            com.twitter.library.provider.e T = T();
            di S = S();
            S.a(bia, false, T);
            this.c = DMPaginationStatus.c == ((bia) com.twitter.util.object.e.a(bia)).b;
            S.c(this.a, this.c, T);
            T.a();
            return;
        }
        this.c = false;
    }
}
