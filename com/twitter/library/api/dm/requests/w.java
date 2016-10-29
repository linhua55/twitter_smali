package com.twitter.library.api.dm.requests;

import android.content.Context;
import android.database.Cursor;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.model.dms.ae;
import com.twitter.util.serialization.m;
import defpackage.bii;
import defpackage.bik;
import defpackage.bim;

/* compiled from: Twttr */
public class w extends SendDMRequest {
    private final long i;
    private final int j;

    public w(Context context, Session session, long j, boolean z) {
        super(context, w.class.getName(), session);
        this.i = j;
        if (z) {
            this.j = 0;
        } else {
            this.j = 1;
        }
        a(z);
    }

    public boolean e() {
        return true;
    }

    protected void a(aa aaVar) {
        Cursor h = this.b.h(this.i);
        if (h != null) {
            if (h.moveToNext()) {
                bii bii = (bii) ((bik) ((bik) ((bik) ((bik) new bik().a((Object) (bim) m.a(h.getBlob(5), bim.i))).b(h.getLong(0))).a(h.getLong(2))).b(h.getString(1))).q();
                this.b.a(bii, this.j, this.c);
                this.c.a();
                a(bii, bii.C(), aaVar, bii.u() ? (ae) bii.n() : null);
            }
            h.close();
        }
    }
}
