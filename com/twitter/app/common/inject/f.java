package com.twitter.app.common.inject;

import android.app.Activity;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class f implements c<Activity> {
    static final /* synthetic */ boolean a;
    private final e b;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public f(e eVar) {
        if (a || eVar != null) {
            this.b = eVar;
            return;
        }
        throw new AssertionError();
    }

    public Activity a() {
        return (Activity) d.a(this.b.f(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Activity> a(e eVar) {
        return new f(eVar);
    }
}
