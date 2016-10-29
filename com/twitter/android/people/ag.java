package com.twitter.android.people;

import ala;
import android.content.Context;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ag implements c<ala> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<Session> c;

    static {
        a = !ag.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ag(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
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

    public ala a() {
        return (ala) d.a(aa.b((Context) this.b.b(), (Session) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<ala> a(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new ag(cxj_android_content_Context, cxj_com_twitter_library_client_Session);
    }
}
