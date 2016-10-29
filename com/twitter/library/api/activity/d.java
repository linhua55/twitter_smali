package com.twitter.library.api.activity;

import android.content.Context;
import bbn;
import beb;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.ActivitySummary;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.s;

/* compiled from: Twttr */
public class d extends beb<as> {
    private final long a;
    private ActivitySummary b;

    protected /* synthetic */ c f() {
        return g();
    }

    public d(Context context, Session session, long j) {
        super(context, d.class.getName(), session);
        this.a = j;
        k v = v();
        if (v == null) {
            v = new k().a(new l(context));
            a(v);
        }
        v.a(new s());
    }

    public ActivitySummary e() {
        return this.b;
    }

    protected e b() {
        return K().a(RequestMethod.a).a("statuses", Long.valueOf(this.a), "activity", "summary").a("include_user_entities", true).c().e().d();
    }

    protected as g() {
        return as.a(14);
    }

    public void b(ab<aa> abVar) {
        af.a(this.p, "app:twitter_service:tweet_activity:connect", N().c, d((aa) abVar.b()), abVar, true);
    }

    public void a(ab<aa> abVar) {
        af.a(this.p, "app:twitter_service:tweet_activity:connect", N().c, d((aa) abVar.b()), abVar, false);
    }

    protected boolean d(aa aaVar) {
        if (aaVar.b() || aaVar.d() == 404) {
            return true;
        }
        return false;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.b = (ActivitySummary) asVar.b();
            try {
                com.twitter.library.provider.e T = T();
                S().a(this.a, Integer.parseInt(this.b.a), Integer.parseInt(this.b.b), T);
                T.a();
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
    }
}
