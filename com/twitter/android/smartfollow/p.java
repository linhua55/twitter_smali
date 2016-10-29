package com.twitter.android.smartfollow;

import android.app.Application;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class p implements c<l> {
    static final /* synthetic */ boolean a;
    private final cxj<Application> b;
    private final cxj<Session> c;

    static {
        a = !p.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public p(cxj<Application> cxj_android_app_Application, cxj<Session> cxj_com_twitter_library_client_Session) {
        if (a || cxj_android_app_Application != null) {
            this.b = cxj_android_app_Application;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public l a() {
        return (l) d.a(o.a((Application) this.b.b(), (Session) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<l> a(cxj<Application> cxj_android_app_Application, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new p(cxj_android_app_Application, cxj_com_twitter_library_client_Session);
    }
}
