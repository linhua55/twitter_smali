package com.twitter.media.ui.image;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import com.twitter.media.request.a;
import com.twitter.media.ui.AnimatingProgressBar;
import com.twitter.media.ui.i;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.config.b;
import com.twitter.media.ui.image.config.c;
import com.twitter.media.ui.image.config.e;
import com.twitter.media.ui.image.config.f;
import com.twitter.media.ui.image.config.g;
import com.twitter.media.ui.j;
import com.twitter.media.ui.k;
import com.twitter.util.d;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.z;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MediaImageView extends BaseMediaImageView<MediaImageView> implements b {
    private ImageView a;
    protected int h;
    private ImageView i;
    private boolean j;
    private float k;
    private final AnimatingProgressBar l;
    private final c m;
    private Matrix n;

    public MediaImageView(Context context) {
        this(context, null, false);
    }

    public MediaImageView(Context context, ImageView imageView, boolean z) {
        this(context, null, i.mediaImageViewStyle, imageView, z);
        p();
    }

    public MediaImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.mediaImageViewStyle);
    }

    public MediaImageView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null, false);
    }

    protected MediaImageView(Context context, AttributeSet attributeSet, int i, ImageView imageView, boolean z) {
        this(context, attributeSet, i, imageView, z, b);
    }

    protected MediaImageView(Context context, AttributeSet attributeSet, int i, ImageView imageView, boolean z, ScaleType scaleType) {
        super(context, attributeSet, i, null, scaleType);
        if (imageView != null) {
            addView(imageView);
        }
        this.a = imageView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.MediaImageView, i, 0);
        this.j = obtainStyledAttributes.getBoolean(k.MediaImageView_fadeIn, false);
        boolean z2 = obtainStyledAttributes.getBoolean(k.MediaImageView_singleImageView, z);
        this.k = obtainStyledAttributes.getFloat(k.MediaImageView_scaleFactor, 1.0f);
        int resourceId = obtainStyledAttributes.getResourceId(k.MediaImageView_loadingProgressBar, 0);
        if (resourceId != 0) {
            View inflate = LayoutInflater.from(getContext()).inflate(resourceId, this, false);
            addView(inflate);
            this.l = (AnimatingProgressBar) inflate.findViewById(j.media_progress_bar);
            this.l.setAnimationMSTime(750);
            this.l.setAllowsProgressDrops(false);
            this.l.a(15);
        } else {
            this.l = null;
        }
        obtainStyledAttributes.recycle();
        if (z2) {
            this.i = this.a;
        } else {
            this.i = new ImageView(context);
            addView(this.i);
        }
        this.m = b();
    }

    private c b() {
        return new j(this);
    }

    protected a b(com.twitter.media.request.b bVar) {
        a b = super.b(bVar);
        if (!(b == null || this.l == null)) {
            b.a((z) new l(this));
        }
        return b;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        p();
    }

    protected void p() {
        if (this.a == null) {
            ImageView imageView = (ImageView) findViewById(j.image);
            if (imageView == null) {
                this.a = q();
                addView(this.a);
            } else {
                this.a = imageView;
            }
            if (this.i == null) {
                this.i = this.a;
            }
        }
        k();
    }

    public <T extends ImageView> T getImageView() {
        return (ImageView) ObjectUtils.a(this.a);
    }

    public <T extends ImageView> T getStatusImageView() {
        return (ImageView) ObjectUtils.a(this.i);
    }

    public void setBorderSize(int i) {
        this.h = i;
        a();
    }

    public void setRoundingStrategy(g gVar) {
        ImageView imageView = getImageView();
        if (imageView instanceof e) {
            ((e) imageView).setRoundingStrategy(gVar);
        }
        a();
    }

    protected void a() {
        ImageView imageView = getImageView();
        if (imageView instanceof e) {
            ((e) imageView).setRoundingConfig(getRoundingConfig());
        }
    }

    protected f getRoundingConfig() {
        LayoutParams layoutParams = getLayoutParams();
        return layoutParams != null ? f.a((float) layoutParams.width, (float) layoutParams.height, (float) this.h) : f.a;
    }

    public void setFadeIn(boolean z) {
        this.j = z;
    }

    public void setScaleFactor(float f) {
        this.k = f;
    }

    public Size getImageSize() {
        return Size.a(this.a, false).a(this.k);
    }

    protected void a(Drawable drawable) {
        Drawable drawable2 = this.i.getDrawable();
        if (drawable2 instanceof Animatable) {
            ((Animatable) drawable2).stop();
        }
        this.a.setVisibility(4);
        this.a.setImageDrawable(null);
        this.i.setVisibility(0);
        this.i.setScaleType(ImageView.ScaleType.CENTER);
        this.i.setImageDrawable(drawable);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }

    protected void a(Drawable drawable, boolean z) {
        Drawable drawable2 = this.i.getDrawable();
        if (drawable2 instanceof Animatable) {
            ((Animatable) drawable2).stop();
        }
        c();
        if (!this.j || z) {
            this.i.setVisibility(4);
            this.a.setVisibility(0);
            this.a.setImageDrawable(drawable);
        } else if (this.a.getVisibility() == 0) {
            d.a(this.a, drawable);
        } else {
            this.a.setImageDrawable(drawable);
            d.a(this.i, this.a);
        }
    }

    protected void l() {
        if (this.l != null) {
            this.l.setProgress(0);
            ViewGroup viewGroup = (ViewGroup) this.l.getParent();
            viewGroup.bringToFront();
            viewGroup.setVisibility(0);
        }
    }

    public void m() {
        if (this.l != null) {
            ((ViewGroup) this.l.getParent()).setVisibility(8);
        }
    }

    public ViewPropertyAnimator getImageViewAnimator() {
        return getImageView().animate();
    }

    public void invalidateDrawable(Drawable drawable) {
        if (this.i == null || drawable != this.i.getDrawable()) {
            super.invalidateDrawable(drawable);
        } else {
            this.i.invalidate();
        }
    }

    public void setTransformationMatrix(Matrix matrix) {
        this.n = matrix;
        c();
        this.a.setImageMatrix(this.n);
    }

    private void c() {
        ImageView.ScaleType scaleType;
        if (this.n == null) {
            switch (k.a[this.d.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    scaleType = ImageView.ScaleType.FIT_CENTER;
                    break;
                default:
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                    break;
            }
        }
        scaleType = ImageView.ScaleType.MATRIX;
        this.a.setScaleType(scaleType);
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || this.i.getDrawable() == drawable;
    }

    protected ImageView q() {
        return new FixedSizeImageView(getContext());
    }

    public c getImageConfigurator() {
        return this.m;
    }
}
