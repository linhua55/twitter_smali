package com.twitter.android.interestpicker;

import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class ai implements c<x> {
    static final /* synthetic */ boolean a;
    private final cxj<aj> b;
    private final cxj<Session> c;
    private final cxj<l> d;

    static {
        a = !ai.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ai(cxj<aj> cxj_com_twitter_android_interestpicker_aj, cxj<Session> cxj_com_twitter_library_client_Session, cxj<l> cxj_com_twitter_library_client_l) {
        if (a || cxj_com_twitter_android_interestpicker_aj != null) {
            this.b = cxj_com_twitter_android_interestpicker_aj;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                if (a || cxj_com_twitter_library_client_l != null) {
                    this.d = cxj_com_twitter_library_client_l;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public x a() {
        return new x((aj) this.b.b(), (Session) this.c.b(), (l) this.d.b());
    }

    public static c<x> a(cxj<aj> cxj_com_twitter_android_interestpicker_aj, cxj<Session> cxj_com_twitter_library_client_Session, cxj<l> cxj_com_twitter_library_client_l) {
        return new ai(cxj_com_twitter_android_interestpicker_aj, cxj_com_twitter_library_client_Session, cxj_com_twitter_library_client_l);
    }
}
