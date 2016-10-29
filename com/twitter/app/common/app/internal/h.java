package com.twitter.app.common.app.internal;

import android.content.ContentResolver;
import android.content.Context;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class h implements c<ContentResolver> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;

    static {
        a = !h.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public h(cxj<Context> cxj_android_content_Context) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            return;
        }
        throw new AssertionError();
    }

    public ContentResolver a() {
        return (ContentResolver) d.a(a.a((Context) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<ContentResolver> a(cxj<Context> cxj_android_content_Context) {
        return new h(cxj_android_content_Context);
    }
}
