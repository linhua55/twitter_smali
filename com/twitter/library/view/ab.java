package com.twitter.library.view;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import bcu;
import bdc;
import buu;
import com.twitter.library.widget.TweetView;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TweetHeaderView;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.cgl;
import defpackage.cni;
import java.net.URI;
import java.net.URISyntaxException;

/* compiled from: Twttr */
public class ab {
    public static String a(Tweet tweet) {
        return tweet.c() ? null : tweet.v;
    }

    public static String b(Tweet tweet) {
        return tweet.c() ? tweet.B : tweet.v;
    }

    public static String c(Tweet tweet) {
        cni cni = tweet.f;
        return cni != null ? cni.g : tweet.A;
    }

    public static String a(Tweet tweet, Resources resources, boolean z) {
        String c = c(tweet);
        boolean b = aj.b(c, tweet.d());
        if (c == null || (!tweet.s() && ((!tweet.c || tweet.d) && (tweet.c() || tweet.am() || (!z && b))))) {
            return resources.getString(bdc.promoted_without_advertiser);
        }
        return resources.getString(bdc.promoted_by, new Object[]{c});
    }

    @DrawableRes
    public static int a(TweetView tweetView, @DrawableRes int i) {
        if (tweetView.a()) {
            return i;
        }
        return 0;
    }

    public static void a(Tweet tweet, TweetView tweetView, TweetHeaderView tweetHeaderView) {
        if (tweet.B() && buu.b().c()) {
            a(bcu.seamful_green, tweetHeaderView);
            return;
        }
        tweetHeaderView.d();
        tweetHeaderView.c();
        tweetHeaderView.setUseTimestampColorForUsername(tweetView.b());
    }

    private static void a(@ColorRes int i, TweetHeaderView tweetHeaderView) {
        int color = tweetHeaderView.getResources().getColor(i);
        tweetHeaderView.setTimestampColor(ColorStateList.valueOf(color));
        tweetHeaderView.setTimestampBadgeColor(color);
        tweetHeaderView.setUseTimestampColorForUsername(false);
    }

    public static void a(View view, Tweet tweet, String str, String str2, String str3, String str4) {
        cgl aa = tweet.aa();
        Resources resources = view.getResources();
        if (aa != null) {
            String str5;
            ImageSpec r = aa.r();
            if (r == null || !aj.b(r.a())) {
                str5 = BuildConfig.VERSION_NAME;
            } else {
                str5 = resources.getString(bdc.timeline_tweet_media_format, new Object[]{r.a()});
            }
            String c = aa.c();
            try {
                c = new URI(c).getHost();
            } catch (URISyntaxException e) {
            }
            view.setContentDescription(resources.getString(bdc.timeline_tweet_with_card_format, new Object[]{e.b(str), e.b(str2), c, aa.a("title"), e.b(str5), e.b(str3), e.b(str4)}));
        }
    }
}
