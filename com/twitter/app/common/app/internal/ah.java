package com.twitter.app.common.app.internal;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ah implements c<Session> {
    static final /* synthetic */ boolean a;
    private final cxj<UserIdentifier> b;
    private final cxj<bg> c;

    static {
        a = !ah.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ah(cxj<UserIdentifier> cxj_com_twitter_app_common_account_UserIdentifier, cxj<bg> cxj_com_twitter_library_client_bg) {
        if (a || cxj_com_twitter_app_common_account_UserIdentifier != null) {
            this.b = cxj_com_twitter_app_common_account_UserIdentifier;
            if (a || cxj_com_twitter_library_client_bg != null) {
                this.c = cxj_com_twitter_library_client_bg;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public Session a() {
        return (Session) d.a(ag.a((UserIdentifier) this.b.b(), (bg) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Session> a(cxj<UserIdentifier> cxj_com_twitter_app_common_account_UserIdentifier, cxj<bg> cxj_com_twitter_library_client_bg) {
        return new ah(cxj_com_twitter_app_common_account_UserIdentifier, cxj_com_twitter_library_client_bg);
    }
}
