package com.twitter.library.api.dm.requests;

import android.content.Context;
import bia;
import com.twitter.android.mx;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.database.dm.a;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.dms.o;
import com.twitter.util.aj;
import defpackage.biw;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class l extends c<d> {
    private static final String a;

    protected /* synthetic */ c f() {
        return e();
    }

    static {
        a = l.class.getName();
    }

    public l(Context context, Session session) {
        super(context, a, session);
    }

    public l(Context context, ab abVar) {
        super(context, a, abVar);
    }

    protected e b() {
        di S = S();
        long j = N().c;
        e d = K().a(new Object[]{"dm", "user_updates"}).b().a("dm_users", true).a("include_groups", true).d();
        if (!biw.a(this.p)) {
            S.a(null);
            biw.b(this.p);
        }
        if (S.i() < 2000) {
            CharSequence a = S.a(12, 0, j);
            if (aj.b(a)) {
                d.a("inbox_min_id", S.a(13, 0, j)).a("cursor", a);
            }
        }
        return d;
    }

    protected d e() {
        return new d();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, d dVar) {
        if (httpOperation.k()) {
            bia bia = (bia) dVar.b();
            if (bia != null) {
                com.twitter.library.provider.e T = T();
                long j = N().c;
                di S = S();
                switch (bia.d()) {
                    case mx.View_android_theme /*0*/:
                        S.a(bia, T);
                        S.a(13, 0, j, 0, String.valueOf(bia.e()));
                        break;
                    case WireMessage.WIRE_CHAT /*1*/:
                        a(bia, S, T);
                        break;
                }
                T.a();
                S.a(12, 0, j, 0, bia.a);
                a.a(this.p, j).a(bia);
                aaVar.c.putInt("new_messages_count", biw.a(bia.a()));
            }
        }
    }

    void a(bia bia, di diVar, com.twitter.library.provider.e eVar) {
        diVar.a((o) bia, true, eVar);
    }
}
