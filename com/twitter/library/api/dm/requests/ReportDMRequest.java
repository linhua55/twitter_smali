package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class ReportDMRequest extends c<t> {
    private final long a;
    private final Type b;

    /* compiled from: Twttr */
    public enum Type {
        SPAM,
        ABUSE,
        NOT_SPAM
    }

    protected /* synthetic */ c f() {
        return e();
    }

    public ReportDMRequest(Context context, Session session, long j, Type type) {
        super(context, ReportDMRequest.class.getName(), session);
        this.a = j;
        this.b = (Type) e.a(type);
    }

    protected com.twitter.library.service.e b() {
        return K().a(RequestMethod.b).a("direct_messages", "report_spam").a("dm_id", String.valueOf(this.a)).a("report_as", this.b.name().toLowerCase());
    }

    protected t e() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        di S = S();
        com.twitter.library.provider.e T = T();
        if (Type.NOT_SPAM == this.b) {
            S.a(this.a, false, T);
            T.a();
        } else if (httpOperation.k()) {
            S.e(this.a, T);
            T.a();
            new n(this.p, N(), this.a).P();
        }
    }
}
