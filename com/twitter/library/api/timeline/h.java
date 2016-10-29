package com.twitter.library.api.timeline;

import android.content.Context;
import cni;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.ab;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;

/* compiled from: Twttr */
public class h extends a {
    private cni b;

    public h(Context context, Session session, long j) {
        this(context, new ab(session), j, di.a(context, session.g()), v.a(cm.class));
    }

    protected h(Context context, ab abVar, long j, di diVar, t<cm, cd> tVar) {
        super(context, abVar, j, false, diVar, tVar);
        a(new com.twitter.library.service.t());
    }

    protected d a() {
        e c = K().a(RequestMethod.b).a("favorites", "destroy").a(TtmlNode.ATTR_ID, g()).d().c();
        if (!(this.b == null || this.b.c == null)) {
            c.a("impression_id", this.b.c);
            if (this.b.c()) {
                c.a("earned", true);
            }
        }
        return c.a();
    }

    public h a(cni cni) {
        this.b = cni;
        return this;
    }

    public String e() {
        return "app:twitter_service:favorite:delete";
    }
}
