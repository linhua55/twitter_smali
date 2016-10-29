package com.twitter.app.common.app.internal;

import android.content.Context;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.library.provider.v;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class z implements c<v> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<UserIdentifier> c;

    static {
        a = !z.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public z(cxj<Context> cxj_android_content_Context, cxj<UserIdentifier> cxj_com_twitter_app_common_account_UserIdentifier) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            if (a || cxj_com_twitter_app_common_account_UserIdentifier != null) {
                this.c = cxj_com_twitter_app_common_account_UserIdentifier;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public v a() {
        return (v) d.a(y.b((Context) this.b.b(), (UserIdentifier) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<v> a(cxj<Context> cxj_android_content_Context, cxj<UserIdentifier> cxj_com_twitter_app_common_account_UserIdentifier) {
        return new z(cxj_android_content_Context, cxj_com_twitter_app_common_account_UserIdentifier);
    }
}
