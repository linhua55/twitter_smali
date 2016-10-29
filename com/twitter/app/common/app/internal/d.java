package com.twitter.app.common.app.internal;

import android.accounts.AccountManager;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class d implements c<com.twitter.app.common.account.d> {
    static final /* synthetic */ boolean a;
    private final a b;
    private final cxj<AccountManager> c;

    static {
        a = !d.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public d(a aVar, cxj<AccountManager> cxj_android_accounts_AccountManager) {
        if (a || aVar != null) {
            this.b = aVar;
            if (a || cxj_android_accounts_AccountManager != null) {
                this.c = cxj_android_accounts_AccountManager;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public com.twitter.app.common.account.d a() {
        return (com.twitter.app.common.account.d) dagger.internal.d.a(this.b.a((AccountManager) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<com.twitter.app.common.account.d> a(a aVar, cxj<AccountManager> cxj_android_accounts_AccountManager) {
        return new d(aVar, cxj_android_accounts_AccountManager);
    }
}
