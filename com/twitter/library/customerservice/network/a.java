package com.twitter.library.customerservice.network;

import android.content.Context;
import cly;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
public class a extends b {
    private final long a;
    private final long b;
    private final String c;
    private final cly g;

    public a(Context context, Session session, FeedbackRequestParams feedbackRequestParams) {
        super(context, a.class.getName(), session);
        this.a = feedbackRequestParams.a();
        this.b = feedbackRequestParams.b();
        this.c = feedbackRequestParams.c();
        this.g = feedbackRequestParams.d();
    }

    protected d a() {
        return K().a(RequestMethod.b).b("feedback", "dismiss").b(this.a + ".json").a();
    }

    protected boolean b(aa aaVar) {
        e T = T();
        S().a(this.a, this.b, this.c, this.g, T);
        T.a();
        return super.b(aaVar);
    }

    protected c f() {
        return null;
    }
}
