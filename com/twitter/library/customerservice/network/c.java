package com.twitter.library.customerservice.network;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;
import defpackage.cly;

/* compiled from: Twttr */
public class c extends b {
    private final long a;
    private final long b;
    private final String c;
    private final cly g;
    private int h;
    private String i;

    public c(Context context, Session session, FeedbackRequestParams feedbackRequestParams, int i) {
        this(context, session, feedbackRequestParams);
        this.h = i;
    }

    public c(Context context, Session session, FeedbackRequestParams feedbackRequestParams, String str) {
        this(context, session, feedbackRequestParams);
        this.i = str;
    }

    private c(Context context, Session session, FeedbackRequestParams feedbackRequestParams) {
        super(context, c.class.getName(), session);
        this.h = -1;
        this.i = null;
        this.a = feedbackRequestParams.a();
        this.b = feedbackRequestParams.b();
        this.c = feedbackRequestParams.c();
        this.g = feedbackRequestParams.d();
    }

    protected d a() {
        e b = K().a(RequestMethod.POST).b(new Object[]{"feedback", "submit"}).b(new Object[]{this.a + ".json"});
        if (this.h != -1) {
            b.a("score", (long) this.h);
        }
        if (aj.b(this.i)) {
            b.a("text", this.i);
        }
        return b.a();
    }

    protected com.twitter.library.service.c f() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, com.twitter.library.service.c cVar) {
        super.a(httpOperation, aaVar, cVar);
        if (aaVar.d() == 409) {
            aaVar.a(true);
        }
        if (httpOperation.k() || aaVar.b()) {
            com.twitter.library.provider.e T = T();
            S().a(this.a, this.b, this.c, this.g, T);
            T.a();
        }
    }
}
