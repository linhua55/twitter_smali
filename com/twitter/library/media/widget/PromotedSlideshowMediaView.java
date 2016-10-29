package com.twitter.library.media.widget;

import android.content.Context;
import android.view.View.MeasureSpec;
import android.view.ViewPropertyAnimator;
import com.twitter.config.d;
import com.twitter.model.core.Tweet;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class PromotedSlideshowMediaView extends PromotedAdaptiveTweetMediaView {
    private final float f;
    private final int g;
    private final int h;
    private final int i;
    private final Runnable j;
    private int k;
    private int l;

    public PromotedSlideshowMediaView(Context context, Tweet tweet) {
        super(context, tweet);
        this.f = d.a("ad_formats_media_visibility_threshold", 1.0f);
        this.g = (int) (d.a("ad_formats_media_tweet_slideshow_animation_start_at", 1.0f) * 1000.0f);
        this.h = (int) (d.a("ad_formats_media_tweet_slideshow_animation_interval", 2.0f) * 1000.0f);
        this.i = (int) (d.a("ad_formats_media_tweet_slideshow_animation_transition_duration", 1.0f) * 1000.0f);
        this.j = new u(this);
    }

    protected Size a(int i, int i2) {
        int i3 = 0;
        this.k = getImageCount();
        int i4;
        if (this.b) {
            this.a.a(1, 1, MeasureSpec.getSize(i), a((ab) this.c.get(0)));
            for (i4 = 0; i4 < this.k; i4++) {
                this.a.a(i4, 0, 0, 1, 1);
            }
            return Size.a(this.a.a(), this.a.b());
        }
        int size = MeasureSpec.getSize(i);
        i4 = MeasureSpec.getSize(i2);
        while (i3 < this.k) {
            a(i3, size, i4);
            i3++;
        }
        return Size.a(size, i4);
    }

    protected void a() {
        int measuredWidth = this.d[0].getMeasuredWidth();
        int measuredHeight = this.d[0].getMeasuredHeight();
        int i = 0;
        while (i < this.k) {
            a(this.d[i], i, 0, 0, measuredWidth, measuredHeight);
            this.d[i].setVisibility(i == 0 ? 0 : 4);
            i++;
        }
    }

    protected float getVisibilityThreshold() {
        return this.f;
    }

    protected void b() {
        b(this.g);
    }

    protected void c() {
        for (int i = 0; i < this.k; i++) {
            this.d[i].clearAnimation();
        }
        removeCallbacks(this.j);
    }

    private void b(int i) {
        postDelayed(this.j, (long) i);
    }

    private void j() {
        if (this.k >= 2) {
            int i = (this.l + 1) % this.k;
            ViewPropertyAnimator b = com.twitter.util.d.b(this.d[i], this.i);
            ViewPropertyAnimator a = com.twitter.util.d.a(this.d[this.l], this.i);
            if (b != null && a != null) {
                this.l = i;
                b.setListener(new v(this));
            }
        }
    }
}
