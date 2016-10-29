package com.twitter.app.common.app.internal;

import android.content.Context;
import com.twitter.library.client.az;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class x implements c<az> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;

    static {
        a = !x.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public x(cxj<Context> cxj_android_content_Context) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            return;
        }
        throw new AssertionError();
    }

    public az a() {
        return (az) d.a(w.a((Context) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<az> a(cxj<Context> cxj_android_content_Context) {
        return new x(cxj_android_content_Context);
    }
}
