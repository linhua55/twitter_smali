package com.twitter.android.timeline;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.twitter.android.RootTweetActivity;
import com.twitter.android.sn;
import com.twitter.android.vr;
import com.twitter.android.widget.TweetCarouselView;
import com.twitter.android.widget.l;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.view.aa;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.s;

/* compiled from: Twttr */
public class bp implements l<bb> {
    private final Context a;
    private final TwitterFragmentActivity b;
    private final aa c;
    private final sn d;
    private final FriendshipCache e;
    @LayoutRes
    private final int f;
    private final s g;

    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (bb) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (bb) obj, i);
    }

    public bp(TwitterFragmentActivity twitterFragmentActivity, aa aaVar, sn snVar, FriendshipCache friendshipCache, @LayoutRes int i, s sVar) {
        this.a = twitterFragmentActivity.getApplicationContext();
        this.b = twitterFragmentActivity;
        this.c = aaVar;
        this.d = snVar;
        this.e = friendshipCache;
        this.f = i;
        this.g = sVar;
    }

    @LayoutRes
    public int a() {
        return this.f;
    }

    public View a(Context context, bb bbVar, int i) {
        this.e.a(bbVar.b);
        TweetCarouselView tweetCarouselView = (TweetCarouselView) LayoutInflater.from(this.b).inflate(a(), null);
        if (this.c instanceof vr) {
            tweetCarouselView.setTweetViewClickHandler((vr) this.c);
        }
        tweetCarouselView.setTweetActionsHandler(this.d);
        tweetCarouselView.setFriendshipCache(this.e);
        a(tweetCarouselView, bbVar);
        tweetCarouselView.setOnClickListener(new bq(this, tweetCarouselView));
        tweetCarouselView.setOnLongClickListener(new br(this, tweetCarouselView));
        ((ImageView) tweetCarouselView.findViewById(2131951646)).setOnClickListener(new bs(this, tweetCarouselView, bbVar));
        return tweetCarouselView;
    }

    public void a(View view, bb bbVar, int i) {
        TweetCarouselView tweetCarouselView = (TweetCarouselView) view;
        if (!bbVar.b.a(tweetCarouselView.getTweet())) {
            a(tweetCarouselView, bbVar);
        }
    }

    public void b(View view, bb bbVar, int i) {
    }

    private void a(TweetCarouselView tweetCarouselView, bb bbVar) {
        tweetCarouselView.a(bbVar.b, new j(true, this.b, bbVar.b, DisplayMode.CAROUSEL, null, null));
    }

    private Intent a(Tweet tweet) {
        return new Intent(this.a, RootTweetActivity.class).putExtra("tw", tweet);
    }
}
