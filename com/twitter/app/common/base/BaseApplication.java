package com.twitter.app.common.base;

import android.app.Application;
import android.content.res.Configuration;
import android.support.annotation.CallSuper;
import defpackage.aog;
import defpackage.aoh;
import defpackage.aok;
import defpackage.cxj;

/* compiled from: Twttr */
public abstract class BaseApplication extends Application {
    aoh a;
    aog b;
    cxj<aok> c;

    protected abstract void b();

    @CallSuper
    public void onCreate() {
        super.onCreate();
        b();
        this.a.a(this.b.a(), null, (aok) this.c.b());
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.a.a(this.b.b(), configuration);
    }
}
