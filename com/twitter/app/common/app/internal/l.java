package com.twitter.app.common.app.internal;

import android.content.Context;
import cwf;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class l implements c<cwf> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;

    static {
        a = !l.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public l(cxj<Context> cxj_android_content_Context) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            return;
        }
        throw new AssertionError();
    }

    public cwf a() {
        return (cwf) d.a(a.b((Context) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<cwf> a(cxj<Context> cxj_android_content_Context) {
        return new l(cxj_android_content_Context);
    }
}
