package com.twitter.library.service;

import com.twitter.library.client.Session;
import com.twitter.model.account.OAuthToken;

/* compiled from: Twttr */
public final class ab {
    public final String a;
    public final boolean b;
    public final long c;
    public final OAuthToken d;
    public final String e;

    public ab(Session session) {
        this.a = session.c();
        this.c = session.g();
        this.d = session.h();
        this.e = session.e();
        this.b = session.d();
    }

    public ab(long j, String str, OAuthToken oAuthToken, boolean z) {
        this.a = null;
        this.c = j;
        this.e = str;
        this.d = oAuthToken;
        this.b = z;
    }

    public boolean a(Session session) {
        return session.c().equals(this.a);
    }
}
