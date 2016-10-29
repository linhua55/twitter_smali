package com.twitter.library.initialization;

import android.content.Context;
import com.twitter.app.common.app.a;
import com.twitter.app.common.util.n;
import com.twitter.app.common.util.r;
import com.twitter.config.AppConfig;
import defpackage.aof;

/* compiled from: Twttr */
public class LeakTrackerInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        n f = a.a().f();
        r g = a.a().g();
        if (AppConfig.m().a()) {
            f.a().a(new d(this, context));
            g.a().a(new e(this, context));
        }
    }
}
