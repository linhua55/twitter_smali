package com.twitter.app.common.app;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.base.BaseApplication;
import com.twitter.util.m;
import com.twitter.util.object.b;
import defpackage.bbi;

/* compiled from: Twttr */
public abstract class InjectedApplication extends BaseApplication {
    protected abstract a a(long j);

    public void onCreate() {
        bbi.a(a(m.b()));
        o.a(a());
        super.onCreate();
        a.a().d();
    }

    protected b<UserIdentifier, o> a() {
        return new h(this);
    }

    protected void b() {
        a.a().a(this);
    }
}
