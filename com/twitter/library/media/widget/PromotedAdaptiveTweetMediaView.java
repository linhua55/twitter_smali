package com.twitter.library.media.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.LruCache;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import bbu;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.revenue.QualifiedDwellTracker;
import com.twitter.model.core.Tweet;
import defpackage.cbp;

/* compiled from: Twttr */
public class PromotedAdaptiveTweetMediaView extends AdaptiveTweetMediaView implements OnScrollChangedListener {
    private static final LruCache<String, Boolean> f;
    private final Tweet g;
    private final Rect h;
    private final int[] i;
    private boolean j;
    private final boolean k;
    private final long l;
    private final boolean m;
    private float n;
    private Runnable o;
    private final QualifiedDwellTracker p;

    static {
        f = new LruCache(7);
    }

    public PromotedAdaptiveTweetMediaView(Context context, Tweet tweet) {
        super(context);
        this.h = new Rect();
        this.i = new int[2];
        this.n = 1.0f;
        this.p = QualifiedDwellTracker.a();
        this.g = tweet;
        boolean z = d.a("ad_formats_tweet_view_dwell_enabled") && d.a("ad_formats_media_tweet_dwell_enabled");
        this.k = z;
        this.l = (long) (d.a("ad_formats_tweet_view_dwell_threshold", 0.01d) * 1000.0d);
        this.n = d.a("ad_formats_tweet_view_visibility_threshold", 1.0f);
        this.m = d.a("ad_formats_qualified_tweet_dwell_enabled");
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this);
        k();
        c();
    }

    public void onScrollChanged() {
        if (getGlobalVisibleRect(this.h)) {
            float height = ((float) this.h.height()) / ((float) getHeight());
            boolean z = height >= getVisibilityThreshold();
            if (!this.j && z) {
                getLocationOnScreen(this.i);
                int i = this.i[1];
                if (i == this.h.top || i + getHeight() == this.h.bottom) {
                    j();
                    b();
                    this.j = true;
                }
            } else if (this.j && !z) {
                k();
                c();
                this.j = false;
            }
            if (this.m && this.p.a(height)) {
                l();
            }
        }
    }

    private void j() {
        if (this.k && this.o == null) {
            this.o = new t(this);
            postDelayed(this.o, this.l);
        }
    }

    private void k() {
        if (this.o != null) {
            removeCallbacks(this.o);
            this.o = null;
        }
    }

    private void a(PromotedEvent promotedEvent) {
        if (this.g.f == null) {
            return;
        }
        if (this.m) {
            this.p.a(this.g.f);
        } else {
            bbu.a(cbp.a(promotedEvent, this.g.f).a());
        }
    }

    private void l() {
        if (this.g.f != null) {
            this.p.b(this.g.f);
        }
    }

    protected float getVisibilityThreshold() {
        return this.n;
    }

    protected void b() {
    }

    protected void c() {
    }

    protected boolean a(String str) {
        if (str == null || f.get(str) == null) {
            return false;
        }
        return true;
    }

    protected void b(String str) {
        if (str != null) {
            f.put(str, Boolean.TRUE);
        }
    }

    Runnable getRunnable() {
        return this.o;
    }
}
