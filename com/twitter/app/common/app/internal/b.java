package com.twitter.app.common.app.internal;

import android.accounts.AccountManager;
import android.content.Context;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class b implements c<AccountManager> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public b(cxj<Context> cxj_android_content_Context) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            return;
        }
        throw new AssertionError();
    }

    public AccountManager a() {
        return (AccountManager) d.a(a.d((Context) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<AccountManager> a(cxj<Context> cxj_android_content_Context) {
        return new b(cxj_android_content_Context);
    }
}
