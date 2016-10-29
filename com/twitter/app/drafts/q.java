package com.twitter.app.drafts;

import com.twitter.library.client.bg;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class q implements c<p> {
    static final /* synthetic */ boolean a;
    private final cxj<bg> b;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public q(cxj<bg> cxj_com_twitter_library_client_bg) {
        if (a || cxj_com_twitter_library_client_bg != null) {
            this.b = cxj_com_twitter_library_client_bg;
            return;
        }
        throw new AssertionError();
    }

    public p a() {
        return new p((bg) this.b.b());
    }

    public static c<p> a(cxj<bg> cxj_com_twitter_library_client_bg) {
        return new q(cxj_com_twitter_library_client_bg);
    }
}
