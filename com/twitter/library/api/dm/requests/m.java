package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.util.object.e;
import defpackage.biw;
import java.util.UUID;

/* compiled from: Twttr */
public class m extends c<t> {
    private static final String a;
    private final String b;
    private final boolean c;

    protected /* synthetic */ c f() {
        return e();
    }

    static {
        a = m.class.getName();
    }

    public m(Context context, Session session, String str, boolean z) {
        super(context, a, session);
        this.b = e.a(str);
        this.c = z;
    }

    public m(Context context, ab abVar, String str, boolean z) {
        super(context, a, abVar);
        this.b = e.a(str);
        this.c = z;
    }

    protected boolean b(aa aaVar) {
        boolean z = true;
        di S = S();
        com.twitter.library.provider.e T = T();
        if (biw.a(this.b) || this.c) {
            S.b(this.b, T);
            aaVar.a(true);
            z = false;
        } else {
            S.b(this.b, true, T);
        }
        T.a();
        return z;
    }

    protected com.twitter.library.service.e b() {
        return K().a(RequestMethod.POST).a(new Object[]{"dm", "conversation", e.b(this.b, "-1"), "delete"}).a("last_event_id", S().a(this.b, true)).a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        di S = S();
        com.twitter.library.provider.e T = T();
        if (httpOperation.l().a == 404 || httpOperation.l().a == 401) {
            aaVar.a(true);
        }
        if (aaVar.b()) {
            S.b(this.b, T);
        } else {
            S.b(this.b, false, T);
        }
        T.a();
    }
}
