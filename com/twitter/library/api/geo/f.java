package com.twitter.library.api.geo;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.model.core.cd;
import com.twitter.model.geo.d;

/* compiled from: Twttr */
public class f extends b<t<g, cd>> {
    private final d a;
    private g b;

    protected /* synthetic */ c f() {
        return b();
    }

    public f(Context context, Session session, d dVar) {
        super(context, f.class.getName(), session);
        this.a = dVar;
    }

    protected com.twitter.library.service.d a() {
        return K().a("geo", "reverse_geocode").a("lat", this.a.a()).a("long", this.a.b()).a("granularity", "city").a();
    }

    protected h b() {
        return new h();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<g, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            this.b = (g) tVar.b();
        }
    }

    public g e() {
        return this.b;
    }
}
