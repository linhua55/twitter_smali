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
public class y extends c<t> {
    private final String a;
    private final String b;
    private String c;

    protected /* synthetic */ c f() {
        return e();
    }

    public y(Context context, Session session, String str, String str2) {
        super(context, y.class.getName(), session);
        this.a = e.a(str);
        this.b = (String) e.a(str2);
    }

    protected com.twitter.library.service.e b() {
        return K().a(RequestMethod.b).a("dm", "conversation", this.a, "update_name").a("name", this.b).a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected boolean b(aa aaVar) {
        com.twitter.library.provider.e T = T();
        this.c = S().a(this.a, this.b, T);
        T.a();
        return true;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        if (httpOperation.k()) {
            new f(this.p, N(), this.a).P();
            return;
        }
        com.twitter.library.provider.e T = T();
        S().a(this.a, this.c, T);
        T.a();
    }
}
