package com.twitter.android.revenue;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import cbo;
import com.twitter.android.widget.l;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.av.playback.be;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.view.aa;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import defpackage.cbp;

/* compiled from: Twttr */
class an implements l<Tweet> {
    private final s a;
    private final Context b;
    private final Tweet c;
    private final DisplayMode d;
    private final aa e;
    private final cbo<cbp> f;
    private final int g;
    private final TwitterScribeAssociation h;

    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (Tweet) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (Tweet) obj, i);
    }

    an(Context context, Tweet tweet, DisplayMode displayMode, aa aaVar, cbo<cbp> cbo_cbp) {
        this.a = new u().c(true).g(true).e(true).i(true).a();
        this.g = u.a();
        this.h = new TwitterScribeAssociation();
        this.b = context;
        this.c = tweet;
        this.d = displayMode;
        this.e = aaVar;
        this.f = cbo_cbp;
    }

    public View a(Context context, Tweet tweet, int i) {
        View findViewById;
        TweetView tweetView = (TweetView) LayoutInflater.from(context).inflate(2130969480, null);
        tweetView.setOnTweetViewClickListener(this.e);
        tweetView.setHideInlineActions(true);
        tweetView.setShowSocialBadge(false);
        tweetView.setHideProfileImage(true);
        tweetView.setAlwaysExpandMedia(true);
        tweetView.setTruncateText(a(context));
        if (tweet.h() || be.b(tweet)) {
            findViewById = tweetView.findViewById(2131951719);
            if (findViewById != null) {
                findViewById.setMinimumHeight(this.g);
            }
            tweetView.setMaxLines(3);
            tweetView.setMinLines(3);
            findViewById = tweetView;
        } else {
            LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            tweetView.setPadding(tweetView.getPaddingLeft(), 0, tweetView.getPaddingRight(), 0);
            tweetView.setLayoutParams(layoutParams);
            findViewById = new LinearLayout(context);
            findViewById.addView(tweetView);
            tweetView.setMaxLines(6);
        }
        tweetView.a(tweet, this.a, false, a((Activity) context, tweet));
        tweetView.setTag(Integer.valueOf(i));
        findViewById.setOnClickListener(new ao(this, tweetView));
        findViewById.setBackgroundResource(2130840223);
        return findViewById;
    }

    public void a(View view, Tweet tweet, int i) {
    }

    public void b(View view, Tweet tweet, int i) {
    }

    CharSequence a(Context context) {
        Resources resources = context.getResources();
        Object string = resources.getString(2131362630);
        Object string2 = resources.getString(2131362380);
        int color = resources.getColor(2131886264);
        CharSequence spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(string).append(string2);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(color), 0, string.length() + string2.length(), 33);
        return spannableStringBuilder;
    }

    j a(Activity activity, Tweet tweet) {
        return new j(be.b(tweet), activity, tweet, DisplayMode.CAROUSEL, this.h, null);
    }

    private void a() {
        if (this.c.f != null) {
            this.f.a(cbp.a(PromotedEvent.g, this.c.f).a());
        }
    }
}
