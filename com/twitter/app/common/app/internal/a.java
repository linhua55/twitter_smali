package com.twitter.app.common.app.internal;

import android.accounts.AccountManager;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import com.twitter.app.common.account.d;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.n;
import com.twitter.app.common.util.r;
import com.twitter.config.AppConfig;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.c;
import com.twitter.platform.t;
import cwe;
import defpackage.cwf;

/* compiled from: Twttr */
public class a {
    protected final long a;
    private final Application b;

    public a(Application application, long j) {
        this.b = application;
        this.a = j;
    }

    Application a() {
        return this.b;
    }

    static Context a(Application application) {
        return application.getApplicationContext();
    }

    static ContentResolver a(Context context) {
        return context.getContentResolver();
    }

    static cwf b(Context context) {
        return new cwe(context);
    }

    static PlatformContext c(Context context) {
        return new c(context);
    }

    static t a(PlatformContext platformContext) {
        return platformContext.a();
    }

    protected AppConfig b() {
        throw new UnsupportedOperationException("Implement provideAppConfig() in a subclass.");
    }

    static com.twitter.app.common.util.c b(Application application) {
        return new com.twitter.app.common.util.c(application);
    }

    static f a(com.twitter.app.common.util.c cVar) {
        return new f(cVar);
    }

    static n b(com.twitter.app.common.util.c cVar) {
        return new n(cVar);
    }

    static r c() {
        return new r();
    }

    static AccountManager d(Context context) {
        return AccountManager.get(context);
    }

    protected d a(AccountManager accountManager) {
        throw new UnsupportedOperationException("Implement provideAppAccountManager() in a subclass.");
    }
}
