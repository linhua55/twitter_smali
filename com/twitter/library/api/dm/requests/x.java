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
public class x extends c<t> {
    private final String a;
    private final boolean b;

    protected /* synthetic */ c f() {
        return e();
    }

    public x(Context context, Session session, String str, boolean z) {
        super(context, x.class.getName(), session);
        this.a = e.a(str);
        this.b = z;
    }

    protected com.twitter.library.service.e b() {
        String str = this.b ? "disable_notifications" : "enable_notifications";
        return K().a(RequestMethod.b).a("dm", "conversation", this.a, str).a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        if (aaVar.b()) {
            com.twitter.library.provider.e T = T();
            S().a(this.a, this.b, T);
            T.a();
        }
    }
}
