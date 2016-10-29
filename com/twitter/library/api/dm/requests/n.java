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
import com.twitter.library.service.e;
import java.util.UUID;

/* compiled from: Twttr */
public class n extends c<t> {
    private final long a;

    protected /* synthetic */ c f() {
        return e();
    }

    public n(Context context, Session session, long j) {
        super(context, n.class.getName(), session);
        this.a = j;
    }

    public n(Context context, ab abVar, long j) {
        super(context, n.class.getName(), abVar);
        this.a = j;
    }

    protected e b() {
        return K().a(RequestMethod.b).a("dm", "destroy").a("dm_id", this.a).a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        di S = S();
        com.twitter.library.provider.e T = T();
        if (httpOperation.k()) {
            S.e(this.a, T);
        } else if (httpOperation.l().a == 404) {
            S.e(this.a, T);
        }
        T.a();
    }
}
