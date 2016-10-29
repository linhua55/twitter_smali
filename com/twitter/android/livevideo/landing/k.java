package com.twitter.android.livevideo.landing;

import abi;
import abn;
import com.twitter.android.timeline.bj;
import com.twitter.library.scribe.TwitterScribeItem;
import cwk;
import cxj;

/* compiled from: Twttr */
public final class k implements cwk<LiveVideoTimelineFragment> {
    static final /* synthetic */ boolean a;
    private final cxj<abi> b;
    private final cxj<TwitterScribeItem> c;
    private final cxj<bj> d;
    private final cxj<abn> e;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    public k(cxj<abi> cxj_abi, cxj<TwitterScribeItem> cxj_com_twitter_library_scribe_TwitterScribeItem, cxj<bj> cxj_com_twitter_android_timeline_bj, cxj<abn> cxj_abn) {
        if (a || cxj_abi != null) {
            this.b = cxj_abi;
            if (a || cxj_com_twitter_library_scribe_TwitterScribeItem != null) {
                this.c = cxj_com_twitter_library_scribe_TwitterScribeItem;
                if (a || cxj_com_twitter_android_timeline_bj != null) {
                    this.d = cxj_com_twitter_android_timeline_bj;
                    if (a || cxj_abn != null) {
                        this.e = cxj_abn;
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static cwk<LiveVideoTimelineFragment> a(cxj<abi> cxj_abi, cxj<TwitterScribeItem> cxj_com_twitter_library_scribe_TwitterScribeItem, cxj<bj> cxj_com_twitter_android_timeline_bj, cxj<abn> cxj_abn) {
        return new k(cxj_abi, cxj_com_twitter_library_scribe_TwitterScribeItem, cxj_com_twitter_android_timeline_bj, cxj_abn);
    }

    public void a(LiveVideoTimelineFragment liveVideoTimelineFragment) {
        if (liveVideoTimelineFragment == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        liveVideoTimelineFragment.n = (abi) this.b.b();
        liveVideoTimelineFragment.o = (TwitterScribeItem) this.c.b();
        liveVideoTimelineFragment.p = (bj) this.d.b();
        liveVideoTimelineFragment.q = (abn) this.e.b();
    }
}
