package com.twitter.app.common.util;

import android.app.Activity;
import android.app.Application;
import com.twitter.app.common.app.a;
import com.twitter.util.h;

/* compiled from: Twttr */
public class c {
    private final e a;

    public static c a() {
        return a.a().d();
    }

    public c(Application application) {
        this.a = new e();
        application.registerActivityLifecycleCallbacks(new d(this));
    }

    public void a(a aVar) {
        h.a();
        this.a.a(aVar);
    }

    public void b(a aVar) {
        h.a();
        this.a.b(aVar);
    }

    public Activity b() {
        return this.a.a();
    }
}
