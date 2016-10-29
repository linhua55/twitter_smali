package com.twitter.app.common.app.internal;

import android.content.Context;
import com.twitter.platform.PlatformContext;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class k implements c<PlatformContext> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public k(cxj<Context> cxj_android_content_Context) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            return;
        }
        throw new AssertionError();
    }

    public PlatformContext a() {
        return (PlatformContext) d.a(a.c((Context) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<PlatformContext> a(cxj<Context> cxj_android_content_Context) {
        return new k(cxj_android_content_Context);
    }
}
