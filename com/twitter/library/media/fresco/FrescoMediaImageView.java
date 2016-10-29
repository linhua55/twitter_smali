package com.twitter.library.media.fresco;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout.LayoutParams;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.a;
import com.facebook.imagepipeline.request.ImageRequest;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.config.b;
import com.twitter.media.ui.image.config.c;
import com.twitter.media.ui.image.config.f;
import com.twitter.util.math.Size;
import cu;
import cw;

/* compiled from: Twttr */
public class FrescoMediaImageView extends BaseMediaImageView<FrescoMediaImageView> implements b {
    private final TwitterDraweeView a;
    private final j h;
    private final c i;
    private TwitterDraweeView j;
    private float k;

    public FrescoMediaImageView(Context context, @DrawableRes int i, @DrawableRes int i2) {
        this(context, null, new j(), i, i2);
    }

    public FrescoMediaImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, new j());
    }

    private FrescoMediaImageView(Context context, AttributeSet attributeSet, j jVar) {
        this(context, attributeSet, jVar, 0, 0);
    }

    private FrescoMediaImageView(Context context, AttributeSet attributeSet, j jVar, @DrawableRes int i, @DrawableRes int i2) {
        super(context, attributeSet, 0, jVar);
        this.a = a(context, i, i2);
        addView(this.a);
        a(this.d);
        jVar.a(this.a);
        this.h = jVar;
        this.i = a();
    }

    private c a() {
        return new h(this);
    }

    private static TwitterDraweeView a(Context context, @DrawableRes int i, @DrawableRes int i2) {
        TwitterDraweeView twitterDraweeView = new TwitterDraweeView(context);
        twitterDraweeView.setLayoutParams(new LayoutParams(-1, -1));
        Resources resources = context.getResources();
        com.facebook.drawee.generic.c a = com.facebook.drawee.generic.c.a(resources);
        if (i > 0) {
            a.d(resources.getDrawable(i));
        }
        if (i2 > 0) {
            a.a(resources.getDrawable(i2));
        }
        twitterDraweeView.setHierarchy(a.s());
        return twitterDraweeView;
    }

    private void a(ScaleType scaleType) {
        ScalingUtils.ScaleType scaleType2;
        switch (i.a[scaleType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                scaleType2 = ScalingUtils.ScaleType.CENTER;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                scaleType2 = ScalingUtils.ScaleType.CENTER_CROP;
                break;
            default:
                scaleType2 = ScalingUtils.ScaleType.FIT_CENTER;
                break;
        }
        ((a) this.a.getHierarchy()).a(scaleType2);
    }

    public void setProgressiveJpegEnabled(boolean z) {
        this.h.a(z);
    }

    public Size getImageSize() {
        return Size.a(this.a, false);
    }

    protected void a(Drawable drawable) {
    }

    public void setScaleType(ScaleType scaleType) {
        a(scaleType);
        super.setScaleType(scaleType);
    }

    protected f getRoundingConfig() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        return layoutParams != null ? f.a((float) layoutParams.width, (float) layoutParams.height, this.k) : f.a;
    }

    public ViewPropertyAnimator getImageViewAnimator() {
        return this.a.animate();
    }

    public c getImageConfigurator() {
        return this.i;
    }

    public ImageRequest getFrescoImageRequest() {
        return this.h.d();
    }

    public void a(@DrawableRes int i, int i2) {
        Drawable drawable = i != 0 ? getResources().getDrawable(i) : null;
        if (drawable != null) {
            TwitterDraweeView twitterDraweeView;
            TwitterDraweeView twitterDraweeView2;
            if (this.j != null) {
                twitterDraweeView = this.j;
            } else {
                twitterDraweeView = null;
            }
            if (twitterDraweeView == null) {
                twitterDraweeView = new TwitterDraweeView(getContext());
                ViewGroup.LayoutParams layoutParams = new LayoutParams(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                layoutParams.gravity = 83;
                layoutParams.setMargins(i2, 0, 0, i2);
                twitterDraweeView.setLayoutParams(layoutParams);
                twitterDraweeView.setHierarchy(com.facebook.drawee.generic.c.a(getResources()).a(drawable).s());
                addView(twitterDraweeView);
                twitterDraweeView2 = twitterDraweeView;
            } else {
                twitterDraweeView2 = twitterDraweeView;
            }
            ((a) twitterDraweeView2.getHierarchy()).a(ScalingUtils.ScaleType.CENTER);
            this.j = twitterDraweeView2;
            twitterDraweeView2.setController(((cw) cu.a().b(null)).h());
            twitterDraweeView2.setVisibility(0);
        } else if (this.j != null) {
            this.j.setVisibility(4);
            this.j.setController(null);
        }
    }
}
