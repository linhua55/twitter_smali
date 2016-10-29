package com.twitter.library.media.widget;

import android.content.Context;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.twitter.config.d;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.config.b;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class AnimatablePromotedAdaptiveMediaView extends PromotedAdaptiveTweetMediaView {
    private final String f;
    private BaseMediaImageView g;
    private float h;
    private long i;
    private long j;
    private float k;
    private float l;
    private boolean m;

    public AnimatablePromotedAdaptiveMediaView(Context context, Tweet tweet) {
        super(context, tweet);
        j();
        this.f = tweet.f != null ? tweet.f.c : null;
    }

    private void j() {
        this.h = d.a("ad_formats_media_visibility_threshold", 1.0f);
        this.j = getDelay();
        this.i = getDuration();
        int effect = getEffect();
        float zoomPercentage = getZoomPercentage();
        this.k = a(effect, zoomPercentage);
        this.l = b(effect, zoomPercentage);
    }

    protected void a(BaseMediaImageView baseMediaImageView, int i, int i2, int i3, int i4, int i5) {
        super.a(baseMediaImageView, i, i2, i3, i4, i5);
        if (this.g == null && !a(this.f)) {
            this.g = baseMediaImageView;
            if (this.g instanceof b) {
                ((b) this.g).getImageConfigurator().a(this.k).b(this.k);
            }
        }
    }

    protected float getVisibilityThreshold() {
        return this.h;
    }

    protected void b() {
        if (this.g != null && !this.m) {
            ViewPropertyAnimator imageViewAnimator = this.g.getImageViewAnimator();
            if (imageViewAnimator != null) {
                imageViewAnimator.setInterpolator(new AccelerateDecelerateInterpolator()).setStartDelay(this.j).setDuration(this.i).scaleX(this.l).scaleY(this.l).setListener(new c(this)).start();
            }
        }
    }

    protected void c() {
        if (this.g != null && !this.m) {
            ViewPropertyAnimator imageViewAnimator = this.g.getImageViewAnimator();
            if (imageViewAnimator != null) {
                imageViewAnimator.cancel();
            }
        }
    }

    int getEffect() {
        return d.a("ad_formats_media_effect_type", 1);
    }

    float getZoomPercentage() {
        return d.a("ad_formats_media_zoom_percentage", 5.0f) / 100.0f;
    }

    float a(int i, float f) {
        return 1 == i ? 1.0f + f : 1.0f;
    }

    float b(int i, float f) {
        return 1 == i ? 1.0f : 1.0f + f;
    }

    long getDuration() {
        return Math.round(((double) d.a("ad_formats_media_effect_duration", 0.5f)) * 1000.0d);
    }

    long getDelay() {
        return Math.round(((double) d.a("ad_formats_media_effect_delay", 2.5f)) * 1000.0d);
    }
}
