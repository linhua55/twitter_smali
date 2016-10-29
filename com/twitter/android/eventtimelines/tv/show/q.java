package com.twitter.android.eventtimelines.tv.show;

import com.twitter.android.eventtimelines.page.c;
import com.twitter.android.eventtimelines.page.g;
import cwk;
import cxj;

/* compiled from: Twttr */
public final class q implements cwk<TvShowActivity> {
    static final /* synthetic */ boolean a;
    private final cxj<c> b;
    private final cxj<g> c;
    private final cxj<t> d;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public q(cxj<c> cxj_com_twitter_android_eventtimelines_page_c, cxj<g> cxj_com_twitter_android_eventtimelines_page_g, cxj<t> cxj_com_twitter_android_eventtimelines_tv_show_t) {
        if (a || cxj_com_twitter_android_eventtimelines_page_c != null) {
            this.b = cxj_com_twitter_android_eventtimelines_page_c;
            if (a || cxj_com_twitter_android_eventtimelines_page_g != null) {
                this.c = cxj_com_twitter_android_eventtimelines_page_g;
                if (a || cxj_com_twitter_android_eventtimelines_tv_show_t != null) {
                    this.d = cxj_com_twitter_android_eventtimelines_tv_show_t;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static cwk<TvShowActivity> a(cxj<c> cxj_com_twitter_android_eventtimelines_page_c, cxj<g> cxj_com_twitter_android_eventtimelines_page_g, cxj<t> cxj_com_twitter_android_eventtimelines_tv_show_t) {
        return new q(cxj_com_twitter_android_eventtimelines_page_c, cxj_com_twitter_android_eventtimelines_page_g, cxj_com_twitter_android_eventtimelines_tv_show_t);
    }

    public void a(TvShowActivity tvShowActivity) {
        if (tvShowActivity == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        tvShowActivity.a = this.b;
        tvShowActivity.b = (g) this.c.b();
        tvShowActivity.h = (t) this.d.b();
    }
}
