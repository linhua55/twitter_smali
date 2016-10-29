package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import java.util.UUID;

/* compiled from: Twttr */
public class aa extends c<t> {
    private String a;

    protected /* synthetic */ c f() {
        return e();
    }

    public aa(Context context, Session session) {
        super(context, aa.class.getName(), session);
    }

    protected e b() {
        return K().a(RequestMethod.b).a("dm", "update_last_seen_event_id").a("last_seen_event_id", this.a).a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected boolean b(com.twitter.library.service.aa aaVar) {
        com.twitter.library.provider.e T = T();
        di S = S();
        this.a = String.valueOf(S.c(null));
        String b = S.b(14, 0, N().c, "server");
        boolean a = S.a(14, 0, N().c, "local", this.a, T);
        long parseLong = b == null ? 0 : Long.parseLong(b);
        if (!a && Long.parseLong(this.a) <= parseLong) {
            return false;
        }
        T.a();
        return true;
    }

    public void a(ab<com.twitter.library.service.aa> abVar) {
        HttpOperation f = ((com.twitter.library.service.aa) abVar.b()).f();
        if (f != null && f.k()) {
            S().a(14, 0, N().c, "server", this.a, null);
        }
    }
}
