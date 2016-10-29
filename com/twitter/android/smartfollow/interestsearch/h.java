package com.twitter.android.smartfollow.interestsearch;

import android.content.Context;
import com.twitter.android.interestpicker.ap;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import te;

/* compiled from: Twttr */
public final class h implements c<ap> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<Session> c;
    private final cxj<te> d;

    static {
        a = !h.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public h(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<te> cxj_te) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                if (a || cxj_te != null) {
                    this.d = cxj_te;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public ap a() {
        return (ap) d.a(g.a((Context) this.b.b(), (Session) this.c.b(), (te) this.d.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<ap> a(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<te> cxj_te) {
        return new h(cxj_android_content_Context, cxj_com_twitter_library_client_Session, cxj_te);
    }
}
