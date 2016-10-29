package com.twitter.android.communities;

import android.app.Application;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class v implements c<g> {
    static final /* synthetic */ boolean a;
    private final cxj<Application> b;
    private final cxj<Session> c;
    private final cxj<az> d;

    static {
        a = !v.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public v(cxj<Application> cxj_android_app_Application, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az) {
        if (a || cxj_android_app_Application != null) {
            this.b = cxj_android_app_Application;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                if (a || cxj_com_twitter_library_client_az != null) {
                    this.d = cxj_com_twitter_library_client_az;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public g a() {
        return (g) d.a(t.a((Application) this.b.b(), (Session) this.c.b(), (az) this.d.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<g> a(cxj<Application> cxj_android_app_Application, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az) {
        return new v(cxj_android_app_Application, cxj_com_twitter_library_client_Session, cxj_com_twitter_library_client_az);
    }
}
