package com.twitter.library.media.widget;

import android.app.Activity;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;
import com.twitter.util.math.Size;
import cpb;

/* compiled from: Twttr */
public class b {
    public AdaptiveTweetMediaView a(Activity activity, Tweet tweet, DisplayMode displayMode) {
        return displayMode == DisplayMode.FORWARD ? b(activity, tweet) : a(activity, tweet);
    }

    private AdaptiveTweetMediaView a(Activity activity, Tweet tweet) {
        if (tweet.q() && tweet.f != null && tweet.h() && cpb.a(tweet, Size.b).size() > 1 && a(tweet)) {
            return new PromotedSlideshowMediaView(activity, tweet);
        }
        return new AdaptiveTweetMediaView(activity, true, true);
    }

    private AdaptiveTweetMediaView b(Activity activity, Tweet tweet) {
        boolean z = true;
        if (tweet.q() && tweet.f != null && tweet.h()) {
            int size = cpb.a(tweet, Size.b).size();
            if (size == 1 && tweet.f.a("1")) {
                return new AnimatablePromotedAdaptiveMediaView(activity, tweet);
            }
            if (size <= 1 || !a(tweet)) {
                return new PromotedAdaptiveTweetMediaView(activity, tweet);
            }
            return new PromotedSlideshowMediaView(activity, tweet);
        }
        if (tweet.ao() || !d.a("fresco_images_pjpeg_3867_timelines_enabled")) {
            z = false;
        }
        return new AdaptiveTweetMediaView(activity, z);
    }

    private static boolean a(Tweet tweet) {
        boolean a = tweet.f.a("2");
        if ("unassigned".equals(c.a("android_revenue_adaptive_media_parent_3515"))) {
            boolean z = false;
        } else {
            int i = 1;
        }
        boolean a2 = c.a("android_revenue_adaptive_media_3484", new String[]{"slideshow"});
        if (a || (r0 != 0 && a2)) {
            return true;
        }
        return false;
    }
}
