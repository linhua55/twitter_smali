package com.twitter.android.livevideo.landing;

import android.content.res.Resources;
import com.twitter.android.timeline.NewTweetsBannerState;
import com.twitter.android.timeline.bk;
import com.twitter.android.timeline.c;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.config.d;
import com.twitter.model.timeline.NotificationType;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class h extends c {
    public h(NewItemBannerView newItemBannerView, bk bkVar, NewTweetsBannerState newTweetsBannerState) {
        super(newItemBannerView, bkVar, newTweetsBannerState);
    }

    protected com.twitter.model.timeline.bk a(Resources resources) {
        return new com.twitter.model.timeline.bk(NotificationType.b, resources.getString(2131363135), b(), 3000);
    }

    public long b() {
        long a;
        try {
            a = d.a("live_video_timeline_new_tweets_pill_interval_seconds", -1);
        } catch (ClassCastException e) {
            a = aj.a(d.b("live_video_timeline_new_tweets_pill_interval_seconds"), -1);
        }
        if (a > 0) {
            return a * 1000;
        }
        return 240000;
    }
}
