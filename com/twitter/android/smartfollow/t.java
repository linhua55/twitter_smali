package com.twitter.android.smartfollow;

import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class t implements c<Session> {
    static final /* synthetic */ boolean a;
    private final cxj<bg> b;

    static {
        a = !t.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t(cxj<bg> cxj_com_twitter_library_client_bg) {
        if (a || cxj_com_twitter_library_client_bg != null) {
            this.b = cxj_com_twitter_library_client_bg;
            return;
        }
        throw new AssertionError();
    }

    public Session a() {
        return (Session) d.a(o.a((bg) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Session> a(cxj<bg> cxj_com_twitter_library_client_bg) {
        return new t(cxj_com_twitter_library_client_bg);
    }
}
