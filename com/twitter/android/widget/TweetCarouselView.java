package com.twitter.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import ces;
import com.twitter.android.sn;
import com.twitter.android.vr;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.provider.aq;
import com.twitter.library.revenue.a;
import com.twitter.library.revenue.b;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.util.q;
import com.twitter.library.view.ab;
import com.twitter.library.view.d;
import com.twitter.library.view.o;
import com.twitter.library.widget.InlineActionBar;
import com.twitter.library.widget.TextContentView;
import com.twitter.library.widget.au;
import com.twitter.library.widget.n;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.bg;
import com.twitter.ui.widget.BadgeView;
import com.twitter.ui.widget.TweetHeaderView;
import com.twitter.ui.widget.ax;
import defpackage.bcu;
import defpackage.cdy;

/* compiled from: Twttr */
public class TweetCarouselView extends LinearLayout implements ces, b, au, n {
    private static final TextPaint a;
    private Context b;
    private ViewGroup c;
    private UserImageView d;
    private TweetHeaderView e;
    private TextContentView f;
    private InlineActionBar g;
    private BadgeView h;
    private Tweet i;
    private i j;
    private ViewGroup k;
    private vr l;
    private sn m;
    private FriendshipCache n;
    private a o;
    private final SparseArray<BadgeView> p;
    private float q;
    private float r;
    private int s;
    private int t;

    static {
        a = new TextPaint(1);
    }

    public TweetCarouselView(Context context) {
        this(context, null);
    }

    public TweetCarouselView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.p = new SparseArray();
        a();
    }

    public TweetCarouselView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new SparseArray();
        a();
    }

    private void a() {
        this.b = getContext();
        Resources resources = getResources();
        this.s = resources.getColor(2131886264);
        this.t = resources.getColor(bcu.link_selected);
        this.q = ao.a;
        this.r = ao.a(this.q);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.c = (ViewGroup) findViewById(2131952722);
        this.d = (UserImageView) findViewById(2131952353);
        this.e = (TweetHeaderView) findViewById(2131951665);
        this.e.b(true);
        this.e.setShowTimestamp(false);
        this.f = (TextContentView) findViewById(2131951640);
        this.f.setContentSize(this.q);
        this.g = (InlineActionBar) findViewById(2131952062);
        this.h = (BadgeView) findViewById(2131952639);
        this.o = new a(this, 2130839025, 2130839026, 2130839023);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    public void setFriendshipCache(FriendshipCache friendshipCache) {
        this.n = friendshipCache;
    }

    public void setTweetViewClickHandler(vr vrVar) {
        this.l = vrVar;
    }

    public void setTweetActionsHandler(sn snVar) {
        this.m = snVar;
    }

    public void a(Tweet tweet, j jVar) {
        if (tweet != null) {
            this.i = tweet;
            jVar.a(1, Integer.valueOf(bcu.placeholder_bg));
            jVar.a(4, new fg(this));
            this.d.a(tweet.r);
            this.d.setOnClickListener(new fh(this, tweet));
            this.e.a(this.q, this.r, this.r);
            this.e.a(tweet.d(), ab.a(tweet), null, 0, 0);
            this.f.setTruncateText(a(tweet));
            com.twitter.model.core.i a = aq.b(tweet).b(true).a(b(tweet)).e(cdy.a(tweet)).a();
            this.f.b(a(a.a, a.b), tweet.n());
            c();
            this.j = jVar.a();
            b();
            this.o.a(tweet, getResources());
            this.g.setFriendshipCache(this.n);
            this.g.setOnInlineActionClickListener(this);
            this.g.setTweet(tweet);
            invalidate();
        }
    }

    public final Tweet getTweet() {
        return this.i;
    }

    private CharSequence a(Tweet tweet) {
        Resources resources = this.b.getResources();
        fi fiVar = new fi(this, this.t, this.s, false, tweet);
        String string = resources.getString(2131362630);
        Object string2 = resources.getString(2131362380);
        CharSequence spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(string).append(string2);
        spannableStringBuilder.setSpan(fiVar, string.length(), string.length() + string2.length(), 33);
        return spannableStringBuilder;
    }

    private CharSequence a(String str, bg bgVar) {
        SpannableStringBuilder a;
        Tweet tweet = this.i;
        if (bgVar.a()) {
            a = o.a((CharSequence) str).a(bgVar).a(new fj(this, tweet)).b(this.t).a(this.s).a(false).b(false).a();
        } else {
            a = new SpannableStringBuilder(str);
        }
        if (d.a() && tweet.m()) {
            a = d.a(this.b, bgVar.f, a, true);
        }
        if (a == null) {
            return a;
        }
        Paint paint = a;
        paint.setTextSize(this.q);
        paint.setTypeface(ax.a(this.b).a);
        return q.a(this.b).a((View) this, a, paint.getFontMetrics());
    }

    public void a(TweetActionType tweetActionType) {
        if (this.m != null) {
            this.m.a(tweetActionType, this.i, this.n, null, this);
        }
    }

    public void c(boolean z) {
        this.g.a();
    }

    public void d(boolean z) {
    }

    public void a(boolean z) {
        if (z) {
            this.i.a = true;
            Tweet tweet = this.i;
            tweet.o++;
        } else {
            this.i.a = false;
            this.i.o = Math.max(this.i.o - 1, 0);
        }
        this.g.a();
    }

    public void b(boolean z) {
        boolean z2;
        int i = 1;
        Tweet tweet = this.i;
        if (z) {
            z2 = false;
        } else {
            z2 = true;
        }
        tweet.d = z2;
        Tweet tweet2 = this.i;
        int i2 = this.i.l;
        if (z) {
            i = -1;
        }
        tweet2.l = Math.max(i + i2, 0);
        this.g.a();
    }

    private void b() {
        if (this.j != null) {
            this.j.ba_();
            View d = this.j.d();
            if (b(this.i)) {
                LayoutInflater.from(getContext()).inflate(2130968666, this.c);
                this.k = (ViewGroup) this.c.findViewById(2131952063);
                this.k.addView(d);
            } else if (d != null) {
                LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(3, 2131951640);
                d.setLayoutParams(layoutParams);
                this.c.addView(d);
            }
            this.j.c();
        }
    }

    private void c() {
        if (this.j != null) {
            i iVar = this.j;
            this.j = null;
            if (this.k != null) {
                this.c.removeView(this.k);
                this.k.removeAllViews();
                this.k = null;
            } else {
                View d = iVar.d();
                if (d != null) {
                    this.c.removeView(d);
                }
            }
            iVar.bb_();
        }
    }

    private boolean b(Tweet tweet) {
        return tweet.l() && tweet.aa() == null;
    }

    public void e(boolean z) {
        this.h.setVisibility(z ? 0 : 4);
    }

    public void a(int i, String str) {
        this.h.setContentSize(this.r);
        this.h.a(i, str);
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.g.a(canvas, (ViewGroup) this);
    }
}
