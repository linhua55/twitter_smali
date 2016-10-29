package com.twitter.android.smartfollow.interestsearch;

import android.content.Context;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import te;

/* compiled from: Twttr */
public final class i implements c<te> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<Session> c;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public i(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
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

    public te a() {
        return (te) d.a(g.a((Context) this.b.b(), (Session) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<te> a(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new i(cxj_android_content_Context, cxj_com_twitter_library_client_Session);
    }
}
