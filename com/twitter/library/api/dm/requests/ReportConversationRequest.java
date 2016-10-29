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
public class ReportConversationRequest extends c<t> {
    private final String a;
    private final Type b;

    /* compiled from: Twttr */
    public enum Type {
        SPAM,
        ABUSE
    }

    protected /* synthetic */ c f() {
        return e();
    }

    public ReportConversationRequest(Context context, Session session, String str, Type type) {
        super(context, ReportDMRequest.class.getName(), session);
        this.a = e.a(str);
        this.b = (Type) e.a(type);
    }

    protected boolean b(aa aaVar) {
        com.twitter.library.provider.e T = T();
        S().b(this.a, true, T);
        T.a();
        return true;
    }

    protected com.twitter.library.service.e b() {
        return K().a(RequestMethod.b).a("direct_messages", "report_spam").a("conversation_id", this.a).a("report_as", this.b.name().toLowerCase()).a("request_id", UUID.randomUUID().toString());
    }

    protected t e() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        new m(this.p, N(), this.a, true).P();
    }
}
