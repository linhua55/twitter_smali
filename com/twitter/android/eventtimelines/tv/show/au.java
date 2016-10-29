package com.twitter.android.eventtimelines.tv.show;

import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class au implements c<aq> {
    static final /* synthetic */ boolean a;
    private final cxj<am> b;
    private final cxj<y> c;

    static {
        a = !au.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public au(cxj<am> cxj_com_twitter_android_eventtimelines_tv_show_am, cxj<y> cxj_com_twitter_android_eventtimelines_tv_show_y) {
        if (a || cxj_com_twitter_android_eventtimelines_tv_show_am != null) {
            this.b = cxj_com_twitter_android_eventtimelines_tv_show_am;
            if (a || cxj_com_twitter_android_eventtimelines_tv_show_y != null) {
                this.c = cxj_com_twitter_android_eventtimelines_tv_show_y;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public aq a() {
        return new aq((am) this.b.b(), (y) this.c.b());
    }

    public static c<aq> a(cxj<am> cxj_com_twitter_android_eventtimelines_tv_show_am, cxj<y> cxj_com_twitter_android_eventtimelines_tv_show_y) {
        return new au(cxj_com_twitter_android_eventtimelines_tv_show_am, cxj_com_twitter_android_eventtimelines_tv_show_y);
    }
}
