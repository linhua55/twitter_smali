package com.twitter.android.people;

import android.content.Context;
import cby;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ac implements c<cby> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<Session> c;

    static {
        a = !ac.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ac(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public cby a() {
        return (cby) d.a(aa.a((Context) this.b.b(), (Session) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<cby> a(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new ac(cxj_android_content_Context, cxj_com_twitter_library_client_Session);
    }
}
