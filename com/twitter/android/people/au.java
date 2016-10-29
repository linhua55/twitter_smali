package com.twitter.android.people;

import android.content.Context;
import com.twitter.android.FollowFlowController;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class au implements c<FollowFlowController> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;

    static {
        a = !au.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public au(cxj<Context> cxj_android_content_Context) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            return;
        }
        throw new AssertionError();
    }

    public FollowFlowController a() {
        return (FollowFlowController) d.a(ar.a((Context) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<FollowFlowController> a(cxj<Context> cxj_android_content_Context) {
        return new au(cxj_android_content_Context);
    }
}
