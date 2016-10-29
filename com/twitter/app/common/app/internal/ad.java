package com.twitter.app.common.app.internal;

import android.content.Context;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.library.provider.di;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ad implements c<di> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<UserIdentifier> c;

    static {
        a = !ad.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ad(cxj<Context> cxj_android_content_Context, cxj<UserIdentifier> cxj_com_twitter_app_common_account_UserIdentifier) {
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

    public di a() {
        return (di) d.a(y.a((Context) this.b.b(), (UserIdentifier) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<di> a(cxj<Context> cxj_android_content_Context, cxj<UserIdentifier> cxj_com_twitter_app_common_account_UserIdentifier) {
        return new ad(cxj_android_content_Context, cxj_com_twitter_app_common_account_UserIdentifier);
    }
}
