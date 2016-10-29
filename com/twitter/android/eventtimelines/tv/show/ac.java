package com.twitter.android.eventtimelines.tv.show;

import android.content.res.Resources;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ac implements c<t> {
    static final /* synthetic */ boolean a;
    private final cxj<Resources> b;

    static {
        a = !ac.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ac(cxj<Resources> cxj_android_content_res_Resources) {
        if (a || cxj_android_content_res_Resources != null) {
            this.b = cxj_android_content_res_Resources;
            return;
        }
        throw new AssertionError();
    }

    public t a() {
        return (t) d.a(ab.a((Resources) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<t> a(cxj<Resources> cxj_android_content_res_Resources) {
        return new ac(cxj_android_content_res_Resources);
    }
}
