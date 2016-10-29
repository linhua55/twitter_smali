package com.twitter.android.smartfollow.finishingtimeline;

import android.os.Handler;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class e implements c<a> {
    static final /* synthetic */ boolean a;
    private final cwk<a> b;
    private final cxj<Handler> c;
    private final cxj<FinishingTimelineState> d;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public e(cwk<a> cwk_com_twitter_android_smartfollow_finishingtimeline_a, cxj<Handler> cxj_android_os_Handler, cxj<FinishingTimelineState> cxj_com_twitter_android_smartfollow_finishingtimeline_FinishingTimelineState) {
        if (a || cwk_com_twitter_android_smartfollow_finishingtimeline_a != null) {
            this.b = cwk_com_twitter_android_smartfollow_finishingtimeline_a;
            if (a || cxj_android_os_Handler != null) {
                this.c = cxj_android_os_Handler;
                if (a || cxj_com_twitter_android_smartfollow_finishingtimeline_FinishingTimelineState != null) {
                    this.d = cxj_com_twitter_android_smartfollow_finishingtimeline_FinishingTimelineState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) MembersInjectors.a(this.b, new a((Handler) this.c.b(), (FinishingTimelineState) this.d.b()));
    }

    public static c<a> a(cwk<a> cwk_com_twitter_android_smartfollow_finishingtimeline_a, cxj<Handler> cxj_android_os_Handler, cxj<FinishingTimelineState> cxj_com_twitter_android_smartfollow_finishingtimeline_FinishingTimelineState) {
        return new e(cwk_com_twitter_android_smartfollow_finishingtimeline_a, cxj_android_os_Handler, cxj_com_twitter_android_smartfollow_finishingtimeline_FinishingTimelineState);
    }
}
