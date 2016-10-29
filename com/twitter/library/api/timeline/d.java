package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import defpackage.cni;

/* compiled from: Twttr */
public class d extends a {
    private final long b;
    private cni c;
    private Boolean g;

    public d(Context context, Session session, long j, long j2) {
        this(context, new ab(session), j, j2, di.a(context, session.g()), v.a(cm.class));
    }

    protected d(Context context, ab abVar, long j, long j2, di diVar, t<cm, cd> tVar) {
        super(context, abVar, j, true, diVar, tVar);
        this.b = j2;
        this.g = null;
        a("tweet_type", "organic");
        a(new com.twitter.library.service.t());
    }

    protected com.twitter.library.service.d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"favorites", "create"}).a("send_error_codes", true).a("id", this.b);
        if (!(this.c == null || this.c.c == null)) {
            a.a("impression_id", this.c.c);
            if (this.c.c()) {
                a.a("earned", true);
            }
        }
        a.a("include_entities", true).a("include_media_features", true).b().d().c();
        return a.a();
    }

    public String e() {
        return "app:twitter_service:favorite:create";
    }

    public d a(cni cni) {
        this.c = cni;
        if (this.c != null) {
            a("tweet_type", "ad");
        }
        return this;
    }

    public d a(Boolean bool) {
        this.g = bool;
        if (this.g != null) {
            a("has_media", this.g.booleanValue() ? "true" : "false");
        }
        return this;
    }

    protected boolean d(com.twitter.internal.android.service.ab<aa> abVar) {
        if (super.d(abVar)) {
            return true;
        }
        aa aaVar = (aa) abVar.b();
        boolean z = aaVar.d() == 404 || aaVar.d() == 403;
        return z;
    }
}
