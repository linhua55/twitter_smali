package com.twitter.library.api;

import android.content.Context;
import beb;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public abstract class l extends beb<as> {
    protected l(Context context, Session session, String str) {
        super(context, str, session);
    }

    protected e b() {
        e a = K().b("users").a("suggestions");
        an.a(this.p).a(a);
        return a;
    }
}
