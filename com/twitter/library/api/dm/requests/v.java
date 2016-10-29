package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.util.object.e;
import java.util.UUID;

/* compiled from: Twttr */
public class v extends c<t> {
    private final String a;

    protected /* synthetic */ c f() {
        return e();
    }

    public v(Context context, Session session, String str) {
        super(context, v.class.getName(), session);
        this.a = e.a(str);
    }

    protected com.twitter.library.service.e b() {
        return K().a(RequestMethod.b).a("dm", "conversation", this.a, "update_avatar").a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        if (httpOperation.k()) {
            new f(this.p, N(), this.a).P();
        }
    }
}
