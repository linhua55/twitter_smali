package com.twitter.app.common.app.internal;

import android.content.Context;
import aoh;
import com.twitter.platform.t;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class q implements c<aoh> {
    static final /* synthetic */ boolean a;
    private final n b;
    private final cxj<Context> c;
    private final cxj<t> d;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public q(n nVar, cxj<Context> cxj_android_content_Context, cxj<t> cxj_com_twitter_platform_t) {
        if (a || nVar != null) {
            this.b = nVar;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
                if (a || cxj_com_twitter_platform_t != null) {
                    this.d = cxj_com_twitter_platform_t;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public aoh a() {
        return (aoh) d.a(this.b.a((Context) this.c.b(), (t) this.d.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<aoh> a(n nVar, cxj<Context> cxj_android_content_Context, cxj<t> cxj_com_twitter_platform_t) {
        return new q(nVar, cxj_android_content_Context, cxj_com_twitter_platform_t);
    }
}
