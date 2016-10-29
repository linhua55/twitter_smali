package com.twitter.android.geo.places;

import android.content.Context;
import android.os.Bundle;
import com.twitter.library.api.geo.f;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.service.x;
import com.twitter.model.geo.d;

/* compiled from: Twttr */
class r implements bb {
    private final az a;
    private final Context b;
    private final Session c;
    private s d;

    r(az azVar, Context context, Session session) {
        this.a = azVar;
        this.b = context;
        this.c = session;
    }

    public void a(d dVar, s sVar) {
        this.d = sVar;
        this.a.a(new f(this.b, this.c, dVar), 0, (bb) this);
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        if (this.d != null) {
            this.d.a(((f) xVar).e());
        }
    }

    public void a() {
        this.d = null;
    }
}
