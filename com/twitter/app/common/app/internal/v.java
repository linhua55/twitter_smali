package com.twitter.app.common.app.internal;

import android.accounts.AccountManager;
import android.app.Application;
import com.twitter.app.common.account.d;
import com.twitter.config.AppConfig;
import com.twitter.library.util.b;

/* compiled from: Twttr */
public class v extends a {
    public v(Application application, long j) {
        super(application, j);
    }

    protected AppConfig b() {
        return new u(this.a);
    }

    protected d a(AccountManager accountManager) {
        return new d(accountManager, b.a, new com.twitter.library.util.d());
    }
}
