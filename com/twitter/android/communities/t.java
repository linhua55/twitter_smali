package com.twitter.android.communities;

import android.app.Application;
import com.twitter.app.common.inject.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;

/* compiled from: Twttr */
public class t extends d {
    private final c a;

    public t(c cVar) {
        this.a = cVar;
    }

    public c a() {
        return this.a;
    }

    static g a(Application application, Session session, az azVar) {
        return new g(application, session, azVar);
    }

    static com.twitter.app.common.di.d a(n nVar) {
        return nVar;
    }
}
