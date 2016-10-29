package com.twitter.android.revenue;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import cbo;
import cgu;
import com.twitter.android.widget.j;
import com.twitter.library.view.aa;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;
import defpackage.cbp;

/* compiled from: Twttr */
public class al implements v<Tweet>, c {
    private final ViewGroup a;
    private final ViewPager b;
    private final j<Tweet> c;
    private final am d;
    private final Tweet e;
    private final cbo<cbp> f;
    private TweetView g;
    private int h;

    public al(Context context, Tweet tweet, DisplayMode displayMode, aa aaVar, cbo<cbp> cbo_cbp) {
        this.h = -1;
        this.e = tweet;
        this.f = cbo_cbp;
        this.a = a(context);
        this.a.setDescendantFocusability(393216);
        this.c = new j(context, new an(context, tweet, displayMode, aaVar, cbo_cbp));
        ViewPager viewPager = (ViewPager) this.a.findViewById(2131952457);
        viewPager.setAdapter(this.c);
        viewPager.setOffscreenPageLimit(2);
        viewPager.setPageMargin(20);
        this.d = new am(tweet, cbo_cbp);
        viewPager.addOnPageChangeListener(this.d);
        Resources resources = context.getResources();
        int round = Math.round(resources.getDimension(2131689549));
        int a = u.a(displayMode, resources);
        viewPager.setPadding(a, 0, round, 0);
        viewPager.setMinimumHeight(Math.round(u.a(resources, (((((float) Resources.getSystem().getDisplayMetrics().widthPixels) - ((float) a)) - ((float) round)) * this.c.getPageWidth(0)) - 20.0f, y.i().a(), 3)));
        this.b = viewPager;
    }

    ViewGroup a(Context context) {
        return (ViewGroup) LayoutInflater.from(context).inflate(2130969479, new FrameLayout(context), false);
    }

    public void a(cgu<Tweet> cgu_com_twitter_model_core_Tweet) {
        this.c.a((cgu) cgu_com_twitter_model_core_Tweet);
        this.h = -1;
    }

    public void a(int i) {
        this.d.a(i);
        this.b.setCurrentItem(i, false);
    }

    public int a() {
        return this.b.getCurrentItem();
    }

    public View b() {
        return this.a;
    }

    public void c() {
        this.b.clearOnPageChangeListeners();
    }

    public a getAutoPlayableItem() {
        if (this.h != this.b.getCurrentItem()) {
            this.h = this.b.getCurrentItem();
            this.g = (TweetView) this.b.findViewWithTag(Integer.valueOf(this.h));
        }
        return this.g != null ? this.g.getAutoPlayableItem() : a.j;
    }
}
